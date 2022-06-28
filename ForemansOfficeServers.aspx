<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForemansOfficeServers.aspx.cs" Inherits="ProcessAutomation.Pulpits.Servers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 671px;
        }
        .auto-style3 {
            width: 671px;
            height: 141px;
        }
        .auto-style5 {
            width: 325px;
        }
        .auto-style6 {
            width: 325px;
            height: 141px;
        }
        .auto-style8 {
            width: 671px;
            height: 346px;
        }
        .auto-style10 {
            width: 184px;
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
    <div>
        <div style="text-align:center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ActualCompName" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="PageHeader" runat="server" Text="Foreman's Office Servers" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
        </div>
        <div style ="text-align:center">
            <a href ="ForemansOffice.aspx">Go Back to Foreman's Office</a>
        </div>
        <div align="center">
            <table cellspacing ="0">
                <tr>
                    <td class="auto-style8">
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="CompNameLabel" runat="server" Text="Server Name:" ></asp:Label>
                        <br />
                        <asp:Label ID="ActualCompName" runat="server" Text="Click on A Server" Font-Bold="True"></asp:Label>
                        <br />
                        <br />
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging1" Width="371px">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <Fields>
                                <asp:BoundField DataField="IPAddress4" HeaderText="IP Address:" SortExpression="IPAddress4" />
                                <asp:BoundField DataField="description" HeaderText="Description:" SortExpression="description" />
                                <asp:BoundField DataField="runApp" HeaderText="Running on this Computer:" NullDisplayText="N/A" SortExpression="runApp" />
                                <asp:BoundField DataField="network" HeaderText="Network:" SortExpression="network" />
                                    <asp:BoundField DataField="computerType" HeaderText="Type of Computer:" NullDisplayText="N/A" ReadOnly="True" SortExpression="computerType" />
                                    <asp:BoundField DataField="terminalServer" HeaderText="Terminal Server:" NullDisplayText="N/A" SortExpression="terminalServer" />
                                </Fields>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        </asp:DetailsView>
                        <br />
                        <br />
                        <table>
                            <tr>
                                <td>
                                    <asp:Image ID="HOS3" runat="server" Imageurl="../Pictures/ServerTop.jpg" Height ="50px" ToolTip="Camera Servers" Width="180px" />
                                </td>
                                <td>
                                    <asp:Image ID="HOS7" runat="server" Imageurl="../Pictures/ServerTop.jpg" Height ="50px" ToolTip="Video Rack" Width="180px" />
                                </td>
                                <td>
                                    <asp:Image ID="HOS12" runat="server" Imageurl="../Pictures/ServerTop.jpg" Height ="50px" ToolTip="Switches" Width="180px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="HOS01" runat="server" Imageurl="../Pictures/Servers.jpg" Height ="150px" OnClick="IBACam1_Click" ToolTip="Camera Server 1" BorderColor="#FF3300" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="HOS8" runat="server" Imageurl="../Pictures/Servers.jpg" Height ="150px" OnClick="Video_Click" ToolTip="Video Rack" BorderColor="#FF3300" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="HOS15" runat="server" Imageurl="../Pictures/Servers.jpg" Height ="150px" OnClick="Switches_Click" ToolTip="Switches" BorderColor="#FF3300" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="HOS4" runat="server" Imageurl="../Pictures/Servers.jpg" Height ="150px" OnClick="IBACam2_Click" ToolTip="Camera Server 2" BorderColor="#FF3300" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="HOS9" runat="server" Imageurl="../Pictures/Servers.jpg" Height ="150px" OnClick="Video_Click" ToolTip="Video Rack" BorderColor="#FF3300" />
                                </td>
                                <td>
                                    <asp:Image ID="HOS13" runat="server" Imageurl="../Pictures/ServerTop.jpg" Height ="147px" ToolTip="Switches" Width="180px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="Cam3" runat="server" Imageurl="../Pictures/Servers.jpg" Height ="150px" OnClick="IBACam3_Click" ToolTip="Cam Server 3" BorderColor="#FF3300" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="HOS10" runat="server" Imageurl="../Pictures/Servers.jpg" Height ="150px" OnClick="Video_Click" ToolTip="Video Rack" BorderColor="#FF3300" />
                                </td>
                                <td>
                                    <asp:Image ID="HOS14" runat="server" Imageurl="../Pictures/ServerTop.jpg" Height ="147px" ToolTip="Switches" Width="180px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="HOS6" runat="server" Imageurl="../Pictures/ServerBottom.jpg" Height ="47px" ToolTip="Camera Servers" Width="179px" />
                                </td>
                                <td>
                                    <asp:Image ID="HOS11" runat="server" Imageurl="../Pictures/ServerBottom.jpg" Height ="47px" ToolTip="Video Rack" Width="179px" />
                                </td>
                                <td>
                                    <asp:Image ID="HOS16" runat="server" Imageurl="../Pictures/ServerBottom.jpg" Height ="47px" ToolTip="Switches" Width="179px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;
                    </td>
                    <td class="auto-style6">
                        <table style="height: 138px; width: 341px">
                            <tr>
                                <td class="auto-style10">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >
                        &nbsp;
                    </td>
                    <td class="auto-style5" >
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
