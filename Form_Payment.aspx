<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Payment.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment To Suppliers</title>
    <style type="text/css">
        .auto-style1 {
            height: 875px;
        }
        .auto-style2 {
            text-align: center;
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
            border: 3px solid #FFFFFF;
        }
        .auto-style11 {
            width: 287px;
        }
        .auto-style14 {
            width: 287px;
            height: 47px;
        }
        .auto-style15 {
            height: 47px;
        }
        .auto-style16 {
            width: 287px;
            height: 46px;
        }
        .auto-style17 {
            height: 46px;
        }
        .auto-style18 {
            font-size: large;
            color: #CCFFFF;
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
        <h1 class="auto-style2">Payment To Suppliers</h1>





        <div class="auto-style1">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style17">
            <asp:Label ID="lbldate" runat="server" Text="Date" CssClass="auto-style18"></asp:Label>
                    </td>
                    <td class="auto-style17">
            <asp:TextBox ID="txt_date" runat="server" TextMode="Date"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="Label1" runat="server" Text="Select Supplier"></asp:Label>
                    </td>
                    <td class="auto-style15" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF"><asp:DropDownList ID="ddlsupplier" runat="server" DataSourceID="PaySupplierdatasource" DataTextField="Suppliername" DataValueField="Id" Width="348px">
            </asp:DropDownList>
            <asp:Button ID="btninfoo" runat="server"  Text="Get Info" CssClass="btn  btn-info " Width="108px" OnClick="btninfo"/>
                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="Label2" runat="server" Text="Supplier Id"></asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF"><asp:Label ID="lblsid" runat="server" Text="ID"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="Label3" runat="server" Text="Previous Balance-"></asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="lblpb" runat="server" Text="Balance"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="lblpb0" runat="server" Text="Amount Received"></asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:TextBox ID="txt_receive" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:SqlDataSource ID="PaySupplierdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Suppliername], [Id] FROM [Supplier]"></asp:SqlDataSource>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="lblkhatra" runat="server" Text="Information" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
                        &nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Button ID="btnreceive" runat="server"  Text="Receive" CssClass="btn  btn-info " Width="160px" OnClick="btnreceivve"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="PId" DataSourceID="Supplierdatasource" Height="11%" Width="100%" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" SortExpression="PId" />
                    <asp:BoundField DataField="SID" HeaderText="SID" SortExpression="SID" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
            <asp:SqlDataSource ID="Supplierdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" DeleteCommand="DELETE FROM [Payment] WHERE [PId] = @PId" InsertCommand="INSERT INTO [Payment] ([PId], [SID], [Date], [Amount]) VALUES (@PId, @SID, @Date, @Amount)" SelectCommand="SELECT * FROM [Payment] ORDER BY [Date] DESC" UpdateCommand="UPDATE [Payment] SET [SID] = @SID, [Date] = @Date, [Amount] = @Amount WHERE [PId] = @PId">
                <DeleteParameters>
                    <asp:Parameter Name="PId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PId" Type="String" />
                    <asp:Parameter Name="SID" Type="String" />
                    <asp:Parameter Name="Date" Type="DateTime" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SID" Type="String" />
                    <asp:Parameter Name="Date" Type="DateTime" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                    <asp:Parameter Name="PId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
