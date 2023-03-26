<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Purchasereturns.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Purchasereturns" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchase Returns</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 711px;
        }
        .auto-style3 {
            width: 100%;
            border: 2px solid #FFFFFF;
        }
        .auto-style6 {
              text-align: right;
        }
        .auto-style9 {
            color: #CC3300;
        }

        .auto-style11 {
            width: 168px;
        }
        .auto-style12 {
            width: 2648px;
        }
        .auto-style13 {
            width: 168px;
            height: 32px;
        }
        .auto-style14 {
            width: 1170px;
            height: 32px;
            text-align: center;
        }
        .auto-style16 {
            width: 3425px;
            height: 32px;
        }
        .auto-style17 {
            width: 1170px;
            text-align: center;
        }
        .auto-style18 {
            color: #FFFFFF;
        }

        .auto-style19 {
            width: 744px;
        }
        .auto-style20 {
            height: 32px;
            width: 744px;
        }
        .auto-style27 {
            width: 343px;
            text-align: right;
        }
        .auto-style29 {
            height: 32px;
            width: 2648px;
        }
        .auto-style30 {
            width: 3425px;
        }
        .auto-style32 {
            width: 168px;
            height: 36px;
        }
        .auto-style33 {
            width: 1170px;
            text-align: center;
            height: 36px;
        }
        .auto-style34 {
            width: 2648px;
            height: 36px;
        }
        .auto-style35 {
            width: 3425px;
            height: 36px;
        }
        .auto-style37 {
            width: 744px;
            height: 36px;
        }
        .auto-style38 {
            width: 3555px;
        }
        .auto-style39 {
            height: 32px;
            width: 3555px;
        }
        .auto-style40 {
            width: 3555px;
            height: 36px;
        }
        .auto-style41 {
            width: 1170px;
        }
        .auto-style42 {
            width: 1170px;
            text-align: left;
        }
        .auto-style43 {
            text-align: justify;
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
<body style="height: 875px; background-image:url('Images/f.png')">
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






        <h1 class="auto-style1" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF">Purchase Returns</h1>
        <div class="auto-style2">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style11">
            <asp:Button ID="btnpridd" runat="server"  Text="Get Id" CssClass="btn  btn-info " Width="191px" OnClick="btnprid"/>
                    </td>
                    <td class="auto-style43" colspan="4" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
                        PRID:
            <asp:Label ID="lblprid" runat="server" Text="Purchase Returns ID"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlpurchaseid" runat="server" DataSourceID="purchaseiddatasource" DataTextField="Id" DataValueField="Id" Width="337px" Height="48px">
            </asp:DropDownList>
            <asp:Button ID="btninfoo" runat="server"  Text="Get Info" CssClass="btn  btn-info " Width="171px" OnClick="btninfo"/>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF" class="auto-style19">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style43" colspan="4" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
                        &nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF" class="auto-style19">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF" class="auto-style41">Item: <asp:Label ID="lblpid" runat="server" Text="Purchased Item"></asp:Label>
                    </td>
                    <td class="auto-style12" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
                        Rate:
            <asp:Label ID="lblrate" runat="server" Text="Rate"></asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF" class="auto-style30">
                        Purchased Quantity:<asp:Label ID="lblquantity" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF" class="auto-style38">
                        Supplier: <asp:Label ID="lblsname" runat="server" Text="Supplier Name"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Button ID="btnbalancee" runat="server"  Text="Get Balance" CssClass="btn  btn-info " Width="188px" OnClick="btnbalance"/>
                    </td>
                    <td class="auto-style42" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
                        Balance: <asp:Label ID="lblbalance" runat="server" Text="Balance"></asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF" class="auto-style12">
                        Total Quantity:<asp:Label ID="lbltquantity" runat="server" Text="Total quantity" CssClass="auto-style18"></asp:Label>
                    </td>
                    <td class="auto-style30" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
                        &nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF" class="auto-style38">
            <asp:Label ID="lblbalance0" runat="server" Text="Remaining balance" Visible="False"></asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF" class="auto-style19">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td class="auto-style14">
            <asp:TextBox ID="txt_date" runat="server" TextMode="Date" Height="36px" Width="237px"></asp:TextBox>
                    </td>
                    <td class="auto-style29"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="Label2" runat="server" Text="Returning Quantity"></asp:Label>
                    </td>
                    <td class="auto-style17">
            <asp:TextBox ID="txt_quantity" runat="server" TextMode="Number" Height="36px" Width="229px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style32" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style34"></td>
                    <td class="auto-style35"></td>
                    <td class="auto-style40"></td>
                    <td class="auto-style37"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style17">
            <asp:Button ID="btndonee" runat="server"  Text="DONE" CssClass="btn  btn-info " Width="121px" OnClick="btndone" style="margin-top: 0; "/>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td colspan="4">
            <asp:Label ID="lblkhatra" runat="server" Text="Khatra" OnLoad="Page_Load" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="purchaseiddatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Id] FROM [Purchase]"></asp:SqlDataSource>
            <asp:TextBox ID="txt_prid" runat="server" TextMode="Number" Visible="False"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PRId" DataSourceID="Purchasereturnsdatasource" Height="249px" Width="100%">
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Pname" HeaderText="Product" SortExpression="Pname" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    <asp:BoundField DataField="Sname" HeaderText="Supplier Name" SortExpression="Sname" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" HeaderText="Operations" >
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
            <asp:SqlDataSource ID="Purchasereturnsdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" DeleteCommand="DELETE FROM [Purchasereturns] WHERE [PRId] = @PRId" InsertCommand="INSERT INTO [Purchasereturns] ([PRId], [Date], [PID], [Pname], [Quantity], [Rate], [Sname], [Amount]) VALUES (@PRId, @Date, @PID, @Pname, @Quantity, @Rate, @Sname, @Amount)" SelectCommand="SELECT * FROM [Purchasereturns] 
" UpdateCommand="UPDATE [Purchasereturns] SET [Date] = @Date, [PID] = @PID, [Pname] = @Pname, [Quantity] = @Quantity, [Rate] = @Rate, [Sname] = @Sname, [Amount] = @Amount WHERE [PRId] = @PRId">
                <DeleteParameters>
                    <asp:Parameter Name="PRId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PRId" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="PID" Type="String" />
                    <asp:Parameter Name="Pname" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Rate" Type="Int32" />
                    <asp:Parameter Name="Sname" Type="String" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="PID" Type="String" />
                    <asp:Parameter Name="Pname" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Rate" Type="Int32" />
                    <asp:Parameter Name="Sname" Type="String" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                    <asp:Parameter Name="PRId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
