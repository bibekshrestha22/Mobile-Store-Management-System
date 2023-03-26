<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Customer.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            height: 771px;
            text-align: center;
        }
        .auto-style3 {
            text-align: right;
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
            text-align: center;
            width: 791px;
        }
        .auto-style12 {
            color: #FFFFFF;
        }
        .auto-style13 {
            width: 791px;
            text-align: left;
        }
        .auto-style14 {
            color: #0000FF;
        }
        .auto-style15 {
            height: 46px;
        }
        .auto-style16 {
            text-align: right;
            height: 46px;
        }
        .auto-style17 {
            text-align: center;
            width: 791px;
            height: 46px;
        }
        .auto-style18 {
            height: 32px;
        }
        .auto-style19 {
            width: 791px;
            height: 32px;
        }
        .auto-style20 {
            color: #FF3300;
        }
    </style>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-image:url(Images/f.png)" >
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






        <div class="auto-style1" style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; color: #FFFFFF">
            Enter details to add a new Customer !</div>
        <div class="auto-style3"><span class="auto-style12">&nbsp;Enter Name to Search Customer </span>&nbsp;<asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblbook" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Button ID="btnrefresh" runat="server"  Text="Refresh" CssClass="btn  btn-info " OnClick="btnrefresh_Click"/>
            &nbsp;<asp:Button ID="btnSearch" runat="server"  Text="Search" CssClass="btn  btn-info " OnClick="btnSelectCategory_Click"/>
            </div>
        <div class="auto-style2">

            <br />
            <table class="auto-style10">
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="Customer Name" CssClass="auto-style12"></asp:Label>
                    </td>
                    <td class="auto-style11">
            <asp:TextBox ID="txt_name" runat="server" Height="34px" Width="245px"></asp:TextBox>
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style20" Text="*"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16">

            <asp:Label ID="Label4" runat="server" Text="Age" CssClass="auto-style12"></asp:Label>
                    </td>
                    <td class="auto-style17">
            <asp:TextBox ID="txt_age" runat="server" TextMode="Number" Height="37px" Width="240px"></asp:TextBox>
                        <asp:Label ID="Label11" runat="server" CssClass="auto-style20" Text="*"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">

            <asp:Label ID="Label5" runat="server" Text="Contact" CssClass="auto-style12"></asp:Label>
                    </td>
                    <td class="auto-style11"><asp:TextBox ID="txt_contact" runat="server" TextMode="Phone" Height="39px" Width="241px"></asp:TextBox>
                        <asp:Label ID="Label12" runat="server" CssClass="auto-style20" Text="*"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">

            <asp:Label ID="Label8" runat="server" Text="Address" CssClass="auto-style12"></asp:Label>
                    </td>
                    <td class="auto-style11"><asp:TextBox ID="txt_address" runat="server" Height="37px" Width="241px"></asp:TextBox>
                        <asp:Label ID="Label13" runat="server" CssClass="auto-style20" Text="*"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">

            <asp:Label ID="Label6" runat="server" Text="Email" CssClass="auto-style12"></asp:Label>
                    </td>
                    <td class="auto-style11">
            &nbsp;<asp:TextBox ID="txt_email" runat="server" TextMode="Email" Height="37px" Width="239px"></asp:TextBox>
                        &nbsp;<br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">

            <asp:Label ID="Label9" runat="server" Text="Balance" CssClass="auto-style12"></asp:Label>
                    </td>
                    <td class="auto-style11">
            <asp:TextBox ID="txt_balance" runat="server" TextMode="Number" Height="37px" Width="233px">0</asp:TextBox>
                        <asp:Label ID="Label14" runat="server" CssClass="auto-style20" Text="*"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">

            <asp:Label ID="Label7" runat="server" Text="Image" CssClass="auto-style12"></asp:Label>
                    </td>
                    <td class="auto-style11">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" CssClass="btn btn-secondary" runat="server" Height="40px" />
                        <asp:Label ID="Label15" runat="server" CssClass="auto-style20" Text="*"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style13">
            <asp:Label ID="lblSucces" runat="server" Text="successfully added !!" Visible="False" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">
            <asp:Button ID="btnSave" runat="server"  Text="SAVE" CssClass="btn  btn-info " OnClick="Button1_Click" Width="249px"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Customerdatasource" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="3" Width="100%" BorderStyle="None">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" NullDisplayText="default@gmail.com" />
                    <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image" NullImageUrl="~/Images/login-button-blue-i8.png">
                        <ControlStyle Height="200px" Width="200px" />
                    </asp:ImageField>
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" HeaderText="Operations" ShowEditButton="True"  >
                    <ControlStyle CssClass="btn btn-secondary" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="Customerdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" DeleteCommand="DELETE FROM [customers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [customers] ([Id], [Name], [Age], [Contact], [Address], [Email], [Balance], [Image]) VALUES (@Id, @Name, @Age, @Contact, @Address, @Email, @Balance, @Image)" SelectCommand="SELECT * FROM [customers]" UpdateCommand="UPDATE [customers] SET [Name] = @Name, [Age] = @Age, [Contact] = @Contact, [Address] = @Address, [Email] = @Email, [Balance] = @Balance, [Image] = @Image WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Balance" Type="Int32" />
                    <asp:Parameter Name="Image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Balance" Type="Int32" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <br />
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
