

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Sales.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Sales" %>

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
            border: 4px solid #FFFFFF;
        }

        .auto-style11 {
            height: 32px;
        }

        .auto-style12 {
            width: 552px;
            text-align: left;
        }
        .auto-style13 {
            height: 32px;
            width: 552px;
            text-align: left;
        }
        .auto-style16 {
            width: 749px;
        }
        .auto-style17 {
            height: 32px;
            width: 749px;
        }
        .auto-style20 {
            color: #FFFFFF;
        }
        .auto-style22 {
            width: 749px;
            height: 58px;
        }
        .auto-style23 {
            width: 552px;
            height: 58px;
            text-align: left;
        }
        .auto-style24 {
            height: 58px;
        }

        .auto-style25 {
            background-color: #33CC33;
        }

        .auto-style26 {
            width: 990px;
        }
        .auto-style27 {
            width: 990px;
            height: 58px;
            text-align: right;
        }
        .auto-style28 {
            height: 32px;
            width: 990px;
            text-align: right;
        }
        .auto-style29 {
            width: 990px;
            text-align: right;
        }
        .auto-style30 {
            margin-right: 0px;
        }

        .auto-style31 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style33 {
            text-align: right;
            background-color: #666666;
        }
        .auto-style34 {
            background-color: #666666;
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
        <h1 class="auto-style1" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF">Enter details for SALES!</h1>
        <div class="auto-style1" style="font-family: 'Times New Roman', Times, serif; font-size: 20px; color: #FFFFFF; text-decoration: blink;">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style29" style="font-family: 'times New Roman', Times, serif; font-size: 22px; color: #FFFFFF">Sales ID:</td>
                    <td class="auto-style16"><asp:Label ID="lblsid" runat="server" Text="New Sales Id" CssClass="auto-style20"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style12" style="font-size: 20px">
            <asp:Button ID="btngetid" runat="server"  Text="Get Sales ID" CssClass="btn  btn-info " OnClick="bntGetId_Click" Height="40px" Width="166px"/>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-family: 'times New Roman', Times, serif; font-size: 22px; color: #FFFFFF">
            <asp:Label ID="lblcname" runat="server" Text="Customer Name"></asp:Label>
                    </td>
                    <td class="auto-style16" style="font-size: 19px">
            <asp:DropDownList ID="ddlcustomer" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id" Height="38px" Width="343px">
            </asp:DropDownList>
                        <br />
                    </td>
                    <td class="auto-style12" style="font-size: 20px"><asp:Button ID="btnInfo" runat="server"  Text="Get Info" CssClass="btn  btn-info " OnClick="Button2_Click" Height="43px" Width="167px"/>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-family: 'times New Roman', Times, serif; font-size: 22px; color: #FFFFFF"><asp:Label ID="Label8" runat="server" Text="Customer ID"></asp:Label>
                    </td>
                    <td class="auto-style16" style="font-size: 19px">
            <asp:TextBox ID="txtcname" runat="server" Height="34px" Width="336px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12" style="font-size: 20px">
            <asp:Label ID="Label7" runat="server" Text="Email" Visible="False"></asp:Label>
            <asp:TextBox ID="txt_email" runat="server" Height="31px" Width="340px" Visible="False"></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-family: 'times New Roman', Times, serif; font-size: 22px; color: #FFFFFF">
            <asp:Label ID="Label5" runat="server" Text="Sales Date"></asp:Label>
                    </td>
                    <td class="auto-style16" style="font-size: 19px">
            <asp:TextBox ID="txt_date" runat="server" Height="34px" Width="331px" TextMode="Date"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12" style="font-size: 20px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27" style="font-family: 'times New Roman', Times, serif; font-size: 22px; color: #FFFFFF">Item</td>
                    <td class="auto-style22" style="font-size: 19px"><asp:DropDownList ID="ddlitemlist" runat="server" DataSourceID="productinfo" DataTextField="Name" DataValueField="PId" Width="339px" Height="36px">
            </asp:DropDownList>
                        <br />
                    </td>
                    <td class="auto-style23" style="font-size: 20px"><asp:Button ID="btnSelectCategory" runat="server"  Text="Select Item" CssClass="btn  btn-info " OnClick="btnSelectCategory_Click" Height="43px" Width="174px"/>
                    </td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style28" style="font-family: 'times New Roman', Times, serif; font-size: 22px; color: #FFFFFF">Item Purchased Rate</td>
                    <td class="auto-style17" style="font-size: 19px"><asp:TextBox ID="txtPurchasedRate" runat="server" Height="35px" Width="335px" Enabled="False"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style13" style="font-size: 20px"><asp:Label ID="itemnaam" runat="server" Text="Item Name" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-family: 'times New Roman', Times, serif; font-size: 22px; color: #FFFFFF">Available Quantity 
                    </td>
                    <td class="auto-style16" style="font-size: 19px"><asp:TextBox ID="txtAvailableQuantity" runat="server" Height="33px" Width="335px" Enabled="False"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12" style="font-size: 20px">
            <asp:TextBox ID="txtsid" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-family: 'times New Roman', Times, serif; font-size: 22px; color: #FFFFFF">
                        Selling Quantity</td>
                    <td class="auto-style16" style="font-size: 19px">
            <asp:TextBox ID="txtSellingQuantity" runat="server" Height="34px" Width="332px" TextMode="Number"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style12" style="font-size: 20px"><asp:Label ID="Label6" runat="server" Text="Phone Number" Visible="False"></asp:Label>
            <asp:TextBox ID="txt_contact" runat="server" Height="33px" Width="175px" Visible="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29" style="font-family: 'times New Roman', Times, serif; font-size: 22px; color: #FFFFFF">
            <asp:Label ID="Label4" runat="server" Text="Selling Rate"></asp:Label>
                    </td>
                    <td class="auto-style16" style="font-size: 19px">
            <asp:TextBox ID="txtSellingRate" runat="server" Height="31px" Width="333px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style12" style="font-size: 20px">
                        Disount in %
            <asp:TextBox ID="txt_discount" runat="server" Height="33px" Width="85px"></asp:TextBox>
            <asp:Button ID="btncalculatee" runat="server"  Text="Calculate" CssClass="btn  btn-info " OnClick="calculate" Height="29px" Width="88px"/>
                    </td>
                    <td>
            <asp:Label ID="lbllatest1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="lblGetSalesID" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style16" style="font-size: 19px">
                        &nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblAvailableQuantity" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="lbllatest" runat="server" Text="Remaining Quantity"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">
            <asp:TextBox ID="txt_da" runat="server" Height="33px" Width="85px" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style16" style="font-size: 19px">
            <asp:Button ID="btnAdd" runat="server"  Text="ADD Item" CssClass="btn  btn-info " OnClick="Button1_Click" Height="40px" Width="135px"/>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:Label ID="lblkhatra" runat="server" Text="" Visible="false"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Name], [Id] FROM [customers]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="productinfo" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Name], [PId] FROM [Totalproduct]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="16px" Width="100%" CssClass="auto-style30" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Purchase ID" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Purchaserate" HeaderText="Purchaserate" SortExpression="Purchaserate" />
                    <asp:BoundField DataField="Salesrate" HeaderText="Sales Rate" SortExpression="Salesrate" />
                    <asp:BoundField DataField="Sellingquantity" HeaderText="Sellingquantity" SortExpression="Sellingquantity" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    <asp:TemplateField HeaderText="Operaions"><ItemTemplate>
                      <asp:Button ID="btndelete" runat="server" text="Delete" CommandName="Delete" CssClass="btn  btn-danger " Tooltip="Delete" Width="70px" Height="30px" OnClick="btndelete" runalt="server" />
                                       </ItemTemplate>
                        </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" InsertCommand="INSERT INTO [Sales] ([Id], [Name], [CID], [Item], [Date], [Purchaserate], [Salesrate], [Sellingquantity], [Total]) VALUES (@Id, @Name, @CID, @Item, @Date, @Purchaserate, @Salesrate, @Sellingquantity, @Total)" SelectCommand="SELECT * FROM [Sales] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Sales] SET [Name] = @Name, [CID] = @CID, [Item] = @Item, [Date] = @Date, [Purchaserate] = @Purchaserate, [Salesrate] = @Salesrate, [Sellingquantity] = @Sellingquantity, [Total] = @Total WHERE [Id] = @Id" DeleteCommand="DELETE FROM Sales WHERE (Id = @Id)">
                
                <DeleteParameters>
                    <asp:Parameter Name="Id" />
                </DeleteParameters>
                
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="CID" Type="String" />
                    <asp:Parameter Name="Item" Type="String" />
                    <asp:Parameter Name="Date" Type="DateTime" />
                    <asp:Parameter Name="Purchaserate" Type="Int32" />
                    <asp:Parameter Name="Salesrate" Type="Int32" />
                    <asp:Parameter Name="Sellingquantity" Type="Int32" />
                    <asp:Parameter Name="Total" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblsid" Name="Id" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="CID" Type="String" />
                    <asp:Parameter Name="Item" Type="String" />
                    <asp:Parameter Name="Date" Type="DateTime" />
                    <asp:Parameter Name="Purchaserate" Type="Int32" />
                    <asp:Parameter Name="Salesrate" Type="Int32" />
                    <asp:Parameter Name="Sellingquantity" Type="Int32" />
                    <asp:Parameter Name="Total" Type="Int32" />
                    <asp:Parameter Name="Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <strong><span class="auto-style31"><span class="auto-style34">Select Payment Method</span>:<asp:RadioButton ID="rbtnCash" runat="server" CssClass="radio" GroupName="paymentype" Text="Payment on Cash" style="background-color: #666666" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:RadioButton ID="rbtnCredit" runat="server" CssClass="auto-style33" GroupName="paymentype" Text="Payment On Credit" />
            <br />
            <span class="auto-style34">Amout Rs: </span> <asp:Label ID="lbltotal" runat="server" Text="Amount Here" CssClass="auto-style34"></asp:Label>
            </span></strong>
            <br />
            <asp:Button ID="btnsaless" runat="server"  Text="Make Sales" CssClass="btn  btn-info " OnClick="btnsales"/>
            <br />
            <asp:Label ID="lblsuccess" runat="server" Text="Purchase is Successful!" Visible="False" CssClass="auto-style25"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
