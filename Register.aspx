<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 74px;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            height: 1241px;
            text-align: center;
        }
        .auto-style4 {
            margin-left: 11px;
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
            width: 539px;
        }
        .auto-style12 {
            height: 32px;
        }
        .auto-style13 {
            width: 539px;
            height: 32px;
        }
        .auto-style14 {
            color: #FFFFFF;
        }
        .auto-style15 {
            width: 539px;
            color: #FFFFFF;
        }
        .auto-style16 {
            margin-left: 0;
        }
        .auto-style17 {
            width: 501px;
        }
        .auto-style18 {
            height: 32px;
            width: 501px;
        }
        .auto-style21 {
            width: 373px;
            text-align: left;
        }
        .auto-style22 {
            height: 32px;
            width: 373px;
            text-align: left;
        }
        .auto-style23 {
            width: 373px;
        }
        .auto-style24 {
            margin-left: 0px;
        }
        .auto-style25 {
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
<body style="background-image:url(Images/f.png)">
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

        <div class="auto-style1" style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: bolder; color: #FFFFFF">
            Registration Form</div>
        <div class="auto-style2">

            <table class="auto-style10">
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style11">

            <asp:Label ID="Label1" runat="server" Text="First Name" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td class="auto-style21">
            <asp:TextBox ID="txt_fname" runat="server" Height="31px" Width="292px" CssClass="auto-style16"></asp:TextBox>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style11">
            <asp:Label ID="Label2" runat="server" Text="Last Name" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td class="auto-style21">
            <asp:TextBox ID="txt_lname" runat="server" Height="30px" Width="291px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style11">
            <asp:Label ID="Label3" runat="server" Text="Email" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td class="auto-style21">
            <asp:TextBox ID="txt_email" runat="server" TextMode="Email" Height="34px" Width="292px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style11">
            <asp:Label ID="Label4" runat="server" Text="Phone N.o" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td class="auto-style21">
            <asp:TextBox ID="txt_phone" runat="server" BackColor="White" TextMode="Phone" Height="30px" Width="292px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style13">
            <asp:Label ID="Label5" runat="server" Text="Username" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td class="auto-style22">
            <asp:TextBox ID="txt_username" runat="server" Height="31px" Width="291px" CssClass="auto-style3"></asp:TextBox>
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style15">Userlevel&nbsp;&nbsp;</td>
                    <td class="auto-style21">
            <asp:DropDownList ID="ddlist" runat="server" Height="29px" Width="295px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
            </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style11">
            <asp:Label ID="Label6" runat="server" Text="Password" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td class="auto-style21">
            <asp:TextBox ID="txt_confirm" runat="server" Width="292px" Height="29px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style13">
            <asp:Label ID="Label8" runat="server" Text="Confirm Password" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td class="auto-style22">
            <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="292px" CssClass="auto-style5" Height="31px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_confirm" ControlToValidate="txt_password" ErrorMessage="Note: Password dont match!!" Font-Bold="True" Font-Italic="True" Font-Names="Buxton Sketch" CssClass="auto-style25"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style13">
            <asp:Label ID="Label7" runat="server" Text="Recovery Password" CssClass="auto-style14"></asp:Label>
                    </td>
                    <td class="auto-style22">
            <asp:TextBox ID="txt_recovery" runat="server" TextMode="Number" Width="294px" CssClass="auto-style24" Height="31px">12345</asp:TextBox>
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style23">
            <asp:Button ID="btn_register" runat="server" Text="Register" OnClick="btn_register_Click" CssClass="btn btn-info" />

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style23">
            <asp:Label ID="labelwarning" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
           

            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="Usersdatasource" Height="135px" Width="100%" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="User ID" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                    <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="userlevel" HeaderText="Userlevel" SortExpression="userlevel" />
                    <asp:BoundField DataField="Recovery" HeaderText="Recovery" SortExpression="Recovery" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Operations" ButtonType="Button" >
                    <ControlStyle CssClass="btn btn-secondary" />
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

            <asp:SqlDataSource ID="Usersdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Login] ([Id], [Username], [Password], [Firstname], [Lastname], [Email], [Phone], [userlevel], [Recovery]) VALUES (@Id, @Username, @Password, @Firstname, @Lastname, @Email, @Phone, @userlevel, @Recovery)" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [Username] = @Username, [Password] = @Password, [Firstname] = @Firstname, [Lastname] = @Lastname, [Email] = @Email, [Phone] = @Phone, [userlevel] = @userlevel, [Recovery] = @Recovery WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Firstname" Type="String" />
                    <asp:Parameter Name="Lastname" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="Int64" />
                    <asp:Parameter Name="userlevel" Type="Int32" />
                    <asp:Parameter Name="Recovery" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Firstname" Type="String" />
                    <asp:Parameter Name="Lastname" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="Int64" />
                    <asp:Parameter Name="userlevel" Type="Int32" />
                    <asp:Parameter Name="Recovery" Type="String" />
                    <asp:Parameter Name="Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
