<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MillOverview.aspx.cs" Inherits="ProcessAutomation.Pulpits.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 582px;
        }
        .auto-style2 {
            height: 387px;
            width: 245px;
        }
        .auto-style3 {
            width: 245px;
        }
        .auto-style4 {
            height: 38px;
        }
        .auto-style5 {
            text-decoration: underline;
        }
        .auto-style6
        {
            width: 30px;
        }
        #slab_yard_table
        {
            height: 580px;
        }
        .auto-style7
        {
            height: 149px;
        }
        .auto-style9
        {
            height: 117px;
        }
        .auto-style12
        {
            height: 63px;
        }
        .auto-style13
        {
            height: 103px;
        }
        .auto-style14
        {
            height: 74px;
        }
        .auto-style16
        {
            height: 110px;
        }
        .auto-style17
        {
            height: 118px;
        }
        .auto-style18 {
            width: 245px;
            text-decoration: underline;
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
        <asp:Label ID="OverviewTitle" runat="server" Text="Hot Mill Overview" Font-Bold="true" Font-Size ="XX-Large"></asp:Label>
    </div>
        <div style="text-align:center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ActualCompName" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="Click on a Pulpit to View Computer Layout" Font-Bold="true" Font-Size ="X-Large"></asp:Label>
        </div>
    <div style="margin-top: 0px">
        <table id ="entire_mill">
            <tr>
                <td class="auto-style1">
                    <table id="slab_yard_table">
                        <tr>
                            <td class="auto-style6">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:Image ID="SlabYardArrow" runat="server" Imageurl="../Pictures/leftarrow.png"  Height ="20px" Width =" 30px"/>
                            </td>
                            <td style="text-align:center">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="SlabYardLabel" runat="server" Text="To Slab Yard" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="True"></asp:Label>
                                <br />
                                <br />
                                <a href="SlabYard.aspx">
                                    <asp:Image ID="SlabYard" runat="server" Imageurl="../Pictures/SlabYard.jpg" Width ="100px" Height ="100px" ToolTip="Slab Yard"/>
                                </a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1">
                    <table id ="hot_mill_table">
                        <tr>
                            <td style="text-align:center; vertical-align:bottom; height:42px">
                                <asp:Label ID="HeaterPulpitLabel" runat="server" Text="Heater Pulpit" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="True"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td style="text-align:center; vertical-align:bottom; height:42px">
                                &nbsp; <span class="auto-style5"><strong>PDad Room</strong></span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href ="FurnaceHeater.aspx">
                                    <asp:Image ID="FHPulpit" runat="server" Imageurl="../Pictures/(fixed)pulpit2.png" Width ="120px" Height ="150px" ToolTip="Furnace Pulpit" />
                                </a>
                            </td>
                            <td style="vertical-align:top; text-align:center">  
                                <a href ="PDadRoom.aspx">
                                    <asp:Image ID="PDadRoom" runat="server" Imageurl="../Pictures/(fixed)pulpit2.png" Width ="60px" Height ="60px" ToolTip="PDad Room" />
                                </a>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <asp:Image ID="Mill_Line_1" runat="server" Imageurl="../Pictures/mill_line_1.png"  Width ="410px" Height ="100px" style="margin-top: 12px"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellspacing ="15">
                                    <tr>
                                        <td>
                                            <asp:Image ID="F1" runat="server" Imageurl="../Pictures/F1.png"  Width ="60px" Height ="60px"/>
                                        </td>
                                        <td>
                                            <asp:Image ID="F2" runat="server" Imageurl="../Pictures/F2.png"  Width ="60px" Height ="60px"/>
                                        </td>
                                        <td>
                                            <asp:Image ID="F3" runat="server" Imageurl="../Pictures/F3.png"  Width ="60px" Height ="60px"/>
                                        </td>
                                        <td>
                                            <asp:Image ID="F4" runat="server" Imageurl="../Pictures/F4.png"  Width ="66px" Height ="66px"/>
                                        </td>
                                        <td>
                                            <asp:Image ID="F5" runat="server" Imageurl="../Pictures/F5.png"  Width ="68px" Height ="66px"/>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td style="text-align:center">
                                            <a href ="Depiler.aspx">
                                                <asp:Image ID="DepilerPulpit" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width ="60px" Height ="60px" ToolTip="Depiler Pulpit"/>
                                            </a>
                                        </td>
                                        <td style="width:100px">
                                            &nbsp;
                                        </td>
                                        <td style="text-align:center">
                                            <a href="Charger.aspx">
                                                <asp:Image ID="ChargerPulpit" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width ="60px" Height ="60px" ToolTip="Charger Pulpit"/>
                                            </a>
                                        </td>
                                        <td style="width:100px">
                                            &nbsp;
                                        </td>
                                        <td style="text-align:center">
                                            <a href ="WBPulpit.aspx">
                                                <asp:Image ID="Image2" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width ="60px" Height ="60px" ToolTip="Depiler Pulpit"/>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            <asp:Label ID="DepilerLabel" runat="server" Text="Depiler Pulpit" Font-Bold="True" Font-Overline="False" Font-Underline="True"></asp:Label>
                                        </td>
                                        <td class="auto-style4">

                                        </td>
                                        <td class="auto-style4">
                                            <asp:Label ID="ChargerLabel" runat="server" Text="Charger Pulpit" Font-Bold="True" Font-Overline="False" Font-Underline="True"></asp:Label>
                                        </td>
                                        <td style="text-align:center">
                                            <a href ="WBFWorkstations.aspx">
                                                <asp:Image ID="Image3" runat="server" Imageurl="../Pictures/(fixed)straighttv.png" Width ="60px" Height ="60px" ToolTip="WBF Workstations"/>
                                            </a>
                                        </td>
                                        <td class="auto-style4">
                                            <asp:Label ID="WBLabel" runat="server" Text="Walking Beam Pulpit" Font-Bold="True" Font-Overline="False" Font-Underline="True"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td class="auto-style4">
                                            <asp:Label ID="Workstations1" runat="server" Text="WBF HMI Workstations" Font-Bold="True" Font-Overline="False" Font-Underline="True"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td class="auto-style9" style="text-align:center; vertical-align:bottom">
                                <asp:Label ID="HSMR2CAMLabel" runat="server" Text="BHW-HSM-R2CAM" Font-Bold="True" Font-Overline="False" Font-Underline="True"></asp:Label> 
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <a href ="HSMR2CAM.aspx">
                                    <asp:Image ID="HSMR2CAM" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width="60px" Height="60px" ToolTip="BHW-HSM-R2CAM"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center; vertical-align:bottom">
                                <asp:Label ID="RollerLabel" runat="server" Text="R1-R5" Font-Size ="Large" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="HMRollers" runat="server" Imageurl="../Pictures/HMRollers.png" Width ="150px" Height ="100px"/>
                            </td>
                            <td>
                                <asp:Image ID="Squiggle2" runat="server" Imageurl="../Pictures/squiggle.png"  Width ="100px" Height ="100px"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td style="text-align:center">
                                <a href="RoughingMill.aspx">
                                    <asp:Image ID="RounghingMillPulpit" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width ="100px" Height ="100px" ToolTip="Roughing Mill Pulpit"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td style="text-align:center">
                                <asp:Label ID="RMPulpitLabel" runat="server" Text="Roughing Mill Pulpit" Font-Bold="True" Font-Overline="False" Font-Underline="True"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1">
                    <table style="position: static; top: 63px; left: 0px;">
                        <tr>
                            <td style="text-align:center; vertical-align:bottom" class="auto-style17">
                                <asp:Label ID="HaciendaLabel" runat="server" Text="Roughing Mill Hacienda" Font-Bold="True" Font-Overline="False" Font-Underline="True"></asp:Label> 
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <a href ="RoughingMillHacienda.aspx">
                                    <asp:Image ID="Hacienda" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width="60px" Height="60px" ToolTip="Hacienda"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center; vertical-align:bottom">
                                <asp:Label ID="F1F7Label" runat="server" Text="F1-F7" Font-Size ="Large" Font-Bold ="true"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="F1F7" runat="server" Imageurl="../Pictures/fixedF1-F7.png" Height ="100px" Width ="200px"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <a href ="FinishingMill.aspx">
                                    <asp:Image ID="FMPulpit" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width="100px" Height="100px" ToolTip="Finishing Mill Pulpit"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <asp:Label ID="FMPulpitLabel" runat="server" Text="Finishing Mill Pulpit" Font-Bold="True" Font-Overline="False" Font-Underline="True"></asp:Label>  
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <a href ="ComputerRoom.aspx">
                                    <asp:Image ID="FMPulpit0" runat="server" Imageurl="../Pictures/(fixed)straighttv.png" Width="100px" Height="100px" ToolTip="Computer Room"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <asp:Label ID="FMPulpitLabel0" runat="server" Text="Computer Room" Font-Bold="True" Font-Underline="True"></asp:Label>  
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td class="auto-style16" style="vertical-align:bottom; text-align:center">
                                <asp:Label ID="ElectricalLabel" runat="server" Text="Electrical" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center"> 
                                <a href ="Electrical.aspx">
                                    <asp:Image ID="Electrical" runat="server" Imageurl="../Pictures/Electrical.png" Width ="60px" Height ="60px" ToolTip="Electrical"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td style = "text-align:center; vertical-align:bottom">
                                <asp:Label ID="ROTLabel" runat="server" Text="Run Out Table" Font-Size ="Large" Font-Bold="true"></asp:Label>
                            </td>
                            <td style = "text-align:center; vertical-align:bottom">
                                <asp:Label ID="C1C3Label" runat="server" Text="C1-C3" Font-Size ="X-Large" Font-Bold="true"  ></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="ROT" runat="server" Imageurl="../Pictures/fixedrunofftable.png" Width ="200px" Height ="100px" style="margin-top: 0px" />
                            </td>
                            <td>
                                <asp:Image ID="C1C3" runat="server" Imageurl="../Pictures/fixedc1c3.png" Width="150px" Height ="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <asp:Image ID="LineBend" runat="server" Imageurl="../Pictures/fixedlinebend.png" width ="150px" Height="100px" style="margin-top: 8px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <a href ="ForemansOffice.aspx">
                                    <asp:Image ID="ForemanOffice" runat="server" Imageurl="../Pictures/(fixed)pulpit2.png" Width="100px" Height="100px" ToolTip="Foreman's Office"/>
                                </a>
                            </td>
                            <td style="text-align:center">
                                <a href ="Coiler.aspx">
                                    <asp:Image ID="CoilerPulpit" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width="100px" Height="100px" ToolTip="Coiler Pulpit" />
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td style ="text-align:center">
                                <asp:Label ID="ForemanOfficeLabel" runat="server" Text="Foreman's Office" Font-Bold="True" Font-Underline="True"></asp:Label>
                            </td>
                            <td style="text-align:center">
                                <asp:Label ID="CoilerPulpitLabel" runat="server" Text="Coiler Pulpit" Font-Bold="True" Font-Underline="True"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td style="text-align:center; vertical-align:bottom" class="auto-style7">
                                <asp:Label ID="CheckerShannyLabel" runat="server" Text="Checker Shanny" Font-Bold="True" Font-Underline="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <a href ="CheckerShanny.aspx">
                                    <asp:Image ID="CheckerShannyy" runat="server" Imageurl="../Pictures/(fixed)pulpit2.png" Width ="60px" Height ="60px" ToolTip="Checker Shanny"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12" style="text-align:center; vertical-align:bottom">
                                <asp:Label ID="BanderLabel" runat="server" Text="Bander Shop" Font-Bold="True" Font-Underline="True"></asp:Label>
                            </td>
                            <td style ="text-align:center; vertical-align:bottom" class="auto-style12">
                                <asp:Label ID="RobotLabel" runat="server" Text="Robot" Font-Bold="True" Font-Underline="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13" style="text-align:center">
                                <a href="BanderShop.aspx">
                                    <asp:Image ID="BanderShop" runat="server" Imageurl="../Pictures/pulpit1.jpg" Height="60" Width="60" ToolTip="Bander Shop" />
                                </a>
                            </td>
                            <td style="vertical-align:top; text-align:center" class="auto-style13">
                                <asp:ImageButton ID="Robot" runat="server" Imageurl="../Pictures/fixedterminatorhead.png" OnClick ="Robot_Click" Width ="60px" Height="60px" ToolTip="Robot" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Image ID="millline3" runat="server" Imageurl="../Pictures/fixedstarter.png" height ="50px" Width="150px" />
                            </td>
                            <td class="auto-style14">
                                <asp:Image ID="finalsquiggle" runat="server" Imageurl="../Pictures/squiggleWMC.png" Width ="100px" Height="40px" />
                            </td>
                        </tr>
                        <tr style="width:150px">
                            <td style="width:150px; text-align:center">
                                <a href ="Weighmans.aspx">
                                    <asp:Image ID="WeighmansPulpit" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width ="90px" Height ="90px" ToolTip="Weighman's Pulpit" />
                                </a>
                            </td>
                            <td style="width:150px" align ="right">
                                <asp:Image ID="Image1" runat="server" Imageurl="../Pictures/ColdMillArrow.png" Width ="90px" Height ="90px" ToolTip="Weighman's Pulpit" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <asp:Label ID="WeighmansPulpitLabel" runat="server" Text="Weighman's Pulpit" Font-Bold="True" Font-Underline="True"></asp:Label>
                            </td>
                            <td style="text-align:center">
                                <asp:Label ID="Label2" runat="server" Text="To Cold Mill"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="CompNameLabel" runat="server" Text="Computer Name:" ></asp:Label>
                                <asp:Label ID="ActualCompName" runat="server" Text="Click on Robot" Font-Bold="True"></asp:Label>
                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging1" Width="371px">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <Fields>
                                        <asp:BoundField DataField="IPAddress4" HeaderText="IP Address:" SortExpression="IPAddress4" NullDisplayText="N/A" />
                                        <asp:BoundField DataField="description" HeaderText="Description:" SortExpression="description" NullDisplayText="N/A" />
                                        <asp:BoundField DataField="runApp" HeaderText="Running on this Computer:" NullDisplayText="N/A" SortExpression="runApp" />
                                        <asp:BoundField DataField="network" HeaderText="Network:" SortExpression="network" NullDisplayText="N/A" />
                                        <asp:BoundField DataField="computerType" HeaderText="Type of Computer:" NullDisplayText="N/A" />
                                        <asp:BoundField DataField="terminalServer" HeaderText="Terminal Server:" NullDisplayText="N/A" />
                                    </Fields>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                </asp:DetailsView>
                            </td>
                            <td class="auto-style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Image ID="finalmilline" runat="server" Imageurl="../Pictures/fixedstarter.png" width ="100px" height ="45px"/>
                            </td>
                            <td class="auto-style3">
                                <a href="ShippingOverview.aspx">
                                    <asp:Image ID="Shipping" runat="server" Imageurl="~/Pictures/cold-rolled-coil-field-755X425.jpg" Width ="100px" Height ="100px" ToolTip="Shipping"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <a href ="Conveyer.aspx">
                                    <asp:Image ID="ConveyerPulpit" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width ="100px" Height ="100px" ToolTip="Conveyer Pulpit"/>
                                </a>
                            </td>
                            <td class="auto-style18">
                                <strong>To Shipping</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="ConveyerPulpitLabel" runat="server" Text="Conveyer Pulpit" Font-Bold="True" Font-Underline="True"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
    </div>
</asp:Content>
