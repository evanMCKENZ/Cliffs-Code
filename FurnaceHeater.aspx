<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FurnaceHeater.aspx.cs" Inherits="ProcessAutomation.Pulpits.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 200px;
            width: 95px;
        }
        .auto-style3 {
            height: 471px;
        }
        .auto-style4 {
            width: 168px;
        }
        .auto-style5 {
            width: 168px;
            height: 26px;
        }
        .auto-style8 {
            width: 168px;
            height: 6px;
        }
        .auto-style10 {
            width: 168px;
            height: 25px;
        }
        .auto-style11 {
            width: 250px;
        }
        .auto-style12 {
            height: 200px;
            width: 250px;
        }
        .auto-style13 {
            width: 337px;
            height: 26px;
        }
        .auto-style15 {
            width: 337px;
            height: 25px;
        }
        .auto-style16 {
            width: 337px;
            height: 6px;
        }
        .auto-style17 {
            width: 337px;
        }
        .auto-style18 {
            width: 200px;
            height: 123px;
        }
        .auto-style19 {
            width: 141px;
            height: 214px;
        }
        .auto-style20 {
            width: 129px;
            height: 214px;
        }
        .auto-style21 {
            width: 111px;
            height: 214px;
        }
        .auto-style22 {
            width: 74px;
        }
        .auto-style24 {
            width: 95px;
        }
        .auto-style26 {
            height: 214px;
        }
        .auto-style27 {
            height: 123px;
        }
        .auto-style28 {
            height: 108px;
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
    <asp:Label ID="mylabel" runat="server" Text="Furnace/Heater Pulpit" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="MillOverview.aspx">Go Back to Overview</a>
    </div>
    <div align="center">
        <table style="margin-bottom: 0px" >
            <tr>
                <td class="auto-style3">
                    <table style="height: 398px; width: 1085px">
                        <tr>
                            <td class="auto-style27">
                                <table cellpadding ="0">
                                    <tr>
                                        <td class="auto-style11">
                                            <asp:ImageButton ID="RS3Left3" runat="server" Imageurl="../Pictures/FurnaceScreensLEFT.png" Height="60px" Width="75px" OnClick="FurnOP3_Click" ToolTip="BHW-HSMFCE-OP3" BorderColor="#FF3300" />
                                        </td>
                                        <td class="auto-style24">
                                            <asp:ImageButton ID="RS3Left2" runat="server" Imageurl="../Pictures/FurnaceScreensLEFT.png" Height="60px" Width="75px" OnClick="FurnOP3_Click" ToolTip="BHW-HSMFCE-OP3" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="RS3Left4" runat="server" Imageurl="../Pictures/FurnaceScreensLEFT.png" Height="60px" Width="75px" OnClick="FurnOP2_Click" ToolTip="BHW-HSMFCE-OP2" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="RS3Left5" runat="server" Imageurl="../Pictures/FurnaceScreensRIGHT.png" Height="60px" Width="75px" OnClick="FurnOP2_Click" ToolTip="BHW-HSMFCE-OP2" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="RS3Left6" runat="server" Imageurl="../Pictures/FurnaceScreensRIGHT.png" Height="60px" Width="75px" OnClick="FurnOP1_Click" ToolTip="BHW-HSMFCE-OP1 " BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="RS3Left7" runat="server" Imageurl="../Pictures/FurnaceScreensRIGHT.png" Height="60px" Width="75px" OnClick="FurnOP1_Click" ToolTip="BHW-HSMFCE-OP1 " BorderColor="#FF3300" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">
                                            <asp:ImageButton ID="RS3Left" runat="server" Imageurl="../Pictures/FurnaceScreensLEFT.png" Height="60px" Width="75px" OnClick="FurnOP3_Click" ToolTip="BHW-HSMFCE-OP3" BorderColor="#FF3300" />
                                        </td>
                                        <td class="auto-style24">
                                            <asp:ImageButton ID="RS3Left0" runat="server" Imageurl="../Pictures/FurnaceScreensLEFT.png" Height="60px" Width="75px" OnClick="FurnOP3_Click" ToolTip="BHW-HSMFCE-OP3" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="RS3Left1" runat="server" Imageurl="../Pictures/FurnaceScreensLEFT.png" Height="60px" Width="75px" OnClick="FurnOP2_Click" ToolTip="BHW-HSMFCE-OP2" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="RS3Left8" runat="server" Imageurl="../Pictures/FurnaceScreensRIGHT.png" Height="60px" Width="75px" OnClick="FurnOP2_Click" ToolTip="BHW-HSMFCE-OP2" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="RS3Left9" runat="server" Imageurl="../Pictures/FurnaceScreensRIGHT.png" Height="60px" Width="75px" OnClick="FurnOP1_Click" ToolTip="BHW-HSMFCE-OP1 " BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="RS3Left10" runat="server" Imageurl="../Pictures/FurnaceScreensRIGHT.png" Height="60px" Width="75px" OnClick="FurnOP1_Click" ToolTip="BHW-HSMFCE-OP1 " BorderColor="#FF3300" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.IBAUser FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td style ="text-align:center" class="auto-style1">
                                            <asp:ImageButton ID="Operator1" Imageurl="../Pictures/(fixed)chairfaceup.png" runat="server" Height="82px" Width="80px" ToolTip="Furnace Operator"  />
                                            <asp:Label ID="Label4" runat="server" Text="Furnace Operator" ></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="auto-style18">
                                &nbsp;
                            </td>
                            <td class="auto-style27">
                                <table cellpadding ="0">
                                    <tr>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td style="width:400px">
                                                        <asp:ImageButton ID="Camera2" runat="server" Height="80px" Width="100px" Imageurl="../Pictures/(fixed)straighttvFRN2.png" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                                                        &nbsp; <asp:ImageButton ID="Camera1" runat="server" Height="80px" Width="100px" Imageurl="../Pictures/(fixed)straighttvFRN1.png" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300" />
                                                        &nbsp; <asp:ImageButton ID="FC02" runat="server" Height="80px" Width="100px" Imageurl="../Pictures/BHW-HSMHMI-FC02.png" OnClick="FC02_Click" ToolTip="BHW-HSMHMI-FC02" BorderColor="#FF3300" />      
                                                    </td>
                                                    <td style="width:75px">
                                                        &nbsp;
                                                    </td>
                                                    <td style="vertical-align:bottom" class="auto-style22">
                                                        <asp:ImageButton ID="Image5" runat="server" Imageurl="../Pictures/FurnaceCam1.png" Width ="100px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                                                    </td>
                                                    <td style="vertical-align:bottom; width:100px">
                                                        <asp:ImageButton ID="Image4" runat="server" Imageurl="../Pictures/FurnaceCam2.png" Width ="100px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                                                    </td>
                                                    <td style="vertical-align:bottom; width:100px">
                                                        &nbsp;
                                                    </td>
                                                    <td style="vertical-align:bottom; width:100px">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="FC01" runat="server" Height="170px" Width="340px" Imageurl="../Pictures/(fixed)BHW-HSMHMI-FC01.png" OnClick="FC01_Click" ToolTip="BHW-HSMHMI-FC01 " BorderColor="#FF3300"/>
                                                    </td>
                                                    <td style="width:75px">
                                                    </td>
                                                    <td style="vertical-align:bottom" class="auto-style22">
                                                        <asp:ImageButton ID="Image1" runat="server" Imageurl="../Pictures/FurnaceCam3.png" Width ="100px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                                                        <asp:ImageButton ID="Image2" runat="server" Imageurl="../Pictures/FurnaceCam4.png" Width ="100px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                                                    </td>
                                                    <td style="vertical-align:bottom; width:100px">
                                                        <asp:ImageButton ID="Image7" runat="server" Imageurl="../Pictures/FurnaceCam5.png" Width ="100px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                                                        <asp:ImageButton ID="Image3" runat="server" Imageurl="../Pictures/FurnaceCam6.png" Width ="100px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                                                    </td>
                                                    <td style="vertical-align:bottom; width:100px">
                                                        <asp:ImageButton ID="Image6" runat="server" Imageurl="../Pictures/FurnaceCam7.png" Width ="100px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300"/>
                                                    </td>
                                                    <td style="vertical-align:bottom; width:100px">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style28">
                                            <table>
                                                <tr>
                                                    <td style ="vertical-align:top" class="auto-style20">
                                                        <asp:ImageButton ID="HOS1" runat="server"  Imageurl="../Pictures/(fixed)HMTC-HOSMMI5.png" width ="114px" OnClick="HOS1_Click" ToolTip="HMTC-HOSMMI5 " Height="76px" BorderColor="#FF3300"/>
                                                    </td>
                                                    <td style ="vertical-align:top" class="auto-style19">
                                                        <asp:ImageButton ID="HOS2" runat="server" Imageurl="../Pictures/(fixed)HMTC-HOSMMI2.png" Width ="114px" OnClick="HOS2_Click" ToolTip="HMTC-HOSMMI2 " Height="76px" BorderColor="#FF3300"/>
                                                    </td>
                                                    <td class="auto-style21">
                                                        &nbsp;
                                                    </td>
                                                    <td style="vertical-align:top" class="auto-style26">
                                                        <asp:ImageButton ID="ExtractionOperator" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Width ="107px" Height="110px" ToolTip="Extractor Operator" />
                                                        <br />
                                                        <asp:Label ID="Label5" runat="server" Text="Extractor Operator" ></asp:Label>
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
                                                         <asp:ImageButton ID="ITStandalone" runat="server" Height="102px" OnClick="Standalone_Click" Imageurl="../Pictures/ITComputerUP.png" ToolTip="IT Standalone" Width="174px" BorderColor="#FF3300" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>              
                    </table>
                </td>
            </tr>
            <tr>
                <td align ="left" width ="1000px">
                    <table style="width: 215px">
                        <tr>
                            <td style="text-align:right" class="auto-style13">
                                <asp:Label ID="Label1" runat="server" Text="Computer Name:" ></asp:Label>
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
                            <td style="text-align:right" class="auto-style17">
                                <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="215px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style17">
                                <asp:TextBox ID="CompAddressLabel" runat="server" Text ="Computer Address:" width ="215px" style="margin-left: 0px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="ActualCompAddress" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style15">
                                <asp:TextBox ID="IPAddressLabel" runat="server" Text ="IP Address:" width ="215px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td  class="auto-style10">
                                <asp:TextBox ID="ActualIPAddress" runat="server" Text="?" width ="150px " style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style16">
                                <asp:TextBox ID="CompTypeLabel" runat="server" Text ="Type of Computer:" width ="215px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="ActualCompType" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right; vertical-align:top" class="auto-style17">
                                <asp:TextBox ID="CompRunningLabel" runat="server" Text ="Running on this Computer:" width ="215px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="vertical-align:top" class="auto-style4">
                                <textarea rows="4" cols ="10" runat ="server" id ="ActualCompRunning" style="margin-left: 12px; width:150px" name="S1" readonly="readonly" >?</textarea>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
