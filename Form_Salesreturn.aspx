<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Salesreturn.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Salesreturn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sales Return Page</title>
    <style type="text/css">
        
        .auto-style2 {
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
            border: 3px solid #FFFFFF;
        }
        .auto-style11 {
            width: 406px;
        }
        .auto-style13 {
            height: 47px;
        }
        .auto-style14 {
            width: 210px;
        }
        .auto-style16 {
            width: 199px;
        }
        .auto-style18 {
            width: 170px;
        }
        .auto-style19 {
            width: 191px;
        }
        .auto-style20 {
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
<body style="height: 875px; background-image:url('Images/f.png')">
    <form id="form1" runat="server" class="auto-style1">
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









        <h1 class="auto-style2" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: xx-large">Sales Return Page</h1>

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









                <table class="auto-style10">
                    <tr>
                        <td class="auto-style13" colspan="3" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">PRID:
            <asp:Label ID="lblsrid" runat="server" Text="Purchase Returns ID"></asp:Label>
            <asp:Button ID="btnsid" runat="server"  Text="Get ID" CssClass="btn  btn-info" Width="171px" OnClick="btnsidd"/>
            
                            <br />
                        </td>
                        <td class="auto-style13" colspan="4" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">Select Sales ID:
            <asp:DropDownList ID="ddlsalesid" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" Height="38px" Width="323px">
            </asp:DropDownList>
            <asp:Button ID="btninfoo" runat="server"  Text="Get Info" CssClass="btn  btn-info " Width="171px" OnClick="btninfo"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">Item: <asp:Label ID="lblitem" runat="server" Text="Sold Item"></asp:Label>
                        </td>
                        <td class="auto-style19" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">Sold Rate:<asp:Label ID="lblrate" runat="server" Text="Sold Rate"></asp:Label>
                        </td>
                        <td class="auto-style14" colspan="2" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">Sold Quantity:<asp:Label ID="lblquantity" runat="server" Text="Qty"></asp:Label>
                        </td>
                        <td colspan="3" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">Customer ID:
            <asp:Label ID="lblcname" runat="server" Text="Customer Name"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">&nbsp;</td>
                        <td class="auto-style19" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">&nbsp;</td>
                        <td class="auto-style14" colspan="2" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">&nbsp;</td>
                        <td class="auto-style18" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">&nbsp;</td>
                        <td class="auto-style16" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="lblbalance0" runat="server" Text="Remaining balance" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">Balance: <asp:Label ID="lblbalance" runat="server" Text="Balance"></asp:Label>
                        </td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style14" colspan="2">
            <asp:Button ID="btnbalancee" runat="server"  Text="Get Balance" CssClass="btn  btn-info " Width="171px" OnClick="btnbalance"/>
                            <br />
                        </td>
                        <td colspan="2"><span class="auto-style20">Total Quantity</span>: <asp:Label ID="lbltquantity" runat="server" Text="Total quantity" CssClass="auto-style20"></asp:Label>
&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
                        </td>
                        <td class="auto-style19"></td>
                        <td class="auto-style14" colspan="2">
            <asp:TextBox ID="txt_date" runat="server" TextMode="Date"></asp:TextBox>
                            <br />
                        </td>
                        <td class="auto-style18"></td>
                        <td class="auto-style16"></td>
                        <td>
            <asp:TextBox ID="txt_srid" runat="server" TextMode="Number" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="Label2" runat="server" Text="Returning Quantity"></asp:Label>
                        </td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style14" colspan="2">
            <asp:TextBox ID="txt_quantity" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style14" colspan="2">&nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Id] FROM [Sales]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style14" colspan="2">
            <asp:Button ID="btndonee" runat="server"  Text="DONE" CssClass="btn  btn-info " Width="231px" OnClick="btndone" style="margin-top: 0; "/>

                        </td>
                        <td colspan="3">
            <asp:Label ID="lblkhatra" runat="server" Text="Khatra" OnLoad="Page_Load"></asp:Label>
                        </td>
                    </tr>
                </table>









        <div>

            &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            &nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SRId" DataSourceID="Purchasereturningdata" Height="424px" Width="100%" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="SRId" HeaderText="Sales Return ID" ReadOnly="True" SortExpression="SRId" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="SId" HeaderText="Sales ID" SortExpression="SId" />
                    <asp:BoundField DataField="Pname" HeaderText="Product" SortExpression="Pname" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    <asp:BoundField DataField="CId" HeaderText="Customer ID" SortExpression="CId" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:CommandField HeaderText="Operations" ShowDeleteButton="True" ShowEditButton="True" />
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
            <asp:SqlDataSource ID="Purchasereturningdata" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" DeleteCommand="DELETE FROM [Salesreturns] WHERE [SRId] = @SRId" InsertCommand="INSERT INTO [Salesreturns] ([SRId], [Date], [SId], [Pname], [Quantity], [Rate], [CId], [Amount]) VALUES (@SRId, @Date, @SId, @Pname, @Quantity, @Rate, @CId, @Amount)" SelectCommand="SELECT * FROM [Salesreturns]" UpdateCommand="UPDATE [Salesreturns] SET [Date] = @Date, [SId] = @SId, [Pname] = @Pname, [Quantity] = @Quantity, [Rate] = @Rate, [CId] = @CId, [Amount] = @Amount WHERE [SRId] = @SRId">
                <DeleteParameters>
                    <asp:Parameter Name="SRId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SRId" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="SId" Type="String" />
                    <asp:Parameter Name="Pname" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Rate" Type="Int32" />
                    <asp:Parameter Name="CId" Type="String" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="SId" Type="String" />
                    <asp:Parameter Name="Pname" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Rate" Type="Int32" />
                    <asp:Parameter Name="CId" Type="String" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                    <asp:Parameter Name="SRId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
