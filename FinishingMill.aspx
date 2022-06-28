<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FinishingMill.aspx.cs" Inherits="ProcessAutomation.Pulpits.FinishingMill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 137px;
        }
        .auto-style3 {
            width: 137px;
            height: 69px;
        }
        .auto-style4 {
            width: 138px;
        }
        .auto-style5 {
            width: 138px;
            height: 50px;
        }
        .auto-style7 {
            width: 318px;
            height: 50px;
        }
        .auto-style10 {
            width: 139px;
            height: 25px;
        }
        .auto-style13 {
            width: 295px;
        }
        .auto-style14 {
            width: 192px;
            height: 69px;
        }
        .auto-style20 {
            width: 318px;
        }
        .auto-style21 {
            width: 210px;
        }
        .auto-style22 {
            width: 318px;
            height: 69px;
        }
        .auto-style23 {
            width: 192px;
        }
        .auto-style25 {
            width: 295px;
            height: 25px;
        }
        .auto-style26 {
            width: 138px;
            height: 25px;
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
        <asp:Label ID="Label1" runat="server" Text="Finishing Mill Pulpit" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="MillOverview.aspx">Go Back to Overview</a>
    </div>
    <div style ="text-align:center">
        <asp:Label ID="Label01" runat="server" Text="Click on a chair to view that position's computers" Font-Size ="Large" Font-Bold="true"></asp:Label>
    </div>
    <div>
        <table cellspacing ="5">
            <tr>
                <td class="auto-style22" >
                    &nbsp; &nbsp; 
                    <asp:Label ID="Label3" runat="server" Text="Speed Operator" ></asp:Label>
                    </td>
                <td class="auto-style14">
                    &nbsp; &nbsp; 
                    <asp:Label ID="Label4" runat="server" Text="Assistant Roller" ></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    <asp:Label ID="Label5" runat="server" Text="Roller" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <a href ="FinishingMillSpeedOp.aspx">
                         <asp:Image ID="SpeedOperator" Imageurl="../Pictures/(fixed)chairfaceup.png" runat="server" Height="91px" Width="118px" ToolTip="Speed Operator"  />
                    </a>
                </td>
                <td align ="center" class="auto-style23">
                     <table>
                        <tr>
                            <td align ="center">
                                <a href ="FinishingMillAssistRoller.aspx">
                                    <asp:Image ID="AssistantRoller" Imageurl="../Pictures/(fixed)chairfaceup.png" runat="server" Height="91px" Width="110px" ToolTip="Assistant Roller"/>
                                </a>     
                            </td>
                        </tr>
                    </table>
                </td>
                <td align ="center" class="auto-style1">
                     <table>
                        <tr>
                            <td align ="center">
                                <a href ="FinishingMillRoller.aspx">
                                    <asp:Image ID="Roller" style ="text-align:center" Imageurl="../Pictures/(fixed)chairfaceup.png" runat="server" Height="91px" Width="110px" ToolTip="Roller" ImageAlign="Middle"  />
                                </a>     
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.screenSize, IPAddresses.screenResolution FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:networksConnectionString.ProviderName %>">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                         </td>
                <td class="auto-style23">
                    <table>
                        <tr>
                            <td align ="center" class="auto-style21">
                                <table>
                                    <tr>
                                        <td align ="center">
                                            <asp:ImageButton ID="Operator5" runat="server" Imageurl="../Pictures/(fixed)chairfacedown.png" Width ="50px" Height ="50px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="Camera" runat="server" Imageurl ="../Pictures/FMCamRight.png" OnClick = "Camera_Click" Width ="100px" Height ="100px" ToolTip="Camera" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="Camera2" runat="server" Imageurl ="../Pictures/FMCamLeft.png" OnClick = "Camera_Click" Width ="100px" Height ="100px" ToolTip="Camera" BorderColor="#FF3300" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="HSMHMITS1" runat="server" Imageurl="../Pictures/GPHFM01.png" OnClick = "GPHFM01_Click" Width ="200px" Height ="100px" ToolTip="HMTC-GPHFM01" BorderColor="#FF3300" />
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
                            <td align ="center">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="Operator6" runat="server" Imageurl="../Pictures/(fixed)chairfacedown.png" Width ="50px" Height ="50px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="ITStandalone" runat="server" Imageurl="../Pictures/ITComputerUp.png" OnClick ="IT_Click" Width ="225px" Height ="100px" ToolTip="WS0463" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="HSMHMIFM01" runat="server" Imageurl="../Pictures/FM01.png" OnClick ="HSMHMIFM01_Click" Width ="225px" Height ="100px" ToolTip="BHW-HSMHMI-FM01" BorderColor="#FF3300" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    
                    </table>
                </td>
                <td>
                    &nbsp;
                </td>
                <td style ="vertical-align:bottom">
                    &nbsp;
                </td>
            </tr>
        </table>
        <table rules="none" style="width: 215px">
            <tr>
                <td style="text-align:right" class="auto-style13">
                    <asp:Label ID="Label2" runat="server" Text="Computer Name:" ></asp:Label>
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
                            <asp:BoundField DataField="screenSize" HeaderText="Screen Size:" NullDisplayText="N/A" SortExpression="screenSize" />
                            <asp:BoundField DataField="screenResolution" HeaderText="Screen Resolution:" NullDisplayText="N/A" SortExpression="screenResolution" />
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
                    <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="215px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
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
                <td style="text-align:right" class="auto-style25">
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
                <td style="text-align:right; vertical-align:top" class="auto-style13">
                    <asp:TextBox ID="CompRunningLabel" runat="server" Text ="Running on this Computer:" width ="215px" ReadOnly="True"></asp:TextBox>
                </td>
                <td style="vertical-align:top" class="auto-style4">
                    <textarea rows="4" cols="10" runat ="server" id ="ActualCompRunning" style="margin-left: 12px; width:150px" name="S1" readonly="readonly" >?</textarea>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
