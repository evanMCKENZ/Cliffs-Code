using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProcessAutomation.Pulpits
{
    public partial class pDadRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void PDadL1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "FurnaceCommPLC";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void PDadApp1_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "bhw-hsmfce-app1";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void PDadL2_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "L2FurnacePlc";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void PDadFirewall_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "DELTA-V-FIREWALL";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void PDadGauge_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "LWG";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        protected void PDadCameraTrans_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "Camera Transmitter";
            ActualCompName2.Text = "Not In Database";
            ActualCompAddress.Text = "Unknown";
            ActualCompType.Text = "Camera Transmitter";
            ActualCompRunning.Value = "Camera Transmitter";
            ActualIPAddress.Text = "Unknown";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = true;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = true;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }
        protected void PDadCameraServer_Click(object sender, ImageClickEventArgs e)
        {
            ActualCompName.Text = "";
            ActualCompName2.Text = "BHW-HSMIBA-CAM4";
            ActualCompAddress.Text = "";
            ActualCompType.Text = "";
            ActualCompRunning.Value = "";
            ActualIPAddress.Text = "";
            this.Border((ImageButton)sender, null);
            ActualCompName.Visible = false;
            ActualCompType.Visible = false;
            ActualCompAddress.Visible = false;
            ActualCompRunning.Visible = false;
            ActualIPAddress.Visible = false;
            CompNameLabel.Visible = false;
            CompAddressLabel.Visible = false;
            CompTypeLabel.Visible = false;
            CompRunningLabel.Visible = false;
            IPAddressLabel.Visible = false;
        }

        /**
* This function handles the borders put around a clicked computer.
* Previous1 is the first computer that needs its border removed
* Previous2 is the second, it could be null if there is not a second screen on the computer clicked
*/
        protected void Border(ImageButton Border1, ImageButton Border2)
        {
            PDadL1.BorderStyle = BorderStyle.None;
            PDadL2.BorderStyle = BorderStyle.None;
            PDadApp1.BorderStyle = BorderStyle.None;
            PDadFirewall.BorderStyle = BorderStyle.None;
            PDadGauge.BorderStyle = BorderStyle.None;
            PDadCameraTrans.BorderStyle = BorderStyle.None;
            PDadCameraServer.BorderStyle = BorderStyle.None;

            Border1.BorderStyle = BorderStyle.Solid;
            if (Border2 != null)
            {
                Border2.BorderStyle = BorderStyle.Solid;
            }
        }


        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging1(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}