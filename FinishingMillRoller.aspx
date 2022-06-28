<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FinishingMillRoller.aspx.cs" Inherits="ProcessAutomation.Pulpits.FinishingMillRoller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 138px;
        }
        .auto-style5 {
            width: 138px;
            height: 50px;
        }
        .auto-style10 {
            width: 139px;
            height: 25px;
        }
        .auto-style13 {
            width: 309px;
        }
        .auto-style25 {
            width: 309px;
            height: 25px;
        }
        .auto-style26 {
            width: 138px;
            height: 25px;
        }
        .auto-style39 {
            width: 4px;
        }
        .auto-style40 {
            width: 645px;
        }
        .auto-style41 {
            width: 94px;
        }
        .auto-style42
        {
            width: 130px;
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
        <asp:Label ID="Label1" runat="server" Text="Finishing Mill Roller Pulpit" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="FinishingMill.aspx">Go Back to Finishing Mill Overview</a>
    </div>
    <div align="center">
        <table>
            <tr>
                <td class="auto-style39">
                    &nbsp;
                </td>
                <td class="auto-style40" style="vertical-align:bottom">
                    <table>
                        <tr>
                            <td>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            </td>
                            <td class="auto-style42">
                                <asp:ImageButton ID="ASISINSPA" runat="server" Imageurl="../Pictures/ParsytecScreen.png" Height ="180px" Width ="254px" OnClick="ASISINSP_Click" ToolTip="ASIS-INSP-FM" BorderColor="#FF3300" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style39">
                    <table rules="none" style="width: 215px">
                        <tr>
                            <td style="text-align:right" class="auto-style13">
                                <asp:Label ID="Label6" runat="server" Text="Computer Name:" ></asp:Label>
                                <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="text-align:left" class="auto-style5">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.screenSize, IPAddresses.screenResolution FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style13">
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
                                        <asp:BoundField DataField="screenSize" HeaderText="Screen Size:" NullDisplayText="N/A" SortExpression="screenSize" />
                                        <asp:BoundField DataField="screenResolution" HeaderText="Screen Resloution:" NullDisplayText="N/A" SortExpression="screenResolution" />
                                    </Fields>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                </asp:DetailsView>
                            </td>
                            <td class="auto-style5">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style25">
                                <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="215px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style26">
                                <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style25">
                                &nbsp;
                            </td>
                            <td class="auto-style26">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style25">
                                 &nbsp;
                            </td>
                            <td  class="auto-style10">
                                 &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style25">
                                &nbsp;
                            </td>
                            <td class="auto-style26">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right; vertical-align:top" class="auto-style13">
                                &nbsp;
                            </td>
                            <td style="vertical-align:top" class="auto-style4">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    &nbsp;
                </td>
                <td class="auto-style40">
                    <table>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ITComputer" runat="server" Imageurl="../Pictures/ITComputer.png" Width ="127px" Height ="135px" OnClick="IT_Click" ToolTip="IT Standalone" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="HMTCCK01B" runat="server" Imageurl="../Pictures/RMTracking.png" Width ="133px" Height ="137px" OnClick="FMFM05_Click" ToolTip="HMTC-FM05" BorderColor="#FF3300"/>
                            </td>
                            <td class="auto-style41">
                                <asp:ImageButton ID="Display2" runat="server" Height="200px" OnClick="LiveView_Click" Imageurl="../Pictures/LiveView.png" Width="100px" ToolTip="Live View Screen"  BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="Display3" runat="server" Height="200px" OnClick="LiveView_Click" Imageurl="../Pictures/LiveView.png" Width="100px" ToolTip="Live View Screen"  BorderColor="#FF3300"/>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style39">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    &nbsp;
                </td>
                <td class="auto-style40">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="CoilerChair1" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Height ="75px" ToolTip="Depiler Operator" Width="105px"/>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Roller" ></asp:Label>
                </td>
                <td class="auto-style39">
                    &nbsp;
                </td>
            </tr>
            </table>
       </div>
</asp:Content>
