<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SlabYardMobile.aspx.cs" Inherits="ProcessAutomation.Pulpits.SlabYardMobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1
        {
            width: 133px;
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
    <div align="center">        
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ActualCompName" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="PageHeader" runat="server" Text="Slab Yard Crane & Mobile" Font-Size="XX-Large" Font-Bold="true"> </asp:Label>
        </div>
        <div style="text-align:center">
            <a href ="SlabYard.aspx"> Go Back to SlabYard Overview </a>
        </div>
        <table cellspacing ="10">
            <tr>
                <td>
                    <table style="font-size:x-large">
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
                            <td style="text-align:center">
                                Mobile
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
                            <td>
                                <asp:ImageButton ID="Mobile_01" runat="server" Imageurl="../Pictures/Mobile.png" Height ="150px" OnClick="Mobile1_Click" ToolTip="Mobile_01" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="Mobile_02" runat="server" Imageurl="../Pictures/Mobile.png" Height ="150px" OnClick="Mobile2_Click" ToolTip="Mobile_02" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="Mobile_03" runat="server" Imageurl="../Pictures/Mobile.png" Height ="150px" OnClick="Mobile3_Click" ToolTip="Mobile_03" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="Mobile_04" runat="server" Imageurl="../Pictures/Mobile.png" Height ="150px" OnClick="Mobile4_Click" ToolTip="Mobile_04" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="Mobile_05" runat="server" Imageurl="../Pictures/Mobile.png" Height ="150px" OnClick="Mobile5_Click" ToolTip="Mobile_05" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="Mobile_06" runat="server" Imageurl="../Pictures/Mobile.png" Height ="150px" OnClick="Mobile6_Click" ToolTip="Mobile_06" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="Mobile_07" runat="server" Imageurl="../Pictures/Mobile.png" Height ="150px" OnClick="Mobile7_Click" ToolTip="Mobile_07" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="Mobile_08" runat="server" Imageurl="../Pictures/Mobile.png" Height ="150px" OnClick="Mobile8_Click" ToolTip="Mobile_08" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="Mobile_09" runat="server" Imageurl="../Pictures/Mobile.png" Height ="150px" OnClick="Mobile9_Click" ToolTip="Mobile_09" Width="100px" BorderColor="#FF3300"/>
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
                            <td style="text-align:center">
                                Cranes
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
                            <td>
                                <asp:ImageButton ID="CLIENT409" runat="server" Imageurl="../Pictures/Crane.png" Height ="150px" OnClick="Crane1_Click" ToolTip="CLIENT409" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td align="center">
                                <asp:ImageButton ID="CLIENT412" runat="server" Imageurl="../Pictures/Crane.png" Height ="150px" OnClick="Crane2_Click" ToolTip="CLIENT412" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="CLIENT413" runat="server" Imageurl="../Pictures/Crane.png" Height ="150px" OnClick="Crane3_Click" ToolTip="CLIENT413" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="CLIENT418" runat="server" Imageurl="../Pictures/Crane.png" Height ="150px" OnClick="Crane4_Click" ToolTip="CLIENT418" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="CLIENT501" runat="server" Imageurl="../Pictures/Crane.png" Height ="150px" OnClick="Crane5_Click" ToolTip="CLIENT501" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="CLIENT502" runat="server" Imageurl="../Pictures/Crane.png" Height ="150px" OnClick="Crane6_Click" ToolTip="CLIENT502" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="CLIENT504" runat="server" Imageurl="../Pictures/Crane.png" Height ="150px" OnClick="Crane7_Click" ToolTip="CLIENT504" Width="100px" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="CLIENT505" runat="server" Imageurl="../Pictures/Crane.png" Height ="150px" OnClick="Crane8_Click" ToolTip="CLIENT505" Width="100px" BorderColor="#FF3300"/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div align="center">
        <table rules="none" style="width: 406px">
            <tr>
                <td style="text-align:right" class="auto-style27">
                    <asp:Label ID="Label2" runat="server" Text="Computer Name:" ></asp:Label>
                    <asp:Label ID="ActualCompName" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align:right" class="auto-style27">
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
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>