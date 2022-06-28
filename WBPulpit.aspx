<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WBPulpit.aspx.cs" Inherits="ProcessAutomation.Pulpits.WBPulpit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <style type="text/css">
        .auto-style3 {
            height: 402px;
        }
        .auto-style5 {
            width: 168px;
            height: 26px;
        }
        .auto-style13 {
            width: 337px;
            height: 26px;
        }
        .auto-style27 {
            height: 75px;
        }
        .auto-style31 {
            height: 75px;
            width: 358px;
        }
        .auto-style34 {
            width: 293px;
        }
        .auto-style36 {
            width: 301px;
            height: 147px;
        }
        .auto-style38 {
            width: 221px;
            height: 147px;
        }
        .auto-style39 {
            height: 100px;
        }
        .auto-style41 {
            width: 269px;
        }
        .auto-style42 {
            width: 269px;
            height: 61px;
        }
        .auto-style43 {
            width: 293px;
            height: 61px;
        }
        .auto-style44 {
            height: 61px;
            width: 358px;
        }
        .auto-style45 {
            height: 61px;
        }
        .auto-style46 {
            height: 19px;
        }
        .auto-style47 {
            width: 199px;
            height: 83px;
        }
        .auto-style48 {
            width: 258px;
            height: 147px;
        }
        .auto-style49 {
            height: 115px;
            width: 1345px;
        }
        .auto-style50 {
            width: 199px;
            height: 147px;
        }
        .auto-style51 {
            height: 83px;
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
    <asp:Label ID="mylabel" runat="server" Text="Walking Beam Furnace Pulpit" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
    </div>
    <div style ="text-align:center">
        <a href ="MillOverview.aspx">Go Back to Overview</a>
    </div>

    <div align="center">
        <table style="margin-bottom: 0px" >
            <tr>
                <td class="auto-style3">
                    <table style="height: 60px; width: 1200px; margin-bottom: 13px;"; cellspacing ="0">
                        <tr>
                            <td class="auto-style39">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="ImageButton5" runat="server" Imageurl="../Pictures/wbfcam1.png" Height="100px" Width="140px" ToolTip="WBF-Cam1" BorderColor="#FF3300" />
                                &nbsp;
                                <asp:ImageButton ID="ImageButton8" runat="server" Imageurl="../Pictures/wbfcam2.png" Height="100px" Width="140px" ToolTip="WBF-Cam2" BorderColor="#FF3300" />
                            </td>
                            <td>
                                &nbsp;<asp:ImageButton ID="ImageButton7" runat="server" Imageurl="../Pictures/wbfcam3.png" Height="100px" Width="120px" ToolTip="WBF-Cam3" BorderColor="#FF3300" />
                                &nbsp;<asp:ImageButton ID="ImageButton9" runat="server" Imageurl="../Pictures/wbfcam4.png" Height="100px" Width="120px" ToolTip="WBF-Cam4" BorderColor="#FF3300" />
                            </td>
                            <td>
                                &nbsp;<asp:ImageButton ID="ImageButton11" runat="server" Imageurl="../Pictures/wbfcam5.png" Height="100px" Width="120px" ToolTip="WBF-Cam5" BorderColor="#FF3300" />
                                &nbsp;<asp:ImageButton ID="ImageButton10" runat="server" Imageurl="../Pictures/wbfcam6.png" Height="100px" Width="120px" ToolTip="WBF-Cam6" BorderColor="#FF3300" />
                            </td>
                            <td class="auto-style39">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" Imageurl="../Pictures/wbfcam7.png" Height="100px" Width="140px" ToolTip="WBF-Cam7" BorderColor="#FF3300" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style44">
                                &nbsp;
                            </td>
                            <td class="auto-style42">
                                &nbsp;
                            </td>
                            <td class="auto-style43">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.IBAUser FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HTMC" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                            </td>
                            <td class="auto-style45">
                                <table>
                                    <tr>
                                        <td class="auto-style46">
                                            <asp:ImageButton ID="ImageButton1" runat="server" Imageurl="../Pictures/wbfrightsideleftup.png" Height="75px" Width="87px" OnClick="WBFUpR1_Click" ToolTip="HMTC-L2MPWF1" BorderColor="#FF3300" />
                                        </td>
                                        <td class="auto-style46">
                                            <asp:ImageButton ID="ImageButton2" runat="server" Imageurl="../Pictures/wbffurn4up.png" Height="75px" Width="87px" OnClick="WBFUpR2_Click" ToolTip="HMTC-L1MPWF9" BorderColor="#FF3300" />
                                        </td>
                                        <td class="auto-style46">
                                            <asp:ImageButton ID="ImageButton3" runat="server" Imageurl="../Pictures/wbffurn5up.png" Height="75px" Width="87px" OnClick="WBFUpR3_Click" ToolTip="HMTC-L1MPWF10" BorderColor="#FF3300" />
                                        </td>
                                        <td class="auto-style46">
                                            <asp:ImageButton ID="ImageButton4" runat="server" Imageurl="../Pictures/wbfheaterup.png" Height="75px" Width="87px" OnClick="WBFUpR4_Click" ToolTip="HMTC-L2MPWF2" BorderColor="#FF3300" />
                                        </td>
                                    </tr>
                                </table>
                            </td>

                         </tr>
                           <tr>
                            <td class="auto-style31">
                                <table cellpadding ="0">
                                    
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="DepilerLeft1" runat="server" Imageurl="../Pictures/wbfsits1.png" Height="75px" Width="87px" OnClick="WBFD1_Click" ToolTip="HMTC-WFSITS1" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="DepilerLeft2" runat="server" Imageurl="../Pictures/wbfchargelinepwf1.png" Height="75px" Width="87px" OnClick="WBFD2_Click" ToolTip="HMTC-L1MPWF1" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="DepilerRight1" runat="server" Imageurl="../Pictures/wbfdepiler1.png" Height="75px" Width="87px" OnClick="WBFD3_Click" ToolTip="HMTC-WFDEPL1" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="DepilerRight2" runat="server" Imageurl="../Pictures/wbfdepilercam.png" Height="75px" Width="87px" OnClick="WBFD4_Click" ToolTip="BHW-HSMWBFPTZ" BorderColor="#FF3300" />
                                        </td>
                                    </tr>

                   
                                </table>

                            </td>
                            <td class="auto-style41">

                                <table cellpadding ="0">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="F4Left" runat="server" Imageurl="../Pictures/wbfl1f2.png" Height="75px" Width="87px" OnClick="WBFF41_Click" ToolTip="HMTC-L1MPWF2" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="F4Center" runat="server" Imageurl="../Pictures/wbffce4.png" Height="75px" Width="87px" OnClick="WBFF42_Click" ToolTip="HMTC-WFRMT2" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="F4Right" runat="server" Imageurl="../Pictures/wbfsits3.png" Height="75px" Width="87px" OnClick="WBFF43_Click" ToolTip="HMTC-WFSITS3" BorderColor="#FF3300" />
                                        </td>
                                    </tr>

                                    
                                </table>

                            </td>
                            <td class="auto-style34">

                                <table cellpadding ="0">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="F5Left" runat="server" Imageurl="../Pictures/wbfchargelinepwf3.png" Height="75px" Width="87px" OnClick="WBFF51_Click" ToolTip="HMTC-L1MPWF3" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="F5Center" runat="server" Imageurl="../Pictures/wbffce5.png" Height="75px" Width="87px" OnClick="WBFF52_Click" ToolTip="HMTC-WFRMT1" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="F5Right" runat="server" Imageurl="../Pictures/wbfsits4.png" Height="75px" Width="87px" OnClick="WBFF53_Click" ToolTip="HMTC-WFSITS4" BorderColor="#FF3300" />
                                        </td>
                                    </tr>

                                    
                                </table>

                            </td>
                            <td>
                                <table cellpadding ="0">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="HeaterLeft1" runat="server" Imageurl="../Pictures/wbfrightsideleftdown1.png" Height="75px" Width="87px" OnClick="WBFH1_Click" ToolTip="HMTC-L2MPWF1" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="HeaterLeft2" runat="server" Imageurl="../Pictures/wbffurn4down.png" Height="75px" Width="87px" OnClick="WBFH2_Click" ToolTip="HMTC-L1MPWF9" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="HeaterRight1" runat="server" Imageurl="../Pictures/wbffurn5down.png" Height="75px" Width="87px" OnClick="WBFH3_Click" ToolTip="HMTC-L1MPWF10" BorderColor="#FF3300" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="HeaterRight2" runat="server" Imageurl="../Pictures/wbfheaterdown.png" Height="75px" Width="87px" OnClick="WBFH4_Click" ToolTip="HMTC-L2MPWF2" BorderColor="#FF3300" />
                                        </td>
                                    </tr>

                                </table>
                            </td>

                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td class="auto-style27">
                                <table cellpadding ="0" class="auto-style49">
                                    <tr>
                                        <td style="text-align:center" class="auto-style48">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:ImageButton ID="DepilerOp" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Width ="75px" Height="75px" ToolTip="Depiler Operator" />
                                                        <br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="LabelWBF1" runat="server" Text="Depiler Operator" ></asp:Label>
                                        </td>
                                        <td style="text-align:center" class="auto-style38">
                                                        &nbsp;<asp:ImageButton ID="F4Op" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Width ="75px" Height="75px" ToolTip="Furnace 4 Operator" />
                                                        <br />
                                                        &nbsp;<asp:Label ID="LabelWBF2" runat="server" Text="Furnace 4 Operator" ></asp:Label>
                                        </td>
                                        <td style="text-align:center" class="auto-style50">
                                                        <asp:ImageButton ID="F5Op" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Width ="75px" Height="75px" ToolTip="Furnace 5 Operator" />
                                                        <br />
                                                        <asp:Label ID="LabelWBF3" runat="server" Text="Furnace 5 Operator" ></asp:Label>
                                        </td>
                                        <td style="text-align:center" class="auto-style36">
                                                        <asp:ImageButton ID="HeaterOp" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Width ="75px" Height="75px" ToolTip="Heater Operator" />
                                                        <br />
                                                        <asp:Label ID="LabelWBF4" runat="server" Text="Heater Operator" ></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style51">

                                        </td>
                                        <td style="text-align:center" class="auto-style47">
                                                       
                                                        <asp:ImageButton ID="ImageButton12" runat="server" Imageurl="../Pictures/blank monitor.png" Width ="98px" Height="82px" ToolTip="BHW-HSMHMI-LAB1" OnClick="WBFWf08_Click"/>
                                                        <br />
                                        </td>
                                        <td style="text-align:center" class="auto-style47">
                                                        <asp:ImageButton ID="ImageButton13" runat="server" Imageurl="../Pictures/blank monitor.png" Width ="98px" Height="82px" ToolTip="BHW-HSMHMI-LAB1" OnClick="WBFWf09_Click"/>
                                                        <br />
                                        </td>
                                        <td class="auto-style51">

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
                    <table style="width: 215px;height: 1000px">
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



