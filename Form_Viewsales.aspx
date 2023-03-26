﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Viewsales.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Viewsales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Sales</title>
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            color: #FF0000;
        }
        .auto-style4 {
            line-height: 1.5;
            color: #FF0000;
            margin-bottom: 0;
        }
        .auto-style5 {
            float: right;
            font-size: 1.5rem;
            font-weight: 700;
            line-height: 1;
            color: #FF0000;
            text-shadow: 0 1px 0 #fff;
            opacity: .5;
        }
        .auto-style7 {
            text-align: center;
            margin-bottom: 0px;
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
            <div class="auto-style2" style="background-color:#303030">
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;<span class="auto-style3">&nbsp; </span>
                <a runat="server"  href="Form_Pwchange.aspx" class="auto-style3"><strong>Welcome, <%: Session["new"].ToString() %>!</strong></a>
                <a runat="server" href="#" data-toggle="modal" data-target="#logoff" class="auto-style3">Signout?</a><div class="modal" id="logoff" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: blue; color: black">
                        <button class="auto-style5" data-dismiss="modal">&times;</button>
                        <h4 class="auto-style4">Log out?</h4>
                    </div>
                     <div class="modal-body" style="background-color: white; color: black">
                        <h4 class="auto-style3">Are You Sure you want to sighnout?</h4>
                        <asp:Button ID="btnyes" runat="server" Text="Yes" CssClass="btn btn-info btn-sm" OnClick="btnyes_Click" style="color: #FF0000" />
                        <asp:Button ID="btnNo" runat="server" Text="No" CssClass="btn btn-info btn-sm" data-dismiss="modal" style="color: #FF0000" />
                    </div>
            </div>
            </div>
        <div>
        </div>
        </div>
                <span class="auto-style3">&nbsp;&nbsp;&nbsp;</span>&nbsp;
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
            <h1 class="auto-style7" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF;">Sales Entries</h1>
   
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Salesdatasource" ForeColor="Black" Height="56px" Width="100%" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Sales ID" SortExpression="Id" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Name" HeaderText="Customer Name" SortExpression="Name" />
                    <asp:BoundField DataField="Item" HeaderText="Sold ITEM" SortExpression="Item" />
                    <asp:BoundField DataField="Salesrate" HeaderText="Sales Rate" SortExpression="Salesrate" />
                    <asp:BoundField DataField="Sellingquantity" HeaderText="Selling quantity" SortExpression="Sellingquantity" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
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
            <asp:SqlDataSource ID="Salesdatasource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT * FROM [Sales] ORDER BY [Date] DESC"></asp:SqlDataSource>
         </form>
   
</body>
</html>
