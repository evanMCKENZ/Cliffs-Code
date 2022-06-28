<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShippingOverview.aspx.cs" Inherits="ProcessAutomation.Pulpits.ShippingOverview" %>
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
            font-weight: bold;
            text-decoration: underline;
        }
        .auto-style18 {
            height: 63px;
            font-weight: bold;
            text-decoration: underline;
        }
        .auto-style19 {
            font-weight: bold;
            text-decoration: underline;
        }
        .auto-style20 {
            height: 71px;
        }
        .auto-style21 {
            height: 109px;
        }
        .auto-style22 {
            height: 109px;
            font-weight: bold;
            text-decoration: underline;
        }
        .auto-style23 {
            height: 74px;
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
                                <span class="auto-style19">To Proper</span><br />
                                <br />
                                <a href="MillOverview.aspx">
                                    <asp:Image ID="Proper" runat="server" Imageurl="~/Pictures/HSM-redhot-original.jpg" Width ="100px" Height ="100px" ToolTip="Proper"/>
                                </a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1">
                    <table id ="hot_mill_table">
                        <tr>
                            <td style="text-align:center; vertical-align:bottom; height:42px">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td style="text-align:center; vertical-align:bottom; height:42px">
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td style="vertical-align:top; text-align:center">  
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <table cellspacing ="15">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td style="text-align:center">
                                            &nbsp;</td>
                                        <td style="width:100px">
                                            &nbsp;
                                        </td>
                                        <td style="text-align:center">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                        <td class="auto-style4">

                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
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
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center; vertical-align:bottom">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td style="text-align:center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style21">
                                &nbsp;
                            </td>
                            <td style="text-align:center" class="auto-style22">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1">
                    <table style="position: static; top: 63px; left: 0px;">
                        <tr>
                            <td style="text-align:center; vertical-align:bottom" class="auto-style17">
                                Shipping4</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <a href ="Shipping4.aspx">
                                    <asp:Image ID="Shipping4" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width="60px" Height="60px" ToolTip="Shipping4"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center; vertical-align:bottom">
                                <a href="ShippingOffice.aspx">
                                    <asp:Image ID="ShippingOffice" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width ="100px" Height ="100px" ToolTip="Roughing Mill Pulpit"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <strong>Coordinator Office</strong></td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center" class="auto-style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td class="auto-style16" style="vertical-align:bottom; text-align:center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"> 
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style = "text-align:center; vertical-align:bottom">
                                &nbsp;</td>
                            <td style = "text-align:center; vertical-align:bottom">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                &nbsp;</td>
                            <td style="text-align:center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style ="text-align:center">
                                &nbsp;</td>
                            <td style="text-align:center">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td style="text-align:center; vertical-align:bottom" class="auto-style7">
                                &nbsp;
                                <a href="ShippingIncentives.aspx">
                                    <asp:Image ID="SignOne" runat="server" Imageurl="../Pictures/marqueesign.png" Height="60" Width="60" ToolTip="ShippingInc" />
                                </a>
                                <br />
                                Click the Sign for Incentive Statistics</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <a href="Shipping1.aspx">
                                    <asp:Image ID="Shipping1" runat="server" Imageurl="../Pictures/pulpit1.jpg" Height="60" Width="60" ToolTip="Shipping1" />
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18" style="text-align:center; vertical-align:bottom">
                                Shipping1</td>
                            <td style ="text-align:center; vertical-align:bottom" class="auto-style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style13" style="text-align:center">
                                <a href ="managerOffice.aspx">
                                    <asp:Image ID="managerOffice" runat="server" Imageurl="../Pictures/pulpit1.jpg" Width="100px" Height="100px" ToolTip="Finishing Mill Pulpit"/>
                                </a>
                            </td>
                            <td style="vertical-align:top; text-align:center" class="auto-style13">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style23">
                                <strong>Foreman&#39;s Office</strong></td>
                            <td class="auto-style14">
                                &nbsp;</td>
                        </tr>
                        <tr style="width:150px">
                            <td style="width:150px; text-align:center">
                                &nbsp;</td>
                            <td style="width:150px" align ="right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                &nbsp;</td>
                            <td style="text-align:center">
                                &nbsp;</td>
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
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
    </div>
</asp:Content>
