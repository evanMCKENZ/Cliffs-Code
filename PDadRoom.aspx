<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PDadRoom.aspx.cs" Inherits="ProcessAutomation.Pulpits.pDadRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style3 {
            height: 558px;
        }
        .auto-style4 {
            width: 168px;
        }
        .auto-style5 {
            width: 168px;
            height: 26px;
        }
        .auto-style8 {
            width: 168px;
            height: 6px;
        }
        .auto-style10 {
            width: 168px;
            height: 25px;
        }
        .auto-style11 {
            width: 284px;
        }
        .auto-style12 {
            height: 27px;
            width: 284px;
        }
        .auto-style13 {
            width: 354px;
            height: 26px;
        }
        .auto-style15 {
            width: 354px;
            height: 25px;
        }
        .auto-style16 {
            width: 354px;
            height: 6px;
        }
        .auto-style17 {
            width: 354px;
        }
        .auto-style18 {
            width: 284px;
            height: 172px;
        }
        .auto-style19 {
            height: 172px;
        }
        .auto-style20 {
            width: 284px;
            height: 61px;
        }
        .auto-style21 {
            height: 61px;
        }
        .auto-style22 {
            width: 284px;
            height: 21px;
        }
        .auto-style23 {
            height: 21px;
        }
        .auto-style24 {
            height: 598px;
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
        <asp:Label ID="mylabel" runat="server" Text="PDad Room" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="MillOverview.aspx">Go Back to Overview</a>
    </div>
    <div align="center">
        <table>
            <tr>
                <td class="auto-style3">
                    <table>
                        <tr>
                            <td class="auto-style24">
                                <table>
                                    <tr>
                                        <td class="auto-style22" align="center">
                                            <asp:Label ID="Label4" runat="server" Text="Communication PLC" ></asp:Label>
                                        </td>
                                        <td style ="text-align:center" align="center" class="auto-style23">
                                            <asp:Label ID="mylabel0" runat="server" Text="Door" Font-Bold="True" Font-Size="XX-Large" Height="34px"></asp:Label>
                                        </td>
                                        <td style ="text-align:center" align="center">
                                            &nbsp;
                                        </td>
                                        <td style ="text-align:center" align="center">
                                            &nbsp;
                                        </td>
                                        <td style="text-align:center">
                                            <asp:Label ID="Label5" runat="server" Text="DeltaV Servers" ></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <asp:ImageButton ID="PDadL1" runat="server" Height="150px" Width="230px" Imageurl="../Pictures/ServersAndTop.JPG" OnClick="PDadL1_Click" ToolTip="FurnaceCommPLC " BorderColor="#FF3300" />   
                                        </td>
                                        <td style ="text-align:left" align="left">
                                            <br />
                                            <asp:Label ID="Label8" runat="server" Text="Level 2 PLC" ></asp:Label>
                                            <br />
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="PDadApp1" runat="server" Height="150px" Width="230px" Imageurl="../Pictures/ServersAndTop.JPG" OnClick="PDadApp1_Click" ToolTip="bhw-hsmfce-app1 " BorderColor="#FF3300"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <asp:ImageButton ID="PDadL2" runat="server" Imageurl="../Pictures/ServersAndBottom.JPG" Height="171px" Width="230px" OnClick="PDadL2_Click" ToolTip="  L2FurnacePlc  " BorderColor="#FF3300" />
                                        </td>
                                        <td class="auto-style19">
                                            <asp:Label ID="Label7" runat="server" Text="Level 1 PLC" ></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td >
                                            <asp:ImageButton ID="PDadFirewall" runat="server" Imageurl="../Pictures/ServersAndBottom.JPG" Height ="171px" Width="230px" OnClick="PDadFirewall_Click" ToolTip="DELTA-V-FIREWALL " BorderColor="#FF3300"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">
                                             <asp:ImageButton ID="PDadGauge" runat="server" Imageurl="../Pictures/(fixed)straighttv.png" Height="150px" Width="230px" OnClick="PDadGauge_Click" ToolTip="  LWG  " BorderColor="#FF3300"/>
                                        </td>
                                        <td>
                                             <asp:ImageButton ID="PDadCameraTrans" runat="server" Imageurl="../Pictures/ServerRack2.jpg" Height="141px" Width="230px" OnClick="PDadCameraTrans_Click" ToolTip="Camera Transmitter" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                             &nbsp;
                                        </td>
                                        <td>
                                             &nbsp;
                                        </td>
                                        <td>
                                             <asp:ImageButton ID="PDadCameraServer" runat="server" Imageurl="../Pictures/ServerRack2.JPG" Height="141px" Width="230px" OnClick="PDadCameraServer_Click" ToolTip="BHW-HSMIBA-CAM4 " BorderColor="#FF3300" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width:200px">
                                &nbsp;
                            </td>
                            <td class="auto-style24">
                                <table cellpadding ="0">
                                    <tr>
                                        <td>
                                             &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align ="left" style="width:100px">
                    <table style="width: 215px">
                        <tr>
                            <td style="text-align:right" class="auto-style13">
                                <asp:Label ID="Label1" runat="server" Text="Computer Name:" ></asp:Label>
                                <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="text-align:left" class="auto-style5">
                                &nbsp;
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
                            <td style="text-align:right" class="auto-style17">
                                <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="215px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style17">
                                <asp:TextBox ID="CompAddressLabel" runat="server" Text ="Computer Address:" width ="215px" style="margin-left: 0px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="ActualCompAddress" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style15">
                                <asp:TextBox ID="IPAddressLabel" runat="server" Text ="IP Address:" width ="215px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td  class="auto-style10">
                                <asp:TextBox ID="ActualIPAddress" runat="server" Text="?" width ="150px " style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style16">
                                <asp:TextBox ID="CompTypeLabel" runat="server" Text ="Type of Computer:" width ="215px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="ActualCompType" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right; vertical-align:top" class="auto-style17">
                                <asp:TextBox ID="CompRunningLabel" runat="server" Text ="Running on this Computer:" width ="215px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="vertical-align:top" class="auto-style4">
                               <textarea rows="4" cols="10" runat ="server" id ="ActualCompRunning" style="margin-left: 12px; width:150px" name="S1" readonly="readonly" >?</textarea>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
