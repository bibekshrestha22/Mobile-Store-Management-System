<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Order.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            text-align: right;
            height: 72px;
            margin-bottom: 0px;
        }
        .auto-style5 {
            width: 100%;
            height: 373px;
            border: 2px solid #FFFFFF;
        }
        .auto-style6 {
            font-size: large;
            color: #FFFFFF;
            background-color: #666666;
        }
        .auto-style7 {
            color: #000000;
            font-size: large;
            background-color: #666666;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
        .auto-style10 {
            height: 45px;
        }
        .auto-style12 {
            width: 291px;
        }
        .auto-style13 {
            color: #CCFFFF;
        }
        .auto-style14 {
            background-color: #666666;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style16 {
            color: #FFFFFF;
            background-color: #666666;
            font-size: x-large;
        }
        .auto-style17 {
            height: 36px;
        }
        .auto-style18 {
            width: 291px;
            height: 36px;
        }
        .auto-style19 {
            background-color: #666666;
            font-size: x-large;
        }
        .auto-style20 {
            color: #0000FF;
        }
        .auto-style22 {
            font-size: large;
        }
        .auto-style23 {
            font-size: large;
            background-color: #999999;
        }
    </style>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.9.1.intellisense.js"></script>
    <script src="Scripts/jquery-1.9.1.js"></script>
     <script src="Scripts/jquery-3.0.0.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-image:url(Images/f.png)">
    <form id="form1" runat="server">
        <h1 class="auto-style4" style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; background-color:##808B96; text-decoration: blink; color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/logo.png" Width="121px" Height="84px" OnClick="ImageButton1_Click" CssClass="auto-style3" />
        </h1>
        <h2 class="auto-style1" style="color: #FFFFFF; font-family: 'Times New Roman', Times, serif">Please select the ordering product </h2>
        <div>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style10" colspan="2" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: 20px">
            &nbsp;&nbsp;
            <asp:Label ID="lbloid" runat="server" Text="New Order Id"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="GetOrderID" runat="server"  Text="Get Order ID" CssClass="btn  btn-info " Width="131px" OnClick="bntGetId_Click" Height="32px"/>
                    </td>
                    <td class="auto-style10">
            <asp:Label ID="lblGetOrderID" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: 20px">
            <asp:Label ID="Label2" runat="server" Text="Order Date"></asp:Label>
                    </td>
                    <td class="auto-style17">
            <asp:TextBox ID="txt_date" runat="server" TextMode="Date" Width="239px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style12" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: 20px">
            <asp:Label ID="Label6" runat="server" Text="Customer ID"></asp:Label>
                    </td>
                    <td>
            <asp:DropDownList ID="ddlCustomerID" runat="server" DataSourceID="SqlDataSource3" DataTextField="Id" DataValueField="Id" Height="36px" Width="251px">
            </asp:DropDownList>
                        </script>
            <asp:Button ID="btnSave0" runat="server"  Text="Get Info" CssClass="btn  btn-info " Width="131px" OnClick="CustomerInfo_Click"/>
                    &nbsp;<span class="auto-style14"> </span><span class="auto-style13"><span class="auto-style19">Name: </span>
            <asp:Label ID="lblCustomerName" runat="server" Text="Label" CssClass="auto-style16"></asp:Label>
                        </span>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style12" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: 20px">
            <asp:Label ID="Label3" runat="server" Text="Ordering Product"></asp:Label>
                    </td>
                    <td>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="PId" Width="252px">
            </asp:DropDownList>
            <asp:Button ID="btnSave1" runat="server"  Text="Info" CssClass="btn  btn-info " Width="131px" OnClick="getrate_Click"/>
                    </td>
                    <td>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Name], [PId] FROM [Totalproduct]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style12" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: 20px">
            <asp:Label ID="Label7" runat="server" Text="Rate"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_rate" runat="server" TextMode="Number" Enabled="False" Width="241px"></asp:TextBox>
                    </td>
                    <td><asp:TextBox ID="txtoid" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style12" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: 20px">
            <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_quantity" runat="server" TextMode="Number" Width="242px"></asp:TextBox>
                    </td>
                    <td>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Id] FROM [customers]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>
            <asp:Button ID="btnSave" runat="server"  Text="ADD" CssClass="btn  btn-info " Width="131px" OnClick="btnSave_Click"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style15">
            <asp:Label ID="lblDanger" runat="server" Text="Label" Visible="False" CssClass="auto-style6"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="Orderdatasource" Height="166px" Width="100%" CssClass="auto-style3">
                <Columns>
                    <asp:BoundField DataField="OrderDate" HeaderText="Order Date" SortExpression="OrderDate" />
                    <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" SortExpression="CustomerName" />
                    <asp:BoundField DataField="OrderingProduct" HeaderText="Ordering Product" SortExpression="OrderingProduct" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    <asp:BoundField DataField="CID" HeaderText="Customer Id" SortExpression="CID" />
                      <asp:TemplateField HeaderText="Operations"><ItemTemplate>
                      <asp:Button ID="btndelete" runat="server" text="Delete" CommandName="Delete" CssClass="btn  btn-danger " Tooltip="Delete" Width="70px" Height="30px" OnClick="btndelete1" runalt="server" />
                                       </ItemTemplate>
                        </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
                
              
            </asp:GridView>
            <asp:SqlDataSource ID="Orderdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" DeleteCommand="Delete From Orders WHERE Id=@Id" SelectCommand="SELECT * FROM Orders Where Id=@Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbloid" Name="Id" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblWarning" runat="server" Text="Label" CssClass="auto-style7" Visible="False"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style20"><strong style="background-color: #FFFFFF"><span class="auto-style22">Total Rs : </span>
            <asp:Label ID="total" runat="server" CssClass="auto-style23" Text="Amount"></asp:Label>
            </strong></span>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnFinal" runat="server"  Text="Confirm Order" CssClass="btn  btn-info " Width="147px" OnClick="btnFinal_Click"/>
        </div>
    </form>
</body>
</html>
