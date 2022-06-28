<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShippingIncentives.aspx.cs" Inherits="ProcessAutomation.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 582px;
            width: 1220px;
        }
        #slab_yard_table
        {
            height: 580px;
        }
        .auto-style8 {
            width: 466px;
            height: 85px;
        }
        .auto-style9 {
            width: 514px;
            height: 85px;
        }
        .auto-style10 {
            width: 1493px;
            height: 85px;
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
        <asp:Label ID="OverviewTitle" runat="server" Text="Incentives and Shipping" Font-Bold="true" Font-Size ="XX-Large"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="MillOverview.aspx">Go Back to Overview</a>
    </div>
        <div style="text-align:center">
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" SelectCommand="dbo.SignProc" SelectCommandType="StoredProcedure" ConnectionString="<%$ ConnectionStrings:signconnectionString %>" OnSelecting="SqlDataSource1_Selecting">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" SelectCommand="dbo.SignProc2" SelectCommandType="StoredProcedure" ConnectionString="<%$ ConnectionStrings:signconnectionString %>" OnSelecting="SqlDataSource1_Selecting">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="dbo.SignProc3" SelectCommandType="StoredProcedure" ConnectionString="<%$ ConnectionStrings:signconnectionString %>" OnSelecting="SqlDataSource1_Selecting">
            </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size ="X-Large"></asp:Label>
        </div>

     <div style="margin-top: 0px">
        <table id ="shipping-data">
            <tr>
                <td class="auto-style1">
                    <table id="shipping-table3">
                        <tr>
                            <td class ="auto-style10">
                            </td>
                            <td class ="auto-style9">
                                <asp:Label ID="ActualCompName" runat="server" Text="#4 Shipping" Font-Bold="True"></asp:Label>
                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" GridLines="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource4" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging1" Width="550px">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
                                    <Fields>
                                        <asp:BoundField DataField="value1" HeaderText="Number of Coils Packed:" SortExpression="value1" NullDisplayText="N/A" HeaderStyle-Font-Size="X-Large" ItemStyle-Font-Size="X-Large" ControlStyle-Font-Size="X-Large" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Left" FooterStyle-HorizontalAlign="Right" />
                                    </Fields>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center"/>
                                    <HeaderStyle BackColor="000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFFFF" ForeColor="Black" HorizontalAlign="Center"/>
                                </asp:DetailsView>
                            </td>
                            <td class="auto-style8">
                            </td>
                         </tr>
                         <tr>
                            <td class ="auto-style10">
                            </td>
                            <td class ="auto-style9">
                                <asp:Label ID="Label2" runat="server" Text="Incentive Information" Font-Bold="True"></asp:Label>
                                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" GridLines="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource4" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging1" Width="550px">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <Fields>
                                        <asp:BoundField DataField="value3" HeaderText="#4 Shipping Incentive Level ( 0 - 5 ):" SortExpression="value3" NullDisplayText="N/A" HeaderStyle-Font-Size="X-Large" ItemStyle-Font-Size="X-Large" ControlStyle-Font-Size="X-Large" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Left"/>
                                    </Fields>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFFFF" ForeColor="Black" />
                                </asp:DetailsView>
                            </td>
                            <td class="auto-style8">
                            </td> 
                         </tr>
                        <tr>
                            <td class ="auto-style10">
                            </td>
                            <td class ="auto-style9">
                                <asp:Label ID="Label3" runat="server" Text="Coil Calculations" Font-Bold="True"></asp:Label>
                                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" GridLines="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource4" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging1" Width="550px">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <Fields>
                                        <asp:BoundField DataField="value2" HeaderText="Coils Needed For Next Incentive Level:" SortExpression="value2" NullDisplayText="N/A" HeaderStyle-Font-Size="X-Large" ItemStyle-Font-Size="X-Large" ControlStyle-Font-Size="X-Large" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Left"/>
                                    </Fields>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFFFF" ForeColor="Black" />
                                </asp:DetailsView>
                            </td>
                            <td class="auto-style8">
                            </td> 
                         </tr>
                        <tr>
                            <td class ="auto-style10">
                            </td>
                            <td class="auto-style19">
                                <asp:Label ID="Label4" runat="server" Text="Historical Packing Data" Font-Bold="True"></asp:Label>
                                <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" GridLines="None" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging1" Width="550px">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <Fields>
                                        <asp:BoundField DataField="month" HeaderText="In the Last Month:" SortExpression="inthelastmonth" HeaderStyle-Font-Size="Larger" ItemStyle-Font-Size="Larger"/>
                                        <asp:BoundField DataField="day7" HeaderText="7 Days Ago:" SortExpression="1weekago" HeaderStyle-Font-Size="Larger" ItemStyle-Font-Size="Larger"/>
                                        <asp:BoundField DataField="day6" HeaderText="6 Days Ago:" SortExpression="6daysago" HeaderStyle-Font-Size="Larger" ItemStyle-Font-Size="Larger"/>
                                        <asp:BoundField DataField="day5" HeaderText="6 Days Ago:" SortExpression="5daysago" HeaderStyle-Font-Size="Larger" ItemStyle-Font-Size="Larger"/>
                                        <asp:BoundField DataField="day4" HeaderText="4 Days Ago:" SortExpression="4daysago" HeaderStyle-Font-Size="Larger" ItemStyle-Font-Size="Larger"/>
                                        <asp:BoundField DataField="day3" HeaderText="3 Days Ago:" SortExpression="3daysago" HeaderStyle-Font-Size="Larger" ItemStyle-Font-Size="Larger"/>
                                        <asp:BoundField DataField="day2" HeaderText="2 Days Ago:" SortExpression="2daysago" HeaderStyle-Font-Size="Larger" ItemStyle-Font-Size="Larger"/>
                                        <asp:BoundField DataField="day1" HeaderText="Yesterday:" SortExpression="yesterday" HeaderStyle-Font-Size="Larger" ItemStyle-Font-Size="Larger"/>
                                        <asp:BoundField DataField="average" HeaderText="Weeklong Running Average:" SortExpression="avg" HeaderStyle-Font-Size="Larger" ItemStyle-Font-Size="Larger"/>
                                    </Fields>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFFFF" ForeColor="Black" />
                                </asp:DetailsView>
                            </td>
                            <td class="auto-style5">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td class ="auto-style10">
                            </td>
                            <td class="auto-style19">
                                <asp:Chart ID="Chart1" runat="server" DataSourceID="SQLDataSource1" Width="550px">
                                <series>  
                                    <asp:Series Name="Series1" ChartType="Line" XValueMember="wack" YValueMembers="weekly">  
                                </asp:Series>  
                                </series>
                                <chartareas>  
                                    <asp:ChartArea Name="ChartArea1">  
                                </asp:ChartArea>  
                                </chartareas> 
                                </asp:Chart> 
                                </td>
                            <td class="auto-style5">
                                &nbsp;
                            </td>
                        </tr>
                        </table>
                    </td>
                </tr>
            </table>
         </div>
</asp:Content>
