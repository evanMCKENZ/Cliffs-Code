<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Weighmans.aspx.cs" Inherits="ProcessAutomation.Pulpits.Weighmans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 302px;
        }
        .auto-style3 {
            width: 386px;
        }
        .auto-style4 {
            height: 189px;
        }
        .auto-style5 {
            width: 386px;
            height: 189px;
        }
        .auto-style6 {
            width: 302px;
            height: 32px;
        }
        .auto-style7 {
            width: 585px;
            height: 32px;
        }
        .auto-style8 {
            width: 585px;
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
        <asp:Label ID="Label1" runat="server" Text="Weighman's Pulpit" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="MillOverview.aspx">Go Back to Overview</a>
    </div>
    <div align="center">
        <table cellpadding ="7" cellspacing ="7">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:ImageButton ID="Camera1" runat="server" Imageurl="../Pictures/WMCam1.png" Width ="188px" Height ="135px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                </td>
                <td class="auto-style4">
                    <asp:ImageButton ID="ITStandalone" runat="server" Imageurl="../Pictures/ITComputer.png" Width ="188px" Height ="135px" OnClick="ITStandalone_Click" ToolTip="IT Computer" BorderColor="#FF3300"/>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="WMCAT" runat="server" Imageurl="../Pictures/WMCAT.png" Height ="200px" OnClick="WMCAT_Click" ToolTip="HMTC-WMCAT" Width="160px" BorderColor="#FF3300" />
                </td>
                <td style="text-align:center">
                    <asp:Image ID="Operator" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Width ="150px" Height ="130px"/>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Weighman Operator" ></asp:Label>
                </td>
                <td class="auto-style3">
                    
                    <asp:ImageButton ID="Display1" runat="server" Imageurl="../Pictures/FM07.png" Width ="200px" Height ="200px" OnClick="TS1_Click" ToolTip="BHW-HSMHMI-TS1" BorderColor="#FF3300" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="IBACAM01" runat="server" Imageurl="../Pictures/WMRobot.png" Height ="150px" OnClick="Touchscreen_Click" ToolTip="Touchscreen" Width="187px" BorderColor="#FF3300" />
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td style="text-align:right" class="auto-style6">
                                <asp:Label ID="Label6" runat="server" Text="Computer Name:" ></asp:Label>
                                <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style1">
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
                <td>
                    &nbsp;
                </td>
                <td class="auto-style3">
                    <table>
                        <tr>
                            <td style="text-align:right">
                                <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="160px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="text-align:left">
                                <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="150px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right">
                                <asp:TextBox ID="CompAddressLabel" runat="server" Text ="Computer Address:" width ="160px"></asp:TextBox>
                            </td>
                            <td style="text-align:left">
                                <asp:TextBox ID="ActualCompAddress" runat="server" Text="?" width ="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right">
                                <asp:TextBox ID="IPAddressLabel" runat="server" Text ="IP Address:" width ="160px"></asp:TextBox>
                            </td>
                            <td style="text-align:left">
                                <asp:TextBox ID="ActualIPAddress" runat="server" Text="?" width ="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right">
                                <asp:TextBox ID="CompTypeLabel" runat="server" Text ="Type of Computer:" width ="160px"></asp:TextBox>
                            </td>
                            <td style="text-align:left">
                                <asp:TextBox ID="ActualCompType" runat="server" Text="?" width ="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right; vertical-align:top">
                                <asp:TextBox ID="CompRunningLabel" runat="server" Text ="Running on this Computer:" width ="160px"></asp:TextBox>
                            </td>
                            <td style="text-align:right">
                                <textarea rows="4" cols="10" runat ="server" id ="ActualCompRunning" style="width:150px" name="S1">?</textarea>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
