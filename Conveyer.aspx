<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Conveyer.aspx.cs" Inherits="ProcessAutomation.Pulpits.Conveyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style29 {
            width: 4px;
            height: 165px;
        }
        .auto-style30 {
            width: 250px;
            height: 165px;
        }
        .auto-style28 {
            width: 101px;
            height: 101px;
        }
        .auto-style10 {
            width: 112px;
        }
        .auto-style31 {
            width: 283px;
        }
        .auto-style33 {
            width: 283px;
            height: 101px;
        }
        .auto-style34 {
            width: 4px;
        }
        .auto-style1 {
            width: 266px;
        }
        .auto-style2 {
            width: 27px;
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.IBAUser FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
            <SelectParameters>
                <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Conveyer Pulpit" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="MillOverview.aspx">Go Back to Overview</a>
    </div>
    <div align="center">
        <table>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td style="width:200px" align="right">
                                &nbsp;
                            </td>
                            <td>
                                <asp:ImageButton ID="HSMHMICV01B" runat="server" Imageurl="../Pictures/HMICV01B.png" Width ="112px" OnClick="HSMHMICV01_Click" Height ="82px" ToolTip="BHW-HSMHMI-CV01" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td style="width:250px">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width:200px" align="right">
                                &nbsp;</td>
                            <td>
                                <asp:ImageButton ID="HMTCCV01A" runat="server" Imageurl="../Pictures/HMTCCV01.png" Width ="114px" OnClick="HMTCCV01_Click" Height ="82px" ToolTip="HMTC-CV01" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="HMTCCV01B" runat="server" Imageurl="../Pictures/HMTCCV01B.png" Width ="114px" OnClick="HMTCCV01_Click" Height ="82px" ToolTip="HMTC-CV01" BorderColor="#FF3300"/>
                            </td>
                            <td style="width:250px"></td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td align="center">
                                <asp:ImageButton ID="Camera2" runat="server" Imageurl="../Pictures/CoilCamleft.png" Width ="114px" OnClick="Camera_Click" Height ="107px" ImageAlign="Top" ToolTip="Camera" BorderColor="#FF3300" />
                            </td>
                            <td class="auto-style30">
                                <table style="width: 431px; height: 196px; margin-top: 0px; position: inherit; top: -39px; left: 2px;">
                                    <tr>
                                        <td class="auto-style33">
                                            <asp:Image ID="CoilerDesk1" runat="server" Height="75px" Imageurl="../Pictures/ControlDesk.jpg" Width="279px" />
                                        </td>
                                        <td class="auto-style28">
                                        <asp:ImageButton ID="Camera1" runat="server" Imageurl="../Pictures/ConvCamright.png" Width ="114px" OnClick="Camera_Click" Height ="107px" ToolTip="Camera"  BorderColor="#FF3300"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style31" align="center">
                                            <asp:Image ID="CoilerChair1" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Height ="75px" ToolTip="Conveyor Operator" Width="98px"/>
                                            <br />
                                            <asp:Label ID="Label4" runat="server" Text="Conveyer Operator" ></asp:Label>
                                        </td>
                                        <td class="auto-style10">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="auto-style29">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="width: 255px">
                        <tr>
                            <td>
                                <asp:ImageButton ID="HSMHMICV01A" runat="server" Imageurl="../Pictures/HMICV01A.png" Width ="123px" OnClick="HSMHMICV01_Click" Height ="102px" ToolTip="BHW-HSMHMI-CV01" BorderColor="#FF3300" />
                            </td>
                            <td class="auto-style34">
                                &nbsp;
                            </td>
                            <td class="auto-style34">
                                <table style="width: 340px; position: absolute;">
                                    <tr>
                                        <td style="text-align:right" class="auto-style1">
                                            <asp:Label ID="Label6" runat="server" Text="Computer Name:" ></asp:Label>
                                            <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td style="text-align:left" class="auto-style2">
                                        &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right" class="auto-style1">
                                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging1" Width="333px">
                                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                                <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                                <Fields>
                                                    <asp:BoundField DataField="IPAddress4" HeaderText="IP Address:" SortExpression="IPAddress4" />
                                                    <asp:BoundField DataField="description" HeaderText="Description:" SortExpression="description" />
                                                    <asp:BoundField DataField="runApp" HeaderText="Running on this Computer:" NullDisplayText="N/A" SortExpression="runApp" />
                                                    <asp:BoundField DataField="network" HeaderText="Network:" SortExpression="network" />
                                                    <asp:BoundField DataField="computerType" HeaderText="Type of Computer:" NullDisplayText="N/A" ReadOnly="True" SortExpression="computerType" />
                                                    <asp:BoundField DataField="terminalServer" HeaderText="Terminal Server:" NullDisplayText="N/A" SortExpression="terminalServer" />
                                                    <asp:BoundField DataField="IBAUser" HeaderText="IBA User:" NullDisplayText="N/A" SortExpression="IBA User" />
                                                </Fields>
                                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                            </asp:DetailsView>
                                        </td>
                                        <td style="text-align:left" class="auto-style2">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="WS0209" runat="server" Imageurl="../Pictures/ITComputerright.png" Width ="130px" OnClick="WS0209_Click" Height ="95px" ToolTip="BHW-WS0209" BorderColor="#FF3300"/>
                            </td>
                            <td class="auto-style34">
                                <asp:ImageButton ID="Operator" runat="server" Imageurl="../Pictures/(fixed)chairfaceleft.png" Width="100px" Height ="100px" />
                            </td>
                            <td class="auto-style34">
                                <table>
                                    <tr>
                                        <td style="text-align:right">
                                            <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="160px" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td style="text-align:left">
                                            <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="150px" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">
                                            <asp:TextBox ID="CompAddressLabel" runat="server" Text ="Computer Address:" width ="160px"></asp:TextBox>
                                        </td>
                                        <td style="text-align:left">
                                            <asp:TextBox ID="ActualCompAddress" runat="server" Text="?" width ="150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                       <td style="text-align:right">
                                            <asp:TextBox ID="IPAddressLabel" runat="server" Text ="IP Address:" width ="160px"></asp:TextBox>
                                        </td>
                                        <td style="text-align:left">
                                            <asp:TextBox ID="ActualIPAddress" runat="server" Text="?" width ="150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">
                                            <asp:TextBox ID="CompTypeLabel" runat="server" Text ="Type of Computer:" width ="160px"></asp:TextBox>
                                        </td>
                                        <td style="text-align:left">
                                            <asp:TextBox ID="ActualCompType" runat="server" Text="?" width ="150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                         <td style="text-align:right; vertical-align:top">
                                             <asp:TextBox ID="CompRunningLabel" runat="server" Text ="Running on this Computer:" width ="160px"></asp:TextBox>
                                         </td>
                                         <td style="text-align:right">
                                            <textarea rows="4" cols="10" runat ="server" id ="ActualCompRunning" style="width:150px" name="S1">?</textarea>
                                         </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
