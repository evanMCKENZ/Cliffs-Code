using System;
using System.Diagnostics;
using System.ServiceProcess;
using System.Runtime.InteropServices;
using System.Timers;
using System.Text;
using System.Net;
using System.Net.Sockets;
using System.Data.SqlClient;

namespace MarqueeSignService
{
    //Service pending constants and methods
    public enum ServiceState
    {
        SERVICE_STOPPED = 0x00000001,
        SERVICE_START_PENDING = 0x00000002,
        SERVICE_STOP_PENDING = 0x00000003,
        SERVICE_RUNNING = 0x00000004,
        SERVICE_CONTINUE_PENDING = 0x00000005,
        SERVICE_PAUSE_PENDING = 0x00000006,
        SERVICE_PAUSED = 0x00000007,
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct ServiceStatus
    {
        public int dwServiceType;
        public ServiceState dwCurrentState;
        public int dwControlsAccepted;
        public int dwWin32ExitCode;
        public int dwServiceSpecificExitCode;
        public int dwCheckPoint;
        public int dwWaitHint;
    };

    public partial class MarqueeSignService : ServiceBase
    {
        private int eventId = 1;                //member variable for tracking events

        [DllImport("advapi32.dll", SetLastError = true)]
        private static extern bool SetServiceStatus(IntPtr handle, ref ServiceStatus serviceStatus);

        public MarqueeSignService()
        {
            InitializeComponent();
            eventLog1 = new EventLog();                     //create event log and link all inputs
            if (!EventLog.SourceExists("SignSource"))
            {
                EventLog.CreateEventSource(
                    "SignSource", "EMSignLog");
            }
            eventLog1.Source = "SignSource";
            eventLog1.Log = "EMSignLog";
        }

        protected override void OnStart(string[] args)
        {
            SignCall();                 //initial first call to flash sign

            //Set service state to pending start
            ServiceStatus serviceStatus = new ServiceStatus
            {
                dwCurrentState = ServiceState.SERVICE_START_PENDING,
                dwWaitHint = 100000
            };
            SetServiceStatus(this.ServiceHandle, ref serviceStatus);

            eventLog1.WriteEntry("In OnStart.");
            Timer timer = new Timer
            {
                Interval = 240000                            // 240 seconds (4 minutes)
            };
            timer.Elapsed += new ElapsedEventHandler(this.OnTimer);
            timer.Start();                                              //start timer

            // Update the service state to Running.
            serviceStatus.dwCurrentState = ServiceState.SERVICE_RUNNING;
            SetServiceStatus(this.ServiceHandle, ref serviceStatus);
        }

        public void OnTimer(object sender, ElapsedEventArgs args)
        {
            eventLog1.WriteEntry("Monitoring the System", EventLogEntryType.Information, eventId++);            //write to event log with current position

            SignCall();             //subsequent calls to flash to sign with updated numbers
        }

        protected override void OnStop()
        {
            eventLog1.WriteEntry("In OnStop.");             //write to event log with current position
        }

        protected override void OnContinue()
        {
            eventLog1.WriteEntry("In OnContinue.");             //write to event log with current position
        }

        protected override void OnShutdown()
        {
            eventLog1.WriteEntry("In OnShutdown.");                 //write to event log with current position
        }

        protected override void OnPause()
        {
            eventLog1.WriteEntry("In OnPause.");                        //write to event log with current position
        }

        public void SignCall()
        {
            // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- //

            /* Connecting to SQL Server and Retrieving Data
            *         - Create connection to server and database
            *         - Execute created SQL statement
            *         - Confirm data recovery
            *         - Close connections and functions
            */

            var datasource = @"BHW-CSSQL";      //server
            var database = "XXXXXXXXXXX";     //database
            var username = "XXXXXX";        //username
            var password = "XXXXXX";      //password 

            //connection string using above properties (can be modified for any database)
            string connString = @"Data Source = " + datasource + "; Initial Catalog = "
                        + database + "; Persist Security Info = True; User ID = " + username + "; Password = " + password + ";";

            SqlConnection conn = new SqlConnection(connString);             //SQLConnection

            int numcoils;                //global number of coils

            try
            {
                using (conn)
                {
                    conn.Open();                    //open connection

                    string sqlstring = "DECLARE @date DATETIME, @time time, @HOURTIME INT SET @HOURTIME = DATEPART(hour, GETDATE()) IF @HOURTIME = 23 BEGIN SET @date = CAST(GETDATE() AS Date) END ELSE BEGIN SET @date = DATEADD(day, -1, CAST(GETDATE() AS DATE)) END SET @time = '23:00:00'	SET @date = @date + CAST(@time AS DATETIME) SELECT COUNT(CoilNum) coilsPacked FROM MessageLog WHERE(HallAction = 'H4CoilEntry' OR HallAction = 'H4CoilRepack') AND(insertDateTime BETWEEN @date AND GETDATE())";

                    SqlCommand com = new SqlCommand(sqlstring)
                    {
                        Connection = conn                          //link connection to command
                    };

                    SqlDataReader reader = com.ExecuteReader();             //read from sql database and store results in reader array

                    while (reader.Read())
                    {

            // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- //

            /* Passing Information to Marquee Sign
            *         - Get IP address of sign
            *         - Connect to IP/TCP Client
            *         - Configure message or file to send
            *         - Transmit message and close connections
            */

                        numcoils = reader.GetInt32(0);           //get number from row
                        string one;
                        if (numcoils < 100)
                        {
                            one = "^A000000^E0^L1^K1^dC1Coils Packed:     " + numcoils;      //first half of sign string concatenated
                        }
                        else
                        {
                            one = "^A000000^E0^L1^K1^dC1Coils Packed:    " + numcoils;      //first half of sign string concatenated
                        }
                        int incLev;
                        if (numcoils < 160)                 // if-elseif logic to determine the incentive level earned
                        {
                            incLev = 0;
                        }
                        else if (160 <= numcoils && numcoils < 180)
                        {
                            incLev = 1;
                        }
                        else if (180 <= numcoils && numcoils < 205)
                        {
                            incLev = 2;
                        }
                        else if (205 <= numcoils && numcoils < 230)
                        {
                            incLev = 3;
                        }
                        else if (230 <= numcoils && numcoils < 255)
                        {
                            incLev = 4;
                        }
                        else
                        {
                            incLev = 5;
                        }

                        string two = "^N^K1^dC3Incentive Earned:  " + incLev;       //second half of sign string concatenated

                        string signcode = one + two;            //combine strings to create sign code

                        char[] data = signcode.ToCharArray();           //format string to character array

                        IPAddress ip = IPAddress.Parse("10.141.171.191");           //Ip address of sign on the network
                        /*
                         * ADD MORE IPADDRESSES HERE FOR ADDITIONAL SIGNS
                         * IpAddress ip2 = IpAddress.Parse("whatever ip you set");
                         */

                        TcpListener list = new TcpListener(ip, 49999);              //attach a TCP Listener to the Ip address of the sign with the given listening port of 49999
                        /*
                         * ATTACH TCPListeners TO NEW SIGNS HERE
                         * TcpListener list2 = new TcpListener(ip2, 49999);
                         */

                        Int32 port = 49999;
                        TcpClient client = new TcpClient("10.141.171.191", port);           //create a TCP Client to send data too
                        /*
                         * ADD TCPClients FOR ADDITIONAL SIGNS HERE
                         * TcpClient client2 = new TcpClient("whatever ip address the sign is", port number);
                         */

                        Byte[] message = Encoding.ASCII.GetBytes(data);             //encode character array into bytes (apparently thats the only way to send it)

                        NetworkStream stream = client.GetStream();              //netwrok stream for receiving data

                        stream.Write(message, 0, message.Length);           //send byte array through the stream to the listening TCP Client

                        stream.Close();         //close network stream
                        client.Close();         //close TCP Client

                        //CANNOT CLOSE READER OR CONNECTION IN THIS BLOCK
                    }
                }
            }
            catch (Exception e)             //catchall for any errors or exceptions
            {
                eventLog1.WriteEntry("Error: " + e.Message);           //print stacktrace to event log
            }
        }
    }
}