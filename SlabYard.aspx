<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SlabYard.aspx.cs" Inherits="ProcessAutomation.Pulpits.SlabYard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
            <asp:Label ID="PageHeader" runat="server" Text="Slab Yard" Font-Size="XX-Large" Font-Bold="true"> </asp:Label>
        </div>
        <div style="text-align:center">
            <a href ="MillOverview.aspx"> Go Back to Overview </a>
        </div>
        <div align="center">
            <table cellspacing ="10">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="CompNameLabel0" runat="server" Text="Click for Crane & Mobile Devices"></asp:Label>
                        &nbsp;&nbsp; 
                        <a href="SlabYardMobile.aspx">
                            <asp:Image ID="SlabYardMobile" runat="server" Height="87px" Imageurl="../Pictures/blank tablet.jpg" ToolTip="Slab Yard Mobile" Width="97px" />
                        </a>
                        <br />
                        <br />
                        <asp:Label ID="CompNameLabel1" runat="server" Text="Click for Office Devices"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="SlabYardOffice.aspx">
                            <asp:Image ID="SlabYardOffice" runat="server" Height="87px" Imageurl="../Pictures/Office.png" ToolTip="Slab Yard Office" Width="97px" />
                        </a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style8">
                        <table>
                            <tr>
                                <td class="auto-style9">
                                    <asp:ImageButton ID="SYVID02_1" runat="server" Imageurl="../Pictures/(fixed)BHW-HSMHMI-FR02.png" Height ="150px" OnClick="SYVID02_Click" ToolTip="BHW-HSM-SYVID02" Width="200px" BorderColor="#FF3300"/>
                                </td>
                                <td>
                                    <asp:ImageButton ID="WS1028_1" runat="server" Imageurl="../Pictures/ITComputer.png" Height ="100px" OnClick="WS1028_Click" ToolTip="BHW-WS1028" Width="140px" BorderColor="#FF3300"/>
                                </td>
                                <td class="auto-style28">
                                    <asp:ImageButton ID="SYVID02_2" runat="server" Imageurl="../Pictures/(fixed)BHW-HSMHMI-FR02.png" Height ="150px" OnClick="SYVID02_Click" ToolTip="BHW-HSM-SYVID02" Width="200px" BorderColor="#FF3300"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="auto-style10">
                                    <asp:ImageButton ID="WS1028_2" runat="server" Imageurl="../Pictures/ITComputer.png" Height ="100px" OnClick="WS1028_Click" ToolTip="BHW-WS1028" Width="140px" BorderColor="#FF3300"/>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                                    <asp:ImageButton ID="SYVID02_3" runat="server" Imageurl="../Pictures/(fixed)BHW-HSMHMI-FR02.png" Height ="150px" OnClick="SYVID02_Click" ToolTip="BHW-HSM-SYVID02" Width="200px" BorderColor="#FF3300"/>
                                </td>
                                <td class="auto-style10" align="center">
                                    <asp:ImageButton ID="STSSUPER1" runat="server" Imageurl="../Pictures/SUPER.png" Height ="90px" OnClick="STSSUPER1_Click" ToolTip="BHW-STSSUPER1" Width="125px" BorderColor="#FF3300"/>
                                </td>
                                <td class="auto-style28">
                                    <asp:ImageButton ID="SYVID02_4" runat="server" Imageurl="../Pictures/(fixed)BHW-HSMHMI-FR02.png" Height ="150px" OnClick="SYVID02_Click" ToolTip="BHW-HSM-SYVID02" Width="200px" BorderColor="#FF3300"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td class="auto-style6" style="text-align:center">
                        <asp:Label ID="Label3" runat="server" Text="Slab Yard Operator" ></asp:Label>
                        <br />
                        <asp:Image ID="Desk1" runat="server" src ="../Pictures/(fixed)chairfaceup.png" Height ="151px" ToolTip="Charger Operator" Width="182px"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td class="auto-style5" >
                        <table rules="none" style="width: 406px">
                            <tr>
                                <td style="text-align:right" class="auto-style27">
                                    <asp:Label ID="Label2" runat="server" Text="Computer Name:" ></asp:Label>
                                    <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
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
                                <td class="auto-style5">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style25">
                                    <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="195px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="130px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style25">
                                    <asp:TextBox ID="CompAddressLabel" runat="server" Text ="Computer Address:" width ="194px" style="margin-left: 0px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="ActualCompAddress" runat="server" Text="?" width ="130px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style27">
                                    <asp:TextBox ID="IPAddressLabel" runat="server" Text ="IP Address:" width ="195px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td  class="auto-style10">
                                    <asp:TextBox ID="ActualIPAddress" runat="server" Text="?" width ="130px " style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style25">
                                    <asp:TextBox ID="CompTypeLabel" runat="server" Text ="Type of Computer:" width ="192px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="ActualCompType" runat="server" Text="?" width ="130px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right; vertical-align:top" class="auto-style27">
                                    <asp:TextBox ID="CompRunningLabel" runat="server" Text ="Running on this Computer:" width ="193px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td style="vertical-align:top" class="auto-style4">
                                    <textarea rows="4" cols="10" runat ="server" id ="ActualCompRunning" style="margin-left: 12px; width:130px" name="S1" readonly="readonly" >?</textarea>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
