<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoughingMill.aspx.cs" Inherits="ProcessAutomation.Pulpits.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 164px;
            width: 276px;
        }
        .auto-style4 {
            height: 151px;
        }
        .auto-style5 {
            width: 900px;
        }
        .auto-style6 {
            width: 900px;
            height: 334px;
        }
        .auto-style7 {
            height: 334px;
        }
        .auto-style25 {
            width: 311px;
            height: 25px;
        }
        .auto-style26 {
            width: 138px;
            height: 25px;
        }
        .auto-style10 {
            width: 112px;
        }
        .auto-style28 {
            height: 172px;
            width: 276px;
        }
        .auto-style29 {
            height: 151px;
            width: 396px;
        }
        .auto-style30 {
            height: 172px;
            width: 396px;
        }
        .auto-style31 {
            height: 164px;
            width: 396px;
        }
        .auto-style32 {
            height: 151px;
            width: 138px;
        }
        .auto-style34 {
            height: 164px;
            width: 138px;
        }
        .auto-style35 {
            height: 151px;
            width: 151px;
        }
        .auto-style36 {
            height: 172px;
            width: 151px;
        }
        .auto-style37 {
            height: 164px;
            width: 151px;
        }
        .auto-style38 {
            height: 151px;
            width: 276px;
        }
        .auto-style39 {
            height: 94px;
        }
        .auto-style40 {
            width: 300px;
        }
        .auto-style41 {
            width: 311px;
        }
        .auto-style42
        {
            height: 94px;
            width: 148px;
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
        <asp:Label ID="Label1" runat="server" Text="Roughing Mill Pulpit" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
    </div>
    <div style="text-align:center">
        <a href ="MillOverview.aspx">Go Back to Overview</a>
    </div>
    <div align="center">
        <table cellpadding ="5">
            <tr>
                <td class="auto-style6">
                    <table cellpadding ="2" style="margin-bottom: 0px">
                        <tr>
                            <td style="vertical-align:top; text-align:right" class="auto-style35">
                                <br />
                                <asp:ImageButton ID="CameraDisplay4" runat="server" Imageurl="../Pictures/RMCamTop4.png" Width="100px" Height ="90px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300" />
                            </td>
                            <td style="vertical-align:top; text-align:right" class="auto-style35">
                                <asp:ImageButton ID="HOSMM1" runat="server" Imageurl="../Pictures/Blank monitor.png" width ="215px" Height="150px" OnClick="HOSMM1_Click" ToolTip="BHW-HSMHMI-RM02" BorderColor="#FF3300"/>
                            </td>
                            <td style="vertical-align:top; text-align:right" class="auto-style29">
                                <asp:ImageButton ID="RoughingMillTracking" runat="server" Imageurl="../Pictures/(fixed)HMTC-RM01.png" Height ="137px" Width="146px" OnClick="RM01_Click" ToolTip="HMTC-RM01" BorderColor="#FF3300"/>
                            </td>
                            <td style="vertical-align:top" class="auto-style38" >
                                <asp:ImageButton ID="RoughingMillSlab" runat="server" Imageurl="../Pictures/NextSlabTimeScreen.png" Height ="137px" Width="146px" OnClick="RM13_Click" ToolTip="HMTC-RM13" BorderColor="#FF3300"/>
                            </td>
                            

                            <td style="vertical-align:central" class="auto-style32" colspan="2">
                                <table cellpadding ="5" style="width: 490px">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="RMAutoStatusDisplay2" runat="server" Imageurl="../Pictures/(fixed)HMTC-RM03.png" Height ="137px" Width ="146px" OnClick="HMTCRM03_Click" ToolTip="HMTC-RM03" BorderColor="#FF3300"/>
                                        </td>
                                        <td style ="text-align:right" class="auto-style39">
                                            &nbsp;
                                            <asp:ImageButton ID="RMAutoStatusDisplay1" runat="server" Imageurl="../Pictures/(fixed)HMTC-RM03.png" OnClick="RM02_Click" Width ="146px" ToolTip="HMTC-RM02" Height="137px" BorderColor="#FF3300"/>
                                        </td>
                                        <td style ="text-align:right" class="auto-style39">
                                            <asp:ImageButton ID="HSMHMIRM04" runat="server" Imageurl="../Pictures/(fixed)straighttvfaceleft.png" width ="150px" Height="200px" OnClick="HSMHMIRM04_Click" ToolTip="BHW-HSMHMI-RM04" BorderColor="#FF3300"/>
                                        </td>
                                    </tr>
                                </table>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left; vertical-align:top" class="auto-style36">
                                <asp:ImageButton ID="CameraDisplay0" runat="server" Imageurl="../Pictures/RMCamTop3.png" Width="100px" Height ="90px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300" />
                                <br />
                                <asp:ImageButton ID="CameraDisplay3" runat="server" Imageurl="../Pictures/RMCamTop2.png" Width="100px" Height ="90px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300" />
                                <asp:ImageButton ID="CameraDisplay2" runat="server" Imageurl="../Pictures/RMCamTop1.png" Width="100px" Height ="90px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300" />
                            </td>
                            <td style="text-align:left; vertical-align:top" class="auto-style36">
                                <asp:ImageButton ID="CameraDisplay" runat="server" Imageurl="../Pictures/RMCamBottom.png" Width="100px" Height ="90px" OnClick="Camera_Click" ToolTip="Camera" BorderColor="#FF3300" />
                                </td>
                                <td style="text-align:left; vertical-align:top" class="auto-style30">
                                <asp:ImageButton ID="ITStandalone" runat="server" Imageurl="../Pictures/ITComputerright.png" Height ="135px" Width ="120px" OnClick="ITStandalone_Click" ToolTip="HMTC-RM03" BorderColor="#FF3300"/>
                                <br />
                                <asp:ImageButton ID="HSMHMIRM03" runat="server" Imageurl="../Pictures/BHW-HSMHMI-RM03B.png" Height ="135px" Width ="120px" OnClick="HMIRM03_Click" ToolTip="HMTC-RM03" BorderColor="#FF3300"/>
                            </td>
                            <td style="text-align:center" class="auto-style28">
                                <asp:Image ID="Operator" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" width ="125px" height ="125px" ToolTip="Chair"/>
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="Roughing Mill Operator" ></asp:Label>
                            </td>
                            <td style="text-align:center" class="auto-style39">
                                <asp:Image ID="RMAutoStatusDisplay3" runat="server" Imageurl="../Pictures/ControlDesk.jpg" Height ="132px" Width ="365px"/>
                            </td>
                            <td style="text-align:center" class="auto-style42">
                                <asp:ImageButton ID="RMAutoStatusDisplay4" runat="server" Imageurl="../Pictures/HMTC-RM14.png" Height ="137px" Width ="146px" OnClick="RM14_Click" ToolTip="HMTC-RM14" BorderColor="#FF3300"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align:top">
                                &nbsp;</td>
                            <td>
                                &nbsp;
                            </td>
                            <td style="text-align:left; vertical-align:top" class="auto-style31">
                                <asp:ImageButton ID="GraphDisplays" runat="server" Imageurl="../Pictures/BHW-HSMHMI-RM02.png" width ="215px" Height="150px" OnClick="HSMHMIRM02_Click" ToolTip="BHW-HSMHMI-RM02" BorderColor="#FF3300"/>
                            </td>
                            <td align ="center" class="auto-style3">
                                <asp:ImageButton ID="Vizimation" runat="server" Imageurl="../Pictures/BHW-HSMHMI-RM01.png" Width ="215px" Height ="150px" OnClick="HSMHMIRM01_Click" ToolTip="BHW-HSMHMI-RM01" BorderColor="#FF3300"/>
                            </td>
                            <td align ="center" class="auto-style34" colspan="2">
                                &nbsp;
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
                            <td align ="center" class="auto-style3">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.IBAUser, IPAddresses.screenSize, IPAddresses.screenResolution FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01"/>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td align ="center" class="auto-style34" colspan="2" >
                                <table style="width: 447px">
                                    <tr>
                                        <td style="text-align:right" class="auto-style41">
                                            <asp:Label ID="Label2" runat="server" Text="Computer Name:" ></asp:Label>
                                            <asp:Label ID="ActualCompName2" runat="server" Text="Click on Computer" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right" class="auto-style41">
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
                                            <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="215px" ReadOnly="True" style="margin-top: 0px"></asp:TextBox>
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
                                        <td style="text-align:right" class="auto-style41">
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
                                        <td style="text-align:right; vertical-align:top" class="auto-style41">
                                            <asp:TextBox ID="CompRunningLabel" runat="server" Text ="Running on this Computer:" width ="215px" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td style="vertical-align:top" class="auto-style4">
                                            <textarea rows="4" cols="10" runat ="server" id ="ActualCompRunning" style="margin-left: 12px; width:150px" name="S1" readonly="readonly">?</textarea>
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
