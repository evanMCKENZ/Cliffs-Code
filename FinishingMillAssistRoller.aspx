<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FinishingMillAssistRoller.aspx.cs" Inherits="ProcessAutomation.Pulpits.FinishingMillAssistRoller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 137px;
            height: 222px;
        }
        .auto-style5 {
            width: 138px;
            height: 50px;
        }
        .auto-style23 {
            width: 193px;
            height: 222px;
        }
        .auto-style25 {
            width: 315px;
            height: 25px;
        }
        .auto-style26 {
            width: 138px;
            height: 25px;
        }
        .auto-style28 {
            width: 193px;
            height: 24px;
        }
        .auto-style29 {
            width: 137px;
            height: 24px;
        }
        .auto-style30 {
            width: 137px;
            height: 105px;
        }
        .auto-style31 {
            width: 193px;
            height: 105px;
        }
        .auto-style32 {
            width: 257px;
        }
        .auto-style33 {
            width: 257px;
            height: 105px;
        }
        .auto-style34 {
            width: 257px;
            height: 24px;
        }
        .auto-style35 {
            width: 246px;
            height: 222px;
        }
        .auto-style36 {
            width: 246px;
            height: 105px;
        }
        .auto-style37 {
            width: 246px;
            height: 24px;
        }
        .auto-style39 {
            width: 47px;
            height: 105px;
        }
        .auto-style40 {
            width: 47px;
            height: 24px;
        }
        .auto-style41 {
            width: 47px;
            height: 222px;
        }
        .auto-style42 {
            width: 315px;
        }
        .auto-style43 {
            width: 257px;
            height: 222px;
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
        <asp:Label ID="Label1" runat="server" Text="Finishing Mill Assistant Roller" Font-Size ="XX-Large" Font-Bold="True"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="FinishingMill.aspx">Go Back to Finishing Mill Overview</a>
    </div>
    <div style="text-align:center">
        <table cellspacing ="5" style="width: 565px; margin-right: 0px;">
            <tr>
                <td class="auto-style43">
                    &nbsp;
                </td>
                <td class="auto-style35">
                    &nbsp;
                </td>
                <td align ="center" class="auto-style23" style="vertical-align:bottom">
                    <table style="width: 100px; height: 73px;" cellpadding="5">
                        <tr>
                            <td class="auto-style32" style="vertical-align:bottom">
                                <table cellpadding="5" style="width: 100px; height: 73px;">
                                    <tr>
                                        <td class="auto-style32">
                                            <asp:ImageButton ID="FinishingMillFM21" runat="server" Imageurl="../Pictures/FM21.png" Height="79px" Width="84px" OnClick="FMFM21_Click" ToolTip="HMTC-FM21 " BorderColor="#FF3300"/>
                                        </td>
                                        <td class="auto-style32">
                                            <asp:ImageButton ID="FinishingMillFM22" runat="server" Imageurl="../Pictures/FM22.png"  Height="79px" Width="84px" OnClick="FMFM22_Click" ToolTip="HMTC-FM22 " BorderColor="#FF3300"/>
                                        </td>
                                    </tr>
                                </table>
                            </td>   
                        </tr>
                    </table>
                </td>
                <td class="auto-style41">
                    &nbsp;
                     </td>
                <td class="auto-style1">
                    &nbsp;
                </td>
                <td align ="center" class="auto-style1">
                    <table rules="none" style="width: 215px">
                        <tr>
                            <td style="text-align:right" class="auto-style42">
                                <asp:Label ID="Label6" runat="server" Text="Computer Name:" ></asp:Label>
                                <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="text-align:left" class="auto-style5">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.screenSize, IPAddresses.screenResolution FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
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
                                <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="215px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:ImageButton ID="FinishingMillHT" runat="server" Imageurl="../Pictures/HeadTailScreen.png" Height="84px" Width="79px" OnClick="FMHT_Click" ToolTip="Head and Tail Screen" BorderColor="#FF3300"/>
                    <asp:ImageButton ID="FinishingMillBarProfile" runat="server" Imageurl="../Pictures/BarProfile.png" Height="84px" Width="79px" OnClick="FMBarProfile_Click" ToolTip="Bar Profile Screen" BorderColor="#FF3300"/>
                    </td>
                <td class="auto-style36">
                    <asp:ImageButton ID="FinishingMillFM08A" runat="server" Imageurl="../Pictures/FM08.png" Height="84px" Width="79px" OnClick="FMFM08_Click" ToolTip="HMTC-FM08  " BorderColor="#FF3300"/>
                    <asp:ImageButton ID="FinishingMillFM08B" runat="server" Imageurl="../Pictures/FM01Bright.png" Height="84px" Width="79px" OnClick="FMFM08_Click" ToolTip="HMTC-FM08  " BorderColor="#FF3300"/>
                    </td>
                <td align ="center" class="auto-style31">
                     <table>
                        <tr>
                            <td align ="center">
                                <asp:Label ID="Label4" runat="server" Text="Assistant Roller" ></asp:Label>
                                <asp:ImageButton ID="AssistantRoller" style ="text-align:center" Imageurl="../Pictures/(fixed)chairfaceup.png" runat="server" Height="80px" Width="87px" ToolTip="Finishing Mill Assistant Roller" ImageAlign="Middle" OnClick="FMOp1_Click"  /> 
                            </td>
                        </tr>
                        </table>
                </td>
                <td align ="center" class="auto-style39">
                    <asp:ImageButton ID="Camera1" runat="server" Imageurl="../Pictures/FMARCam1.png" Height="52px" Width="75px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                    <asp:ImageButton ID="Camera2" runat="server" Imageurl="../Pictures/FMARCam2.png" Height="52px" Width="75px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                    <asp:ImageButton ID="Camera3" runat="server" Imageurl="../Pictures/FMARCam3.png" Height="52px" Width="75px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                </td>
                <td align ="center" class="auto-style30">
                    <asp:ImageButton ID="FinishingMillFM23" runat="server" Imageurl="../Pictures/FM23.png"  Height="84px" Width="79px" OnClick="FMFM23_Click" ToolTip="HMTC-FM23 " BorderColor="#FF3300"/>
                </td>
                <td align ="center" class="auto-style30">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    <asp:ImageButton ID="FinishingMillFM20" runat="server" Imageurl="../Pictures/FM20.png" Height="84px" Width="79px" OnClick="FMFM20_Click" ToolTip="HMTC-FM20" BorderColor="#FF3300"/>                
                </td>
                <td class="auto-style37">
                    <asp:ImageButton ID="FinishingMillFM04" runat="server" Imageurl="../Pictures/FM04.png" Height="84px" Width="79px" OnClick="FMFM04_Click" ToolTip="HMTC-FM04 " BorderColor="#FF3300"/>
                    <asp:ImageButton ID="FinishingMillFM06" runat="server" Imageurl="../Pictures/RMTrackingright.png" Height="84px" Width="79px" OnClick="FMFM06_Click" ToolTip="HMTC-FM06 " BorderColor="#FF3300"/>
                    </td>
                <td class="auto-style28">
                    &nbsp;
                </td>
                <td class="auto-style40">
                    <asp:ImageButton ID="FinishingMillFM03" runat="server" Imageurl="../Pictures/FM03.png"  Height="84px" Width="79px" OnClick="FMFM03_Click" ToolTip="HMTC-FM03 " BorderColor="#FF3300"/>
                    <asp:ImageButton ID="FinishingMillFM07" runat="server" Imageurl="../Pictures/FM07.png"  Height="84px" Width="79px" OnClick="FMFM07_Click" ToolTip="HMTC-FM07 " BorderColor="#FF3300"/>
                </td>
                <td class="auto-style29">
                    <asp:ImageButton ID="FinishingMillFM24" runat="server" Imageurl="../Pictures/FM24.png"  Height="84px" Width="79px" OnClick="FMFM24_Click" ToolTip="HMTC-FM24 " BorderColor="#FF3300"/>  
                </td>
                <td class="auto-style29">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    &nbsp;
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
                <td class="auto-style29">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
