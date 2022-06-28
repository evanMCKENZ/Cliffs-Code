<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="ComputerRoom.aspx.cs" Inherits="ProcessAutomation.Pulpits.ComputerRoom" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 900px;
            height: 55px;
        }
        .auto-style6 {
            width: 900px;
            height: 334px;
        }
        .auto-style7 {
            height: 334px;
        }
        .auto-style27 {
            width: 263px;
            height: 55px;
        }
        .auto-style10 {
            width: 112px;
        }
        .auto-style29 {
            height: 64px;
            width: 409px;
        }
        .auto-style30 {
            height: 116px;
            width: 409px;
        }
        .auto-style32 {
            height: 64px;
            width: 138px;
        }
        .auto-style35 {
            height: 64px;
            width: 151px;
        }
        .auto-style43 {
            height: 109px;
            width: 151px;
        }
        .auto-style44 {
            height: 109px;
            width: 409px;
        }
        .auto-style45 {
            height: 109px;
            width: 32px;
        }
        .auto-style46 {
            height: 109px;
            width: 138px;
        }
        .auto-style48 {
            height: 64px;
        }
        .auto-style49 {
            height: 109px;
            width: 113px;
        }
        .auto-style53 {
            height: 109px;
            width: 127px;
        }
        .auto-style54 {
            height: 64px;
            width: 127px;
        }
        .auto-style66 {
            height: 60px;
            width: 32px;
        }
        .auto-style67 {
            height: 60px;
            width: 113px;
        }
        .auto-style69 {
            width: 263px;
            height: 21px;
        }
        .auto-style70 {
            height: 109px;
            width: 220px;
        }
        .auto-style71 {
            height: 64px;
            width: 220px;
        }
        .auto-style75 {
            height: 94px;
        }
        .auto-style76 {
            height: 116px;
            width: 151px;
        }
        .auto-style77 {
            height: 116px;
            width: 127px;
        }
        .auto-style78 {
            height: 116px;
            width: 32px;
        }
        .auto-style79 {
            height: 116px;
            width: 113px;
        }
        .auto-style80 {
            height: 116px;
            width: 138px;
        }
        .auto-style81 {
            height: 116px;
            width: 220px;
        }
        .auto-style82 {
            height: 60px;
            width: 151px;
        }
        .auto-style83 {
            height: 60px;
            width: 127px;
        }
        .auto-style84 {
            height: 60px;
        }
        .auto-style85 {
            height: 60px;
            width: 138px;
        }
        .auto-style86 {
            height: 60px;
            width: 220px;
        }
        .auto-style87 {
            height: 94px;
            width: 151px;
        }
        .auto-style88 {
            height: 94px;
            width: 127px;
        }
        .auto-style89 {
            height: 94px;
            width: 32px;
        }
        .auto-style90 {
            height: 94px;
            width: 113px;
        }
        .auto-style91 {
            height: 94px;
            width: 138px;
        }
        .auto-style92 {
            height: 94px;
            width: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="area" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="LeftSideBar" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="RightSideBar" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align:center">
        <asp:Label ID="Label1" runat="server" Text="Computer Room" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="MillOverview.aspx">Go Back to Overview</a>
    </div>
    <div>
        <table cellpadding ="5">
            <tr>
                <td class="auto-style6">
                    <table cellpadding ="2" style="margin-bottom: 0px; height: 604px;">
                        <tr>
                            <td class="auto-style43">
                                &nbsp;
                            </td>
                            <td class="auto-style43">
                                &nbsp;
                            </td>
                            <td class="auto-style43">
                                &nbsp;
                            </td>
                            <td class="auto-style43">
                                &nbsp;
                            </td>
                            <td class="auto-style43">
                                &nbsp;
                            </td>
                            <td class="auto-style53">
                                &nbsp;
                            </td>
                            <td class="auto-style44">
                                <asp:ImageButton ID="CompCam2" runat="server" Imageurl="../Pictures/CR01.png" Height="107px" Width="172px" OnClick="IBACR02_Click" ToolTip="BHW-HSMHMI-CR02" BorderColor="#FF3300"/>
                            </td>
                            <td class="auto-style45">
                                &nbsp;
                            </td>
                            <td class="auto-style49">
                                &nbsp;
                            </td>
                            <td class="auto-style46">
                                &nbsp;
                            </td>
                            <td class="auto-style70">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            </td>
                            <td style="vertical-align:top" class="auto-style46">
                                <asp:ImageButton ID="CompCam1" runat="server" Imageurl="../Pictures/CR02.png" Height="107px" Width="172px" OnClick="IBACR01_Click" ToolTip="BHW-HSMHMI-CR01" BorderColor="#FF3300"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align:bottom; text-align:right" class="auto-style35">
                                <asp:ImageButton ID="DECTALK" runat="server" Imageurl="../Pictures/(fixed)straighttv.png" Height="79px" Width="84px" OnClick="DECTALK_Click" ToolTip="DECTALK" BorderColor="#FF3300"/>
                            </td>
                            <td style="vertical-align:bottom; text-align:right" class="auto-style35">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            </td>
                            <td style="vertical-align:bottom; text-align:right" class="auto-style35">
                                <br />
                                <asp:ImageButton ID="COM11A" runat="server" Imageurl="../Pictures/CPU31.png" Height="79px" Width="84px" OnClick="CPU31_Click" ToolTip="CPU31" BorderColor="#FF3300"/>
                            </td>
                            <td style="vertical-align:bottom; text-align:right" class="auto-style35">
                                <asp:ImageButton ID="COM11B" runat="server" Imageurl="../Pictures/CPU31.png" Height="79px" Width="84px" OnClick="CPU31_Click" ToolTip="CPU31" BorderColor="#FF3300"/>
                            </td>
                            <td style="vertical-align:top; text-align:right" class="auto-style54">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            </td>
                            <td style="vertical-align:bottom; text-align:right" class="auto-style29">
                                &nbsp;
                                <table>
                                    <tr>
                                        <td class="auto-style9">
                                <asp:ImageButton ID="CR03A" runat="server" Imageurl="../Pictures/GraphScreenDown.png" Height="79px" Width="84px" OnClick="CR03_Click" ToolTip="HMTC-CR03" BorderColor="#FF3300"/>
                                        </td>
                                        <td class="auto-style10">
                                <asp:ImageButton ID="CR03B" runat="server" Imageurl="../Pictures/Panalarm.png" Height="79px" Width="84px" OnClick="CR03_Click" ToolTip="HMTC-CR03" BorderColor="#FF3300"/>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style ="vertical-align:bottom" class="auto-style48">
                                <asp:ImageButton ID="Cop01A" runat="server" Imageurl="../Pictures/(fixed)straighttv.png" Height="79px" Width="84px" OnClick="COP01_Click" ToolTip="HMPC-COP01" BorderColor="#FF3300"/>
                            </td>
                            <td style="vertical-align:bottom" class="auto-style48">
                                <asp:ImageButton ID="Cop01B" runat="server" Imageurl="../Pictures/(fixed)straighttv.png" Height="79px" Width="84px" OnClick="COP01_Click" ToolTip="HMPC-COP01" BorderColor="#FF3300"/>
                            </td>
                            <td style="vertical-align:top" class="auto-style32">
                                <asp:ImageButton ID="Cop02" runat="server" Imageurl="../Pictures/COP2.png" Height="102px" Width="133px" OnClick="COP02_Click" ToolTip="HMPC_COP02" BorderColor="#FF3300"/>
                            </td>
                            <td class="auto-style71">
                                &nbsp;
                            </td>
                            <td class="auto-style32">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style76">
                                &nbsp;
                            </td>
                            <td class="auto-style76">
                                <table style="width: 297px">
                                    <tr>
                                        <td style="text-align:right" class="auto-style27">
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.IBAUser, IPAddresses.screenSize, IPAddresses.screenResolution FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Label ID="Label2" runat="server" Text="Computer Name:" ></asp:Label>
                                            <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td style="text-align:left" class="auto-style5">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right" class="auto-style69">
                                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging1" Width="306px">
                                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                                <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                                <Fields>
                                                    <asp:BoundField DataField="IPAddress4" HeaderText="IP Address:" SortExpression="IPAddress4" />
                                                    <asp:BoundField DataField="description" HeaderText="Description:" SortExpression="description" />
                                                    <asp:BoundField DataField="runApp" HeaderText="Running on this Computer:" NullDisplayText="N/A" SortExpression="runApp" />
                                                    <asp:BoundField DataField="network" HeaderText="Network:" SortExpression="network" />
                                                    <asp:BoundField DataField="computerType" HeaderText="Type of Computer:" NullDisplayText="N/A" ReadOnly="True" SortExpression="computerType" />
                                                    <asp:BoundField DataField="terminalServer" HeaderText="Terminal Server:" NullDisplayText="N/A" SortExpression="terminalServer" />
                                                    <asp:BoundField DataField="IBAUser" HeaderText="IBA User:" NullDisplayText="N/A" SortExpression="IBAUser" />
                                                    <asp:BoundField DataField="screenSize" HeaderText="Screen Size:" NullDisplayText="N/A" SortExpression="screenSize" />
                                                    <asp:BoundField DataField="screenResolution" HeaderText="Screen Resolution:" NullDisplayText="N/A" SortExpression="screenResolution" />
                                                </Fields>
                                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                            </asp:DetailsView>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="auto-style76">
                                <br />
                            </td>
                            <td class="auto-style76">
                                &nbsp;
                            </td>
                            <td class="auto-style76">
                                &nbsp;
                            </td>
                            <td class="auto-style77">
                                &nbsp;
                            </td>
                            <td class="auto-style30">
                                &nbsp;
                            </td>
                            <td class="auto-style78">
                                <asp:Image ID="Operator" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Height="79px" Width="84px" ToolTip="Chair"/>
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="Computer Operator" ></asp:Label>
                            </td>
                            <td class="auto-style79" >
                                &nbsp;
                            </td>
                            <td class="auto-style80" >
                                &nbsp;
                            </td>
                            <td class="auto-style81" >
                                &nbsp;
                            </td>
                            <td class="auto-style80" >
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style87">
                                &nbsp;
                            </td>
                            <td class="auto-style87">
                                &nbsp;
                            </td>
                            <td class="auto-style87">
                                &nbsp;
                            </td>
                            <td style="text-align:left; vertical-align:top" class="auto-style87">
                                <asp:ImageButton ID="IBACAM5" runat="server" Height="63px" Width="69px" Imageurl="../Pictures/ServersAndTop.JPG" OnClick="IBACAM5_Click" ToolTip="IBACAM5 Server" BorderColor="#FF3300" />   
                                <asp:ImageButton ID="HSMIBA" runat="server" Imageurl="../Pictures/ServersAndBottom.JPG" Height="55px" Width="69px" OnClick="IBACAM_Click" ToolTip="IBAPDA Server" BorderColor="#FF3300" />
                            </td>
                            <td class="auto-style87">
                                &nbsp;
                            </td>
                            <td class="auto-style88">
                                &nbsp;
                            </td>
                            <td style="text-align:right; vertical-align:top" class="auto-style75">
                                <asp:ImageButton ID="CRSIT3" runat="server" Height="79px" OnClick="CRSIT_Click" Imageurl="../Pictures/FurnaceMapUp.png" ToolTip="HMTC-CRSIT3" Width="84px"  BorderColor="#FF3300"/>
                            </td>
                            <td align ="center" class="auto-style89" style ="vertical-align:top">
                                <asp:ImageButton ID="Cop03B" runat="server" Imageurl="../Pictures/Schedules.png" Height="79px" Width="84px"  OnClick="COP03_Click" ToolTip="HMPC_COP03"  BorderColor="#FF3300"/>
                            </td>
                            <td align ="center" class="auto-style90" style ="vertical-align:top">
                                <asp:ImageButton ID="Cop03A" runat="server" Imageurl="../Pictures/Fixer.png" Height="79px" Width="84px"  OnClick="COP03_Click" ToolTip="HMPC_COP03" BorderColor="#FF3300"/>
                            </td>
                            <td class="auto-style91">
                                &nbsp;
                            </td>
                            <td class="auto-style92">
                                &nbsp;
                            </td>
                            <td class="auto-style91">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style82">
                                &nbsp;
                            </td>
                            <td class="auto-style82">
                                &nbsp;
                            </td>
                            <td class="auto-style82">
                                &nbsp;
                            </td>
                            <td class="auto-style82">
                                &nbsp;
                            </td>
                            <td class="auto-style82">
                                &nbsp;
                            </td>
                            <td class="auto-style83">
                                &nbsp;
                            </td>
                            <td style="text-align:right; vertical-align:top" class="auto-style84">
                                <asp:ImageButton ID="CR01" runat="server" Imageurl="../Pictures/PanalarmUp.png" Height="79px" Width="84px"  OnClick="CR01_Click" ToolTip="HMTC-CR01" BorderColor="#FF3300"/>
                            </td>
                            <td style = "vertical-align:top" class="auto-style66">
                                <asp:ImageButton ID="CR02B" runat="server" Imageurl="../Pictures/RMTrackingUp.png" Height="79px" Width="84px"  OnClick="CR02_Click" ToolTip="HMTC-CR02" BorderColor="#FF3300"/>
                            </td>
                            <td style = "vertical-align:top" class="auto-style67" >
                                <asp:ImageButton ID="CR02A" runat="server" Imageurl="../Pictures/RMTrackingUp.png" Height="79px" Width="84px"  OnClick="CR02_Click" ToolTip="HMTC-CR02" BorderColor="#FF3300"/>
                            </td>
                            <td class="auto-style85" >
                                &nbsp;
                            </td>
                            <td class="auto-style86" >
                                &nbsp;
                            </td>
                            <td class="auto-style85" >
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style7">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
