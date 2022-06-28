<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HSMR2CAM.aspx.cs" Inherits="ProcessAutomation.Pulpits.HSMR2CAM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1
        {
            width: 600px;
            height: 19px;
        }
        .auto-style2
        {
            height: 19px;
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
                    <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="PageHeader" runat="server" Text="BHW-HSM-R2CAM" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
        </div>
        <div style ="text-align:center">
            <a href ="MillOverview.aspx">Go Back to Overview</a>
        </div>
    </div>
    <div style="text-align:center">
        <table rules="none" style="width: 406px">
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="text-align:right" class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Computer Name:" ></asp:Label>
                    <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
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
                <td class="auto-style5">
                    &nbsp;
                </td>
                <td>
                    <asp:ImageButton ID="HSMR02CAM" runat="server" Imageurl="../Pictures/BHW-HSM-R2CAM.png" Height ="200px" ToolTip="BHW-HSM-R2CAM" Width="300px" OnClick="HSMR2CAM_Click" BorderColor="#FF3300"/>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="text-align:right" class="auto-style25">
                    <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="195px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="130px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="text-align:right" class="auto-style25">
                    <asp:TextBox ID="CompAddressLabel" runat="server" Text ="Computer Address:" width ="194px" style="margin-left: 0px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="ActualCompAddress" runat="server" Text="?" width ="130px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="text-align:right" class="auto-style27">
                    <asp:TextBox ID="IPAddressLabel" runat="server" Text ="IP Address:" width ="195px" ReadOnly="True"></asp:TextBox>
                </td>
                <td  class="auto-style10">
                    <asp:TextBox ID="ActualIPAddress" runat="server" Text="?" width ="130px " style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="text-align:right" class="auto-style25">
                    <asp:TextBox ID="CompTypeLabel" runat="server" Text ="Type of Computer:" width ="192px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="ActualCompType" runat="server" Text="?" width ="130px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="text-align:right; vertical-align:top" class="auto-style27">
                    <asp:TextBox ID="CompRunningLabel" runat="server" Text ="Running on this Computer:" width ="193px" ReadOnly="True"></asp:TextBox>
                </td>
                <td style="vertical-align:top" class="auto-style4">
                    <textarea rows="4" cols="10" runat ="server" id ="ActualCompRunning" style="margin-left: 12px; width:130px" name="S1" readonly="readonly" >?</textarea>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
