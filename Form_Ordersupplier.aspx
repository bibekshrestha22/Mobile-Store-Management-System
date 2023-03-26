<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Ordersupplier.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Ordersupplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Suppleir Page</title>
    <style type="text/css">
        .auto-style1 {
            height: 80px;
        }
         .auto-style6 {
              text-align: right;
        }
        .auto-style9 {
            color: #CC3300;
        }
        .auto-style10 {
            width: 100%;
            border: 3px solid #FFFFFF;
        }
        .auto-style11 {
            height: 32px;
        }
        .auto-style12 {
            width: 252px;
        }
        .auto-style13 {
            height: 32px;
            width: 252px;
        }
        .auto-style14 {
            width: 521px;
        }
        .auto-style15 {
            height: 32px;
            width: 521px;
        }
        .auto-style16 {
            width: 252px;
            font-size: medium;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            height: 15px;
        }
        .auto-style19 {
            color: #FFFFFF;
        }
        .auto-style20 {
            text-align: right;
            color: #FFFFFF;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.9.1.intellisense.js"></script>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="height:1090px; background-image:url(Images/f.png)">
    <form id="form1" runat="server">
        
          <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="Homepage.aspx">Mobile Store Management System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     <li class="nav-item">
        <a class="nav-link" href="Form_Repair.aspx">Repair Records</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Form_Purchase.aspx">Purchase</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Form_Sales.aspx">Sales</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Form_Customer.aspx">Customers</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" id="supplier" href="Form_Supplier.aspx">Supplier</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Form_Product.aspx">Products</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Form_Payment.aspx">Payment</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Form_Receipt.aspx">Receipt</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Form_Ordersupplier.aspx">Order Supplier</a>
      </li>
    </ul>
     
  </div>
</nav>
        </div>
            <div class="auto-style6" style="background-color:#303030">
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <a runat="server"  href="Form_Pwchange.aspx" class="auto-style9"><strong>Welcome, <%: Session["new"].ToString() %>!</strong></a>
                <a runat="server" href="#" data-toggle="modal" data-target="#logoff">Signout?</a><div class="modal" id="logoff" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: blue; color: black">
                        <button class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Log out?</h4>
                    </div>
                     <div class="modal-body" style="background-color: white; color: black">
                        <h4>Are You Sure you want to sighnout?</h4>
                        <asp:Button ID="btnyes" runat="server" Text="Yes" CssClass="btn btn-info btn-sm" OnClick="btnyes_Click" />
                        <asp:Button ID="btnNo" runat="server" Text="No" CssClass="btn btn-info btn-sm" data-dismiss="modal" />
                    </div>
            </div>
            </div>
        <div>
        </div>
        </div>
                &nbsp;&nbsp;&nbsp;&nbsp;
                </div>
        
           
       
        <div>
            <nav class="auto-style18">
                <%-- <a class="navbar-brand" href="#">Navbar</a>--%>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent1">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
        </ul>
        </div>
   
  </div>
        <h1 class="auto-style17" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF">Order Products From Supplier </h1>








        <div class="auto-style1">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"><asp:Label ID="lbloid" runat="server" Text="lbloid" Visible="False"></asp:Label>
                        <asp:Button ID="btnoid" runat="server" CssClass="btn  btn-info " OnClick="btnoidd" Text="Get Order ID" Width="171px" style="height: 40px" Visible="False" />
                    </td>
                    <td class="auto-style16" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: large;">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
            <asp:TextBox ID="txt_oid" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="2" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bolder; color: #FFFFFF">Supplier Name-<asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
            <asp:DropDownList ID="ddlsname" runat="server" DataSourceID="supplierdatasource" DataTextField="Id" DataValueField="Id">
            </asp:DropDownList>
            <asp:Button ID="btnname" runat="server" CssClass="btn  btn-info " OnClick="btnnamee" Text="Get Name" Width="171px" style="height: 40px" />
                    </td>
                    <td>
            <asp:SqlDataSource ID="supplierdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Id], [Suppliername] FROM [Supplier]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: large;">&nbsp;</td>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: large;">
            <asp:Label ID="lblname0" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_date" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: large;">
            <asp:Label ID="lblname1" runat="server" Text="Product"></asp:Label>
                    </td>
                    <td>
            <asp:DropDownList ID="ddlpname" runat="server" DataSourceID="productdatasource" DataTextField="Name" DataValueField="PId">
            </asp:DropDownList>
            <asp:Button ID="btnrate" runat="server" CssClass="btn  btn-info " OnClick="btnratee" Text="Get Rate" Width="171px" style="height: 40px" />
                    </td>
                    <td>
            <asp:SqlDataSource ID="productdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [PId], [Name] FROM [Totalproduct]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: large;">
            <asp:Label ID="lblname2" runat="server" Text="Rate"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_rate" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: large;">
            <asp:Label ID="lblname3" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_quantity" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style11">
            <asp:Button ID="btnAdd" runat="server" CssClass="btn  btn-info " OnClick="btnAdds" Text="Add Order" Width="171px" style="height: 40px" />
            <asp:Label ID="lblkhatra" runat="server" Text="Warning" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="Ordersupplierdatasource" Height="291px" Width="100%" DataKeyNames="OId">
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Pname" HeaderText="Ordered Product" SortExpression="Pname" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="SId" HeaderText="Supplier ID" SortExpression="SId" />
                    <asp:CommandField HeaderText="Operations" ShowDeleteButton="True" ShowEditButton="True">
                    <ControlStyle CssClass="btn btn-secondary" />
                    </asp:CommandField>
                  
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
            <asp:SqlDataSource ID="Ordersupplierdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" DeleteCommand="DELETE FROM [Ordersupplier] WHERE [OId] = @OId" InsertCommand="INSERT INTO [Ordersupplier] ([OId], [Date], [PId], [Pname], [Quantity], [Rate], [Amount], [SId]) VALUES (@OId, @Date, @PId, @Pname, @Quantity, @Rate, @Amount, @SId)" SelectCommand="SELECT * FROM [Ordersupplier] ORDER BY [Date] DESC" UpdateCommand="UPDATE [Ordersupplier] SET [Date] = @Date, [PId] = @PId, [Pname] = @Pname, [Quantity] = @Quantity, [Rate] = @Rate, [Amount] = @Amount, [SId] = @SId WHERE [OId] = @OId">
                <DeleteParameters>
                    <asp:Parameter Name="OId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="OId" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="PId" Type="String" />
                    <asp:Parameter Name="Pname" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Rate" Type="Int32" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                    <asp:Parameter Name="SId" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="PId" Type="String" />
                    <asp:Parameter Name="Pname" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Rate" Type="Int32" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                    <asp:Parameter Name="SId" Type="String" />
                    <asp:Parameter Name="OId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <h1 class="auto-style17" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: xx-large">Orders From Customers</h1>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="300px" Width="100%">
                <Columns>
                    <asp:BoundField DataField="OrderDate" HeaderText="Order Date" SortExpression="OrderDate" />
                    <asp:BoundField DataField="CID" HeaderText="Customer ID" SortExpression="CID" />
                    <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" SortExpression="CustomerName" />
                    <asp:BoundField DataField="OrderingProduct" HeaderText="OrderingProduct" SortExpression="OrderingProduct" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" InsertCommand="INSERT INTO [Orders] ([Id], [OrderDate], [CustomerName], [OrderingProduct], [PID], [Quantity], [Rate], [Total], [CID]) VALUES (@Id, @OrderDate, @CustomerName, @OrderingProduct, @PID, @Quantity, @Rate, @Total, @CID)" SelectCommand="SELECT * FROM [Orders] ORDER BY [OrderDate] DESC">
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter DbType="Date" Name="OrderDate" />
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="OrderingProduct" Type="String" />
                    <asp:Parameter Name="PID" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Rate" Type="Int32" />
                    <asp:Parameter Name="Total" Type="Int32" />
                    <asp:Parameter Name="CID" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
