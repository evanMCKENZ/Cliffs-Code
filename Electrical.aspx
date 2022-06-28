<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Electrical.aspx.cs" Inherits="ProcessAutomation.Pulpits.Electrical" %>
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
    <div style="text-align:center">
        <asp:Label ID="Label1" runat="server" Text="Electrical" Font-Size ="XX-Large" Font-Bold="True"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="MillOverview.aspx">Go Back to Mill Overview</a>
    </div>
    <div align="center">
        <table cellspacing ="5" style="width: 565px; margin-right: 0px;">
            <tr>
                <td class="auto-style43">
                    &nbsp;
                </td>
                <td class="auto-style35">
                    &nbsp;
                </td>
                <td align ="center" style="vertical-align:bottom; text-align:center">
                    <asp:ImageButton ID="HSMTECH55" runat="server" Imageurl="../Pictures/BHW-HSMHMI-FR01.png" Height="150px" Width="200px" OnClick="HSMTECH55_Click" ToolTip="BHW-HSMTECH-55" BorderColor="#FF3300"/>
                </td>
                <td align ="center" style="vertical-align:bottom" >
                    <asp:ImageButton ID="VIZMONC" runat="server" Imageurl="../Pictures/Blank monitor.png"  Height="150px" Width="200px" OnClick="VIZMON_Click" ToolTip="BHW-HSM-VIZMON" BorderColor="#FF3300"/>
                </td>
                <td align ="center" class="auto-style1">
                    <table rules="none" style="width: 215px">
                        <tr>
                            <td style="text-align:right" class="auto-style42">
                                <asp:Label ID="Label6" runat="server" Text="Computer Name:" ></asp:Label>
                                <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="text-align:left" class="auto-style5">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.IBAUser FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style42">
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
                                        <asp:BoundField DataField="IBAUser" HeaderText="IBA User:" NullDisplayText="N/A" SortExpression="IBA User" />
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
                                <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="215px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:ImageButton ID="EM01" runat="server" Imageurl="../Pictures/RMTrackingRIGHT.png" Height="100px" Width="100px" OnClick="EM01_Click" ToolTip="HMTC-EM01" BorderColor="#FF3300"/>
                </td>
                <td class="auto-style36">
                    <asp:ImageButton ID="ITComputer2" runat="server" Imageurl="../Pictures/ITComputer.png" Height="100px" Width="100px" OnClick="ITComputer_Click" ToolTip="IT Computer  " BorderColor="#FF3300"/>
                </td>
                <td style="text-align:center" class="auto-style31">
                    <asp:ImageButton ID="ITComputer1" runat="server" Imageurl="../Pictures/ITComputer.png" Height="100px" Width="100px" OnClick="ITComputer_Click" ToolTip="IT Computer" BorderColor="#FF3300"/>                   
                </td>
                <td style="text-align:center">
                    <table style="text-align:center">
                        <tr>
                            <td>
                                <asp:ImageButton ID="VIZMONA" runat="server" Imageurl="../Pictures/BarprofileUP.png" Height="100px" Width="100px" OnClick="VIZMON_Click" ToolTip="BHW-HSM-VIZMON" BorderColor="#FF3300"/>
                            </td>
                            <td>
                                <asp:ImageButton ID="VIZMONB" runat="server" Imageurl="../Pictures/HeadTailScreenUP.png" Height="100px" Width="100px" OnClick="VIZMON_Click" ToolTip="BHW-HSM-VIZMON" BorderColor="#FF3300"/>
                            </td>
                        </tr>
                    </table>
                </td>
                <td align ="center" class="auto-style30">                 
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ITComputer3" runat="server" Imageurl="../Pictures/ITComputerRIGHT.png" Height="100px" Width="100px" OnClick="ITComputer_Click" ToolTip="IT Computer" BorderColor="#FF3300"/>
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="text-align:center">
                    <asp:Image ID="Electrical1" style ="text-align:center" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Height="100px" Width="100px" ToolTip="Electrical 1" ImageAlign="Middle" /> 
                </td>
                <td style="text-align:center">
                    <asp:Image ID="Electrical2" style ="text-align:center" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Height="100px" Width="100px" ToolTip="Electrical 2" ImageAlign="Middle" /> 
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    <asp:ImageButton ID="ITComputer4" runat="server" Imageurl="../Pictures/ITComputerRIGHT.png" Height="100px" Width="100px" OnClick="ITComputer_Click" ToolTip="IT Computer" BorderColor="#FF3300"/>        
                </td>
                <td class="auto-style37">
                    &nbsp;
                </td>
                <td class="auto-style28">
                    &nbsp;
                </td>
                <td class="auto-style40">
                    &nbsp;
                </td>
                <td class="auto-style29">
                    &nbsp;
                </td>
            </tr>
            <tr style="height:60px">
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
                <td>
                    <asp:ImageButton ID="L1DEV" runat="server" Imageurl="../Pictures/EM01.png" Height="100px" Width="100px" OnClick="L1DEV_Click" ToolTip="HMTC-L1DEV-TR" BorderColor="#FF3300"/>
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
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
