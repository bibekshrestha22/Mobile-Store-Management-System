<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Repair.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Repair" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Repair Records Page</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 484px;
            text-align: center;
        }
        .auto-style3 {
            margin-left: 0px;
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
            width: 507px;
        }
        .auto-style12 {
            color: #FFFFFF;
        }
        .auto-style13 {
            color: #00FFFF;
        }
        .auto-style15 {
            text-align: left;
            width: 624px;
            height: 42px;
        }
        .auto-style16 {
            width: 624px;
        }
        .auto-style17 {
            margin-left: 0;
        }
        .auto-style18 {
            width: 507px;
            text-align: left;
            height: 42px;
        }
        .auto-style19 {
            height: 42px;
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
<body style="height: 728px; background-image:url(Images/f.png)">
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






        <div class="auto-style1">
            <h1 class="auto-style12" style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; color: #FFFFFF">Enter Details For Repair Service!</h1>
        </div>
        <div class="auto-style2">
            <div class="auto-style1">
                <br />
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style19"></td>
                        <td class="auto-style19">
            <asp:Label ID="Label1" runat="server" Text="Customer Name" CssClass="auto-style12"></asp:Label>
                        </td>
                        <script src="Scripts/jquery-3.0.0-vsdoc.js"></script>
                        <script src="Scripts/jquery-3.0.0.js"></script>
                        <td class="auto-style18"><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id" Height="35px" Width="320px" CssClass="auto-style17" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Select Name</asp:ListItem>
                </asp:DropDownList>
                            <br />
                        </td>
                        <td class="auto-style15">
            <asp:Button ID="btninfo" runat="server"  Text="Get Info" CssClass="btn  btn-info " Width="155px" OnClick="btnAdd_Click"/>
            &nbsp;<span class="auto-style12">Customer Id: <asp:Label ID="cname" runat="server" Text="Customer ID"></asp:Label>
                            </span></td>
                        <td class="auto-style19"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
            <asp:Label ID="Label2" runat="server" Text="Address" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style11">
            <asp:TextBox ID="txt_address" runat="server" Width="320px"></asp:TextBox>
                            <br />
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
            <asp:Label ID="ddlistCName" runat="server" Text="Phone Model" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style11">
            <asp:TextBox ID="txt_model" runat="server" Width="320px"></asp:TextBox>
                            <br />
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
            <asp:Label ID="Label6" runat="server" Text="IMEI Number" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style11">
            <asp:TextBox ID="txt_imei" runat="server" TextMode="Number" Width="320px"></asp:TextBox>
                            <br />
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
            <asp:Label ID="Label4" runat="server" Text="Problem Description" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style11">
            <asp:TextBox ID="txt_description" runat="server" TextMode="MultiLine" Width="320px"></asp:TextBox>
                            <br />
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
            <asp:Label ID="Label5" runat="server" Text="Given Date" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style11"><asp:TextBox ID="txt_date" runat="server" TextMode="Date" Width="315px"></asp:TextBox>
                            <br />
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style12">Select Image</td>
                        <td class="auto-style11">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn btn-secondary" Width="384px" />
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style11">
                <asp:Label ID="lblSucces" runat="server" Text="Note: The Repair Record is Successfully added!" Visible="False" CssClass="auto-style13"></asp:Label>
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style11">
            <asp:Button ID="btnSavee" runat="server"  Text="Save" CssClass="btn  btn-info " OnClick="Button1_Click" Width="172px"/>
                        </td>
                        <td class="auto-style16">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Name], [Id] FROM [customers]">
                </asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            <br />
                <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="Repairdatasoure" Height="148px" Width="100%" CssClass="auto-style3" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Customername" HeaderText="Customer Name" SortExpression="Customername" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Phonemodel" HeaderText="Phone Model" SortExpression="Phonemodel" />
                    <asp:BoundField DataField="Imei" HeaderText="IMEI Number" SortExpression="Imei" />
                    <asp:BoundField DataField="Problem" HeaderText="Problem" SortExpression="Problem" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="200px" Width="200px" />
                    </asp:ImageField>
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" HeaderText="Operations" >
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
            <asp:SqlDataSource ID="Repairdatasoure" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" DeleteCommand="DELETE FROM [Repair] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Repair] ([Id], [Customername], [CustomerId], [Address], [Phonemodel], [Imei], [Problem], [Date], [Image]) VALUES (@Id, @Customername, @CustomerId, @Address, @Phonemodel, @Imei, @Problem, @Date, @Image)" SelectCommand="SELECT * FROM [Repair]" UpdateCommand="UPDATE [Repair] SET [Customername] = @Customername, [CustomerId] = @CustomerId, [Address] = @Address, [Phonemodel] = @Phonemodel, [Imei] = @Imei, [Problem] = @Problem, [Date] = @Date, [Image] = @Image WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="Customername" Type="String" />
                    <asp:Parameter Name="CustomerId" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Phonemodel" Type="String" />
                    <asp:Parameter Name="Imei" Type="Int64" />
                    <asp:Parameter Name="Problem" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="Image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Customername" Type="String" />
                    <asp:Parameter Name="CustomerId" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Phonemodel" Type="String" />
                    <asp:Parameter Name="Imei" Type="Int64" />
                    <asp:Parameter Name="Problem" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
                <br />
                <br />
            <br />
&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;<br />
                <br />
            <br />
            </div>
            <div class="auto-style1">
                <br />
                <br />
                <br />
                <br />
            <br />
            </div>
            <br />
        </div>
    </form>
</body>
</html>
