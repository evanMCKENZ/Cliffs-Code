<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SlabYardOffice.aspx.cs" Inherits="ProcessAutomation.Pulpits.SlabYardOffice" %>
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
    <div>        
        <div style="text-align:center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ActualCompName" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="PageHeader" runat="server" Text="Slab Yard Office" Font-Size="XX-Large" Font-Bold="true"> </asp:Label>
        </div>
        <div style="text-align:center">
            <a href ="SlabYard.aspx"> Go Back to SlabYard Overview </a>
        </div>
        <div align="center">
            <table style="font-size:x-large">
                <tr>
                    <td>
                        <asp:ImageButton ID="STSSUPER02" runat="server" Imageurl="../Pictures/Super.png" Height ="150px" OnClick="STSSUPER02_Click" ToolTip="BHW-STSSUPER02" Width="150px" BorderColor="#FF3300"/>
                    </td>
                    <td>
                        <asp:ImageButton ID="STSSUPER03" runat="server" Imageurl="../Pictures/Super.png" Height ="150px" OnClick="STSSUPER03_Click" ToolTip="BHW-STSSUPER03" Width="150px" BorderColor="#FF3300"/>
                    </td>
                    <td>
                        <asp:ImageButton ID="STSSUPER05" runat="server" Imageurl="../Pictures/Super.png" Height ="150px" OnClick="STSSUPER05_Click" ToolTip="BHW-STSSUPER05" Width="150px" BorderColor="#FF3300"/>
                    </td>
                    <td>
                        <asp:ImageButton ID="STSSUPER06" runat="server" Imageurl="../Pictures/Super.png" Height ="150px" OnClick="STSSUPER06_Click" ToolTip="BHW-STSSUPER06" Width="150px" BorderColor="#FF3300"/>
                    </td>
                </tr>
            </table>
        </div>
        <div style="text-align:center">
            <table rules="none" style="width: 406px">
                <tr>
                    <td style="text-align:right" class="auto-style27">
                        <asp:Label ID="Label2" runat="server" Text="Computer Name:" ></asp:Label>
                        <asp:Label ID="ActualCompName" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="text-align:left" class="auto-style5">
                        &nbsp;
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
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
