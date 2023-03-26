<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Product.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            margin-right: 0px;
            margin-top: 0px;
            margin-left: 0px;
        }
          
        .auto-style6 {
              text-align: right;
        }
        .auto-style9 {
            color: #CC3300;
            text-align: right;
        }
        .auto-style10 {
            width: 100%;
            height: 302px;
        }
        .auto-style11 {
            width: 558px;
        }
        .auto-style12 {
            color: #FFFFFF;
        }
        .auto-style13 {
            color: #00FF00;
        }
        .auto-style14 {
            width: 133px;
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
<body style="background-image:url(Images/f.png)">

    <link href="Content/bootstrap.css" rel="stylesheet" />
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
            <h1 class="auto-style1" style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; color: #FFFFFF">ADD Product Details</h1>
            <nav class="auto-style4">
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





                <br />
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large" class="auto-style14">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large" class="auto-style14">
        <asp:Label ID="Label5" runat="server" Text="Name" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large">
            <asp:TextBox ID="txt_name" runat="server" Width="187px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large" class="auto-style14">
        <asp:Label ID="Label2" runat="server" Text="Quantity" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large">
        <asp:TextBox ID="txt_quantity" runat="server" Width="189px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large" class="auto-style14">
        <asp:Label ID="Label3" runat="server" Text="Rate" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large">
        <asp:TextBox ID="txt_rate" runat="server" Width="189px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large" class="auto-style14">
        <asp:Label ID="Label7" runat="server" Text="Selling Rate" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large">
        <asp:TextBox ID="txt_srate" runat="server" Width="189px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large" class="auto-style14">
        <asp:Label ID="Label6" runat="server" Text="Image" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large">
        <asp:FileUpload ID="Imageupload" runat="server" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td colspan="2">
        <asp:Label ID="lblSucces" runat="server" Text="The Product has been successfully added!" Visible="False" CssClass="auto-style13"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>
            <asp:Button ID="btnAdd" runat="server"  Text="ADD" CssClass="btn  btn-info " Width="73px" OnClick="btnAdd_Click"/>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>



        <br />
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="PId" DataSourceID="Productdatasource" ForeColor="Black" GridLines="Horizontal" Height="155px" Width="100%" CssClass="auto-style3">
                        <Columns>
                            <asp:BoundField DataField="PId" HeaderText="Product ID" ReadOnly="True" SortExpression="PId" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                            <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                            <asp:BoundField DataField="Sellingrate" HeaderText="Sellingrate" SortExpression="Sellingrate" />
                            <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                                <ControlStyle Height="200px" Width="200px" />
                            </asp:ImageField>
                            <asp:CommandField ShowEditButton="True" ButtonType="Button" HeaderText="Operations" >
                            <ControlStyle CssClass="btn btn-secondary" />
                            </asp:CommandField>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                            <ControlStyle CssClass="btn btn-danger" />
                            </asp:CommandField>
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
                    <asp:SqlDataSource ID="Productdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" DeleteCommand="DELETE FROM [Totalproduct] WHERE [PId] = @PId" InsertCommand="INSERT INTO [Totalproduct] ([PId], [Name], [Quantity], [Rate], [Sellingrate], [Image]) VALUES (@PId, @Name, @Quantity, @Rate, @Sellingrate, @Image)" SelectCommand="SELECT * FROM [Totalproduct]" UpdateCommand="UPDATE [Totalproduct] SET [Name] = @Name, [Quantity] = @Quantity, [Rate] = @Rate, [Sellingrate] = @Sellingrate, [Image] = @Image WHERE [PId] = @PId">
                        <DeleteParameters>
                            <asp:Parameter Name="PId" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="PId" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="Rate" Type="Int32" />
                            <asp:Parameter Name="Sellingrate" Type="Int32" />
                            <asp:Parameter Name="Image" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="Rate" Type="Int32" />
                            <asp:Parameter Name="Sellingrate" Type="Int32" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="PId" Type="String" />
                        </UpdateParameters>
        </asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    </form>
</body>
</html>
