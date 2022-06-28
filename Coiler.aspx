<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Coiler.aspx.cs" Inherits="ProcessAutomation.Pulpits.Coiler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 471px;
        }
        .auto-style3 {
            width: 471px;
            height: 207px;
        }
        .auto-style5 {
            width: 325px;
        }
        .auto-style6 {
            width: 325px;
            height: 207px;
        }
        .auto-style7 {
            width: 471px;
            height: 80px;
        }
        .auto-style8 {
            width: 325px;
            height: 80px;
        }
        .auto-style9 {
            width: 107px;
        }
        .auto-style10 {
            width: 112px;
        }
        .auto-style25 {
            width: 263px;
            height: 25px;
        }
        .auto-style26 {
            width: 138px;
            height: 25px;
        }
        .auto-style4 {
            width: 138px;
        }
        .auto-style27 {
            width: 263px;
        }
        .auto-style28 {
            width: 101px;
        }
        .auto-style29 {
            width: 2px;
            height: 79px;
        }
        .auto-style30 {
            width: 2px;
        }
        .auto-style32 {
            width: 314px;
            height: 280px;
        }
        .auto-style33 {
            width: 112px;
            height: 280px;
        }
        .auto-style34 {
            width: 314px;
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
            <asp:Label ID="PageHeader" runat="server" Text="Coiler Pulpit" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
        </div>
        <div style ="text-align:center">
            <a href ="MillOverview.aspx">Go Back to Overview</a>
        </div>
        <div style="text-align:center">
            <table cellspacing ="10">
                <tr>
                    <td class="auto-style7" style="text-align:center">
                        <asp:ImageButton ID="HSMHMICL11" runat="server" Imageurl="../Pictures/HSMHMICL11.png" Height ="120px" Width="150px" OnClick="HSMHMICL11_Click" ToolTip="BHW-HSMHMI-CL11" BorderColor="#FF3300"/>
                    </td>
                    <td class="auto-style8">
                        <table style="width: 398px">
                            <tr>
                                <td class="auto-style9">
                                    &nbsp;
                                </td>
                                <td class="auto-style10" style="vertical-align:bottom">
                                    <asp:ImageButton ID="HMTCCL02" runat="server" Imageurl="../Pictures/CoilDataEntry.png" Height ="75px" Width="105px" OnClick="HMTCCL02_Click" ToolTip="HMTC-CL02" BorderColor="#FF3300"/>
                                </td>
                                <td class="auto-style28">
                                    <asp:ImageButton ID="HSMHMICL12" runat="server" Imageurl="../Pictures/CL-12.png" Height ="120px" Width="150px" OnClick="HSMHMICL12_Click" ToolTip="BHW-HSMHMI-CL12" BorderColor="#FF3300"/>
                                </td>
                                <td class="auto-style28" style="vertical-align:bottom">
                                    <asp:ImageButton ID="WS0341" runat="server" Height="75px" Imageurl="../Pictures/ITComputer.png" ToolTip="WS0341" OnClick="WS0341_Click" Width="105px" BorderColor="#FF3300"/>
                                </td>
                                <td>
                                    <asp:ImageButton ID="HSMHMICL13" runat="server" Imageurl="../Pictures/CL-13.png" Height ="120px" Width="150px" OnClick="HSMHMICL13_Click" ToolTip="BHW-HSMHMI-CL13" BorderColor="#FF3300"/>
                                </td>
                                <td style="vertical-align:bottom">
                                    <asp:ImageButton ID="Camera2" runat="server" Height="75px" Imageurl="../Pictures/ConvCam.png" ToolTip="Camera" OnClick="Camera_Click" Width="105px" BorderColor="#FF3300"/>
                                </td>
                                <td>
                                    <asp:ImageButton ID="HSMHMICL03" runat="server" Height="120px" Imageurl="../Pictures/HSMHMICL03.png" ToolTip="BHW-HSMHMI-CL03" OnClick="HSMHMICL03_Click" Width="150px" BorderColor="#FF3300"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <table style="width: 195px; height: 282px;">
                            <tr>
                                <td class="auto-style29">
                                    &nbsp;
                                </td>

                                <td class="auto-style29">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30" style="position: inherit">
                                    <asp:ImageButton ID="HSMHMICL01" runat="server" Imageurl="../Pictures/HSMHMICL01right.png" Height ="150px" ToolTip="BHW-HSMHMI-CL01" OnClick="HSMHMICL01_Click" Width="120px" BorderColor="#FF3300"/>
                                </td>
                                <td class="auto-style30">
                                    <asp:ImageButton ID="CL10" runat="server" Imageurl="../Pictures/CL-10.png" Height ="105px" Width="92px" ToolTip="HMTC-CL10" OnClick="HMTCCL10_Click" BorderColor="#FF3300"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30">
                                    &nbsp;
                                </td>
                                <td class="auto-style30">
                                    <asp:ImageButton ID="HMTCCL01" runat="server" Imageurl="../Pictures/RMTrackingright.png" Height ="105px" Width="92px" ToolTip="HMTC-CL01" OnClick="HMTCCL01_Click" BorderColor="#FF3300"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30">
                                    &nbsp;
                                </td>
                                <td class="auto-style30">
                                    <asp:ImageButton ID="Camera" runat="server" Imageurl="../Pictures/ConvCamfaceleft.png" Height ="75px" ToolTip="Camera" OnClick="Camera_Click" Width="105px" BorderColor="#FF3300"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style6">
                        <table style="width: 600px; height: 247px; margin-top: 0px; position: inherit; top: -90px; left: 2px;">
                            <tr>
                                <td class="auto-style34">
                                    <asp:Image ID="CoilerDesk1" runat="server" Height="75px" Imageurl="../Pictures/ControlDesk.jpg" Width="297px" />
                                </td>
                                <td class="auto-style28">
                                    <asp:Image ID="CoilerDesk2" runat="server" Height="75px" Imageurl="../Pictures/ControlDesk.jpg" Width="297px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style34">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.IBAUser FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:Image ID="CoilerChair1" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Height ="75px" Width="105px"/>
                                    <br />
                                    <asp:Label ID="Label4" runat="server" Text="Coiler Operator 1" ></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Image ID="CoilerChair2" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Height ="75px" Width="105px"/>
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text="Coiler Operator 2" ></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style32">
                                        <asp:Label ID="Label2" runat="server" Text="Computer Name:" ></asp:Label>
                                        <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                                        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging1" Width="306px">
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
                                            </Fields>
                                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                        </asp:DetailsView>
                                        <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="215px" ReadOnly="True" style="margin-top: 0px"></asp:TextBox>
                                        <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style33">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;
                    </td>
                    <td class="auto-style5">
                        <table rules="none" style="width: 447px">
                            <tr>
                                <td style="text-align:right" class="auto-style27">
                                    &nbsp;
                                </td>
                                <td style="text-align:left" class="auto-style5">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style27">
                                    &nbsp;
                                </td>
                                <td class="auto-style5">
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
                                <td style="text-align:right" class="auto-style25">
                                    <asp:TextBox ID="CompAddressLabel" runat="server" Text ="Computer Address:" width ="215px" style="margin-left: 0px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="ActualCompAddress" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style27">
                                    <asp:TextBox ID="IPAddressLabel" runat="server" Text ="IP Address:" width ="215px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td  class="auto-style10">
                                    <asp:TextBox ID="ActualIPAddress" runat="server" Text="?" width ="150px " style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style25">
                                    <asp:TextBox ID="CompTypeLabel" runat="server" Text ="Type of Computer:" width ="215px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="ActualCompType" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right; vertical-align:top" class="auto-style27">
                                    <asp:TextBox ID="CompRunningLabel" runat="server" Text ="Running on this Computer:" width ="215px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td style="vertical-align:top" class="auto-style4">
                                    <textarea rows="4" cols ="10" runat ="server" id ="ActualCompRunning" style="margin-left: 12px; width:150px" name="S1" readonly="readonly">?</textarea>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
