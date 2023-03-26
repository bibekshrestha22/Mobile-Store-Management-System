<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Purchase.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchase Form</title>
    <style type="text/css">
        .auto-style1 {
            height: 1323px;
            text-align: center;
        }


        .auto-style2 {
            margin-top: 0px;
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
            text-align: center;
        }
        .auto-style12 {
            height: 32px;
        }
        .auto-style13 {
            width: 699px;
        }
        .auto-style14 {
            height: 32px;
            width: 699px;
            text-align: right;
        }
        .auto-style16 {
            background-color: #33CC33;
        }
        .auto-style17 {
            text-align: right;
            color: #FFFFFF;
        }

        .auto-style18 {
            width: 699px;
            height: 36px;
        }
        .auto-style19 {
            height: 36px;
        }

        .auto-style20 {
            width: 699px;
            text-align: right;
        }

        .auto-style21 {
            height: 32px;
            text-align: left;
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
        <h1 class="auto-style11" style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; color: #FFFFFF">Specify the Items to be purchased</h1>

        <div class="auto-style1" style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF; text-decoration: blink;">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style20" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">Purchase ID:
            <asp:Label ID="lblpid" runat="server" Text="Purchase Id here"></asp:Label>
                    </td>
                    <td>
            <asp:Button ID="btnpurchaseid" runat="server"  Text="Get Purchase ID" CssClass="btn  btn-info " OnClick="btnpurchaseiid"/>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">Purchase Date:
            <asp:Label ID="Label2" runat="server" Text="Purchase Date"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_purchasedate" runat="server" TextMode="Date" Width="260px"></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">Supplier Name:
            <asp:Label ID="Label3" runat="server" Text="Supplier"></asp:Label>
&nbsp;&nbsp;&nbsp;
            </td>
                    <td>
            <asp:DropDownList ID="ddlsupplier" runat="server" DataSourceID="supplierdatasource" DataTextField="Suppliername" DataValueField="Suppliername" Height="35px" Width="259px">
            </asp:DropDownList>
                    </td>
                    <td>
            <asp:SqlDataSource ID="supplierdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Suppliername], [Id] FROM [Supplier]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">Product Name:
            <asp:Label ID="Label4" runat="server" Text="Product"></asp:Label>
&nbsp;&nbsp;&nbsp;</td>
                    <td class="auto-style12">
            <asp:DropDownList ID="ddlproduct" runat="server" DataSourceID="productdatasource" DataTextField="Name" DataValueField="Name" Height="28px" Width="262px">
            </asp:DropDownList>
                    </td>
                    <td class="auto-style21"><asp:Button ID="btngetrate" runat="server"  Text="Get Info" CssClass="btn  btn-info " OnClick="btngetratee"/>
            <asp:SqlDataSource ID="productdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Name], [PId] FROM [Totalproduct]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style20" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">&nbsp;<asp:Label ID="Label5" runat="server" Text="Rate"></asp:Label>
                        &nbsp;&nbsp;</td>
                    <td>
            <asp:TextBox ID="txt_rate" runat="server" TextMode="Number" Width="259px"></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="Label6" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_quantity" runat="server" TextMode="Number" Width="260px"></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #FFFFFF">
            <asp:Label ID="Label7" runat="server" Text="Available Quantity"></asp:Label>
                        :<asp:Label ID="lblqty" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lbllatest" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>
            <asp:Button ID="btnadd" runat="server"  Text="Add Item" CssClass="btn  btn-info " OnClick="btnadds"/>
                    </td>
                    <td>
            <asp:TextBox ID="txt_purchaseid" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:Label ID="lblkhatra" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Purchasedatasource1" Height="96px" Width="100%" CssClass="auto-style2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Purchase ID" SortExpression="Id" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Sname" HeaderText="Supplier Name" SortExpression="Sname" />
                    <asp:BoundField DataField="Pname" HeaderText="Product Name" SortExpression="Pname" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:TemplateField HeaderText="Operations"><ItemTemplate>
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
            <asp:SqlDataSource ID="Purchasedatasource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="Select * From Purchase WHERE Id=@Id" DeleteCommand="Delete From Purchase WHERE Id=@Id">
                
                <DeleteParameters>
                    <asp:Parameter Name="Id" />
                </DeleteParameters>

                <SelectParameters>
                    <asp:ControlParameter ControlID="lblpid" Name="Id" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div class="auto-style11">
                <span class="auto-style17" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; text-decoration: blink">Payment Method:
            <asp:RadioButton ID="rbtnCash" runat="server" CssClass="radio" GroupName="paymentype" Text="Payment on Cash" />
            &nbsp;&nbsp;
            <asp:RadioButton ID="rbtnCredit" runat="server" CssClass="auto-style6" GroupName="paymentype" Text="Payment On Credit" />
            <br />
                Total Amount: <asp:Label ID="lblTotal" runat="server" Text="Amount Here"></asp:Label>
                </span>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnpurchase" runat="server"  Text="Purchase" CssClass="btn  btn-info " OnClick="btnpurchasee"/>
                <br />
            <asp:Label ID="lbldone" runat="server" Text="Purchase is Successful!" CssClass="auto-style16" Visible="False"></asp:Label>
                <br />
            <asp:Label ID="lblsuccess" runat="server" Text="Note: No change in balance in cash sales!" CssClass="auto-style16" Visible="False"></asp:Label>
            <br />
            <br />
            </div>
        </div>
    </form>
</body>
</html>
