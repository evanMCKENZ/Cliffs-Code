<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Depiler.aspx.cs" Inherits="ProcessAutomation.Pulpits.Depiler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 485px;
        }
        .auto-style3 {
            width: 485px;
            height: 207px;
        }
        .auto-style5 {
            width: 325px;
        }
        .auto-style7 {
            width: 485px;
            height: 177px;
        }
        .auto-style9 {
            width: 107px;
        }
        .auto-style10 {
            width: 112px;
        }
        .auto-style11 {
            width: 326px;
            height: 177px;
        }
        .auto-style12 {
            width: 326px;
            height: 207px;
        }
        .auto-style13 {
            width: 326px;
        }
        .auto-style25 {
            width: 263px;
            height: 25px;
        }
        .auto-style26 {
            width: 138px;
            height: 25px;
        }
        .auto-style4 {
            width: 138px;
        }
        .auto-style27 {
            width: 263px;
        }
        .auto-style28 {
            width: 101px;
        }
        .auto-style29 {
            width: 287px;
            height: 177px;
        }
        .auto-style30 {
            width: 287px;
            height: 207px;
        }
        .auto-style31 {
            width: 287px;
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
            <asp:Label ID="PageHeader" runat="server" Text="Depiler Pulpit" Font-Size ="XX-Large" Font-Bold="true"></asp:Label>
        </div>
        <div style ="text-align:center">
            <a href ="MillOverview.aspx">Go Back to Overview</a>
        </div>
        <div style="text-align:center">
            <table cellspacing ="10">
                <tr>
                    <td class="auto-style7">
                        <asp:ImageButton ID="IBACamOCR" runat="server" Imageurl="../Pictures/DepilerCam1.png" Height ="300px" OnClick="IBACamOCR_Click" ToolTip="BHW-HSMHMI-DP01" Width="300px" BorderColor="#FF3300"/>
                    </td>
                    <td class="auto-style29">
                        <table style="width: 329px">
                            <tr>
                                <td class="auto-style9">
                                    <asp:ImageButton ID="Camera1" runat="server" Imageurl="../Pictures/DepilerCam1.png" Height ="75px" OnClick="Camera_Click" ToolTip="Camera" Width="100px" BorderColor="#FF3300"/>
                                </td>
                                <td class="auto-style10">
                                    <asp:ImageButton ID="Camera2" runat="server" Imageurl="../Pictures/DepilerCam2.png" Height ="75px" OnClick="Camera_Click" ToolTip="Camera" Width="100px"  BorderColor="#FF3300"/>
                                </td>
                                <td class="auto-style28">
                                    <asp:ImageButton ID="Camera3" runat="server" Imageurl="../Pictures/DepilerCam3.png" Height ="75px" OnClick="Camera_Click" ToolTip="Camera" Width="100px"  BorderColor="#FF3300"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                                    <asp:ImageButton ID="DPSIT1" runat="server" Imageurl="../Pictures/AssignVerify.png" Height ="75px" OnClick="DPSIT1_Click" ToolTip="HMTC-DPSIT1" Width="100px" BorderColor="#FF3300" />
                                </td>
                                <td class="auto-style10">
                                    <asp:ImageButton ID="DPSIT2" runat="server" Imageurl="../Pictures/FurnaceMap.png" Height ="75px" OnClick="DPSIT2_Click" ToolTip="HMTC-DPSIT2" Width="100px" BorderColor="#FF3300" />
                                </td>
                                <td class="auto-style28">
                                    <asp:ImageButton ID="DP1" runat="server" Imageurl="../Pictures/ITComputer.png" Height ="75px" OnClick="Level3_Click" ToolTip="Level 3 Computer" Width="100px" BorderColor="#FF3300" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style11">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ImageButton ID="DPControl" runat="server" Imageurl="../Pictures/DepilerControl.png" Height ="168px" OnClick="Controls_Click" ToolTip="Depiler Controls" Width="164px" BorderColor="#FF3300"/>
                    </td>
                    <td class="auto-style30">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Desk1" runat="server" Imageurl="../Pictures/(fixed)chairfaceup.png" Height ="151px" ToolTip="Depiler Operator" Width="182px"/>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Depiler Operator" ></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:ImageButton ID="Level3" runat="server" Imageurl="../Pictures/RMTrackingleft.png" Height ="168px" OnClick="DP01_Click" ToolTip="HMTC-DP01" Width="164px" BorderColor="#FF3300"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT IPAddresses.IPAddress4, IPAddresses.hostName, IPAddresses.runApp, IPAddresses.description, Subnets.network, IPAddresses.terminalServer, IPAddresses.computerType, IPAddresses.IBAUser FROM IPAddresses INNER JOIN Subnets ON IPAddresses.millArea = Subnets.millArea AND IPAddresses.subnet = Subnets.subnet WHERE (IPAddresses.hostName &lt;&gt; 'gateway') AND (IPAddresses.hostName = @hostName)" ConnectionString="<%$ ConnectionStrings:networksConnectionString %>" OnSelecting="SqlDataSource1_Selecting">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ActualCompName2" Name="hostName" PropertyName="Text" DefaultValue="HMTC-FM01" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style31" >
                        <table rules="none" style="width: 447px">
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
                                            <asp:BoundField DataField="IBAUser" HeaderText="IBA User:" NullDisplayText="N/A" SortExpression="IBAUser" />
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
                                    <asp:TextBox ID="CompNameLabel" runat="server" Text ="Computer Name:" width ="190px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="ActualCompName" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style25">
                                    <asp:TextBox ID="CompAddressLabel" runat="server" Text ="Computer Address:" width ="190px" style="margin-left: 0px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="ActualCompAddress" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                               <td style="text-align:right" class="auto-style27">
                                    <asp:TextBox ID="IPAddressLabel" runat="server" Text ="IP Address:" width ="190px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td  class="auto-style10">
                                    <asp:TextBox ID="ActualIPAddress" runat="server" Text="?" width ="150px " style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style25">
                                    <asp:TextBox ID="CompTypeLabel" runat="server" Text ="Type of Computer:" width ="190px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style26">
                                    <asp:TextBox ID="ActualCompType" runat="server" Text="?" width ="150px" style="margin-left: 12px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right; vertical-align:top" class="auto-style27">
                                    <asp:TextBox ID="CompRunningLabel" runat="server" Text ="Running on this Computer:" width ="190px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td style="vertical-align:top" class="auto-style4">
                                    <textarea rows="4" cols="10" runat ="server" id ="ActualCompRunning" style="margin-left:12px; width:150px" name="S1" readonly="readonly" >?</textarea>
                                </td>
                           </tr>
                        </table>
                    </td>
                    <td class="auto-style13" >
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
