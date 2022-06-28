<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForemansOffice.aspx.cs" Inherits="ProcessAutomation.Pulpits.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 505px;
        }
        .auto-style3 {
            width: 505px;
            height: 141px;
        }
        .auto-style5 {
            width: 325px;
        }
        .auto-style6 {
            width: 325px;
            height: 141px;
        }
        .auto-style7 {
            width: 505px;
            height: 347px;
        }
        .auto-style8 {
            width: 325px;
            height: 347px;
        }
        .auto-style9 {
            height: 154px;
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.IBAUser FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ActualCompName" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="PageHeader" runat="server" Text="Foreman's Office Computers" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
        </div>
        <div style ="text-align:center">
            <a href ="MillOverview.aspx">Go Back to Overview</a>
        </div>
        <div align="center">
            <table cellspacing ="0">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="CompNameLabel0" runat="server" Text="Click for the Server Room" ></asp:Label>
                        <a href ="ForemansOfficeServers.aspx">
                            <asp:Image ID="IBA1" runat="server" Height="87px" src="../Pictures/ServerRack.jpg" ToolTip="IBA-Cam3" Width="97px" />
                        </a>
                        <br />
                        <br />
                            <asp:Label ID="CompNameLabel" runat="server" Text="Computer Name:" ></asp:Label>
                            <asp:Label ID="ActualCompName" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
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
                                <asp:BoundField DataField="IBAUser" HeaderText="IBA User:" NullDisplayText="N/A" SortExpression="IBA User" />
                            </Fields>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        </asp:DetailsView>
                    </td>
                    <td class="auto-style8">
                        <table>
                            <tr>
                                <td class="auto-style9">
                                    <asp:ImageButton ID="IBACam02A" runat="server" Imageurl="../Pictures/(fixed)BHW-HSMHMI-FR02.png" Height ="150px" OnClick="IBACam02A_Click" ToolTip="BHW-HSMHMI-FR02" BorderColor="#FF3300"/>
                                </td>
                                <td class="auto-style9">
                                    <asp:ImageButton ID="IBACam02B" runat="server" Imageurl="../Pictures/BHW-HSMHMI-FR02(RIGHT).png" Height ="150px" OnClick="IBACam02A_Click" ToolTip="BHW-HSMHMI-FR02" BorderColor="#FF3300" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="HOS01" runat="server" Imageurl="../Pictures/(fixed)BHW-HSMHMI-FR01.png" Height ="150px" OnClick="HOS01_Click" ToolTip="BHW-HSMHMI-FR01" BorderColor="#FF3300" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="IBACAM01" runat="server" Imageurl="../Pictures/BHW-HSMHMI-FR01.png" Height ="150px" OnClick="HOS01_Click" ToolTip="BHW-HSMHMI-FR01" BorderColor="#FF3300" />
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
                                    <asp:ImageButton ID="HOS2" runat="server" Height="102px" OnClick="Standalone_Click" Imageurl="../Pictures/ITComputer.png" ToolTip="IT Standalone" Width="174px" BorderColor="#FF3300" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="IBACAM2" runat="server" Height="102px" OnClick="Standalone_Click" Imageurl="../Pictures/ITComputer.png" ToolTip="IT Standalone" Width="174px"  BorderColor="#FF3300"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >
                        <table>
                            <tr>
                                <td class="auto-style11">
                                    <asp:ImageButton ID="LV03A" runat="server" Imageurl="../Pictures/BHW-HSMSIS-LV03.png" Height ="168px" OnClick="LV03_Click" ToolTip="BHW-HSMSIS-LV03" Width="164px" BorderColor="#FF3300"/>
                                </td>
                                <td class="auto-style9">
                                    <asp:ImageButton ID="AsisComputer1" runat="server" Imageurl="../Pictures/ForemanTop.png" Height ="168px" OnClick="AsisComputer_Click" ToolTip="ASIS-INSP-FR" Width="164px" BorderColor="#FF3300"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">
                                    <asp:ImageButton ID="LV03B" runat="server" Imageurl="../Pictures/BHW-HSMSIS-LV03.png" Height ="168px" OnClick="LV03_Click" ToolTip="BHW-HSMSIS-LV03" Width="164px" BorderColor="#FF3300"/>
                                </td>
                                <td>
                                    <asp:ImageButton ID="VistaComputer1" runat="server" src ="../Pictures/RMTrackingright.png" Height ="168px" OnClick="VistaComputer_Click" ToolTip="HMTC-FR01" Width="164px" BorderColor="#FF3300"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style5" >
                        <asp:Image ID="Desk1" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Height ="87px" ToolTip="Desk" Width="116px"/>
                        <br />
                        &nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Foreman" ></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
