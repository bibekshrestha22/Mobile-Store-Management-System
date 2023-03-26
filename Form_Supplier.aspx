<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Supplier.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Supplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style6 {
              text-align: right;
        }
        .auto-style9 {
            color: #CC3300;
        }
        .auto-style10 {
            width: 100%;
            border: 2px solid #FFFFFF;
        }
        .auto-style11 {
            color: #FFFFFF;
        }
        .auto-style12 {
            width: 483px;
        }
        .auto-style13 {
            width: 483px;
            height: 42px;
        }
        .auto-style14 {
            height: 42px;
        }
        .auto-style15 {
            font-size: x-large;
            color: #FF0000;
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
<body style="height: 609px; background-image:url('Images/f.png')">
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
        <h1 style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; color: #FFFFFF" class="auto-style1">Enter Supplier Details</h1>
        
        
        
        
        
        
        
        
        <div>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td>
            <asp:Label ID="Label1" runat="server" Text="Supplier Name" CssClass="auto-style11"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_name" runat="server" Height="41px" Width="308px"></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text="*"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td>
            <asp:Label ID="Label2" runat="server" Text="Address" CssClass="auto-style11"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_address" runat="server" Height="39px" Width="308px"></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style15" Text="*"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td>
            <asp:Label ID="Label3" runat="server" Text="Contact" CssClass="auto-style11"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_contact" runat="server" TextMode="Phone" Height="40px" Width="307px"></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style15" Text="*"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td>
            <asp:Label ID="Label4" runat="server" Text="Email" CssClass="auto-style11"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_email" runat="server" TextMode="Email" Height="39px" Width="309px"></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td>
            <asp:Label ID="Label5" runat="server" Text="Balance" CssClass="auto-style11"></asp:Label>
                    </td>
                    <td><asp:TextBox ID="txt_balance" runat="server" TextMode="Number" Height="40px" Width="308px">0</asp:TextBox>

                        <asp:Label ID="Label9" runat="server" CssClass="auto-style15" Text="*"></asp:Label>

                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14">

            <asp:Label ID="lblWarning" runat="server" Text="Label"></asp:Label>

                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style14">

            <asp:Button ID="btnsave0" runat="server"  Text="Save" CssClass="btn  btn-info " Width="155px" OnClick="Button1_Click"/>

                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
            </table>
            <br />
                </div>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="Supplierdatasource" Height="306px" Width="100%" BorderStyle="None" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Supplier ID" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Suppliername" HeaderText="Supplier Name" SortExpression="Suppliername" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" NullDisplayText="Default@Email.com" />
                <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                <asp:CommandField ShowEditButton="True" ButtonType="Button" HeaderText="Operations" >
                <ControlStyle CssClass="btn btn-secondary" />
                </asp:CommandField>
                <asp:CommandField ShowDeleteButton="True" ButtonType="Button" >
                <ControlStyle CssClass="btn btn-danger" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="Supplierdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" DeleteCommand="DELETE FROM [Supplier] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Supplier] ([Id], [Suppliername], [Address], [Contact], [Email], [Balance]) VALUES (@Id, @Suppliername, @Address, @Contact, @Email, @Balance)" SelectCommand="SELECT * FROM [Supplier]" UpdateCommand="UPDATE [Supplier] SET [Suppliername] = @Suppliername, [Address] = @Address, [Contact] = @Contact, [Email] = @Email, [Balance] = @Balance WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="Suppliername" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Contact" Type="Int64" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Balance" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Suppliername" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Contact" Type="Int64" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Balance" Type="Int32" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
      
    </form>
        
         
</body>
</html>
