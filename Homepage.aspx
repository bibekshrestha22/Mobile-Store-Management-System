<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Homepage.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 0px;
        }
.btn-info{color:#fff;background-color:#17a2b8;border-color:#17a2b8}.btn{display:inline-block;font-weight:400;text-align:center;white-space:nowrap;vertical-align:middle;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;border:1px solid transparent;padding:.375rem .75rem;font-size:1rem;line-height:1.5;border-radius:.25rem;transition:color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out}[type=reset],[type=submit],button,html [type=button]{-webkit-appearance:button}

.btn-info {
  color: #fff;
  background-color: #17a2b8;
  border-color: #17a2b8;
}

.btn {
  display: inline-block;
  font-weight: 400;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  border-radius: 0.25rem;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

button,
html [type="button"],
[type="reset"],
[type="submit"] {
  -webkit-appearance: button;
}

button,input{overflow:visible}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}

button,
input {
  overflow: visible;
}

input,
button,
select,
optgroup,
textarea {
  margin: 0;
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}

*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
  *,
  *::before,
  *::after {
    text-shadow: none !important;
    box-shadow: none !important;
  }
  
*,
*::before,
*::after {
  box-sizing: border-box;
}

        .auto-style3 {
            color: #CC3300;
        }

        .auto-style4 {
            left: 0px;
            top: -5px;
            height: 37px;
        }

        .auto-style5 {
            text-align: right;
        }
        
        .auto-style7 {
            height: 841px;
        }
        .auto-style8 {
            width: 100%;
            height: 362px;
            border: 2px solid #FFFFFF;
        }
        .auto-style9 {
            width: 384px;
        }
        .auto-style10 {
            width: 338px;
        }
        .auto-style11 {
            width: 339px;
        }
        .auto-style12 {
            font-size: x-large;
        }
        .auto-style13 {
            width: 118px;
        }
        .auto-style14 {
            width: 118px;
            height: 29px;
        }
        .auto-style15 {
            width: 384px;
            height: 29px;
        }
        .auto-style16 {
            width: 338px;
            height: 29px;
        }
        .auto-style17 {
            width: 339px;
            height: 29px;
        }
        .auto-style18 {
            height: 29px;
        }
        
        .auto-style19 {
            height: 406px;
        }
        
        .auto-style20 {
            width: 338px;
            text-align: center;
        }
        .auto-style21 {
            width: 339px;
            text-align: center;
        }
        .auto-style22 {
            margin-left: 18px;
        }
        .auto-style23 {
            margin-left: 22px;
        }
        .auto-style24 {
            width: 400px;
            text-align: center;
        }
        .auto-style25 {
            width: 400px;
        }
        .auto-style26 {
            width: 400px;
            height: 29px;
        }
        .auto-style27 {
            width: 324px;
        }
        .auto-style28 {
            width: 324px;
            height: 29px;
        }
        
        .auto-style29 {
            margin-left: 18px;
            margin-right: 0px;
        }
        
        .auto-style30 {
            text-align: center;
        }
        .auto-style31 {
            height: 29px;
            text-align: center;
        }
        .auto-style32 {
            width: 339px;
            height: 29px;
            text-align: center;
        }
        .auto-style33 {
            width: 338px;
            height: 29px;
            text-align: center;
        }
        .auto-style36 {
            width: 400px;
            height: 29px;
            text-align: justify;
        }
        .auto-style37 {
            width: 324px;
            text-align: center;
        }
        .auto-style38 {
            width: 324px;
            height: 29px;
            text-align: center;
        }
        .auto-style39 {
            text-align: left;
        }
        .auto-style40 {
            height: 29px;
            text-align: left;
        }
        .auto-style43 {
            margin-left: 23px;
        }
        .auto-style44 {
            width: 384px;
            text-align: center;
        }
        .auto-style45 {
            width: 384px;
            height: 29px;
            text-align: center;
        }
        .auto-style46 {
            width: 400px;
            text-align: justify;
        }
        .auto-style47 {
            margin-left: 10px;
        }
        .auto-style48 {
            margin-left: 13px;
        }
        .auto-style49 {
            text-align: justify;
        }
        .auto-style50 {
            height: 29px;
            text-align: justify;
        }
        .auto-style51 {
            width: 384px;
            text-align: justify;
        }
        .auto-style52 {
            width: 384px;
            height: 29px;
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
<body style="background-image:url(Images/e.jpg)" class="auto-syle6">
    <form id="form1" runat="server">
        <div style="background-color:cadetblue" class="auto-style1">
            
        </div>
        <div>
             <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Mobile Store Management System</a>
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
        <li class="nav-item">
        <a class="nav-link" href="Form_Viewsales.aspx">View Sales</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Form_Viewpurchase.aspx">View Purchases</a>
      </li>
    </ul>
     
  </div>
</nav>
        </div>
            <div class="auto-style5" style="background-color:#303030">
                <asp:Button ID="Btnpr" runat="server" CausesValidation="False" OnClick="Btnpr_Click" Text="Purchase Returns" BackColor="#666666" BorderColor="#666666" ForeColor="White" Height="37px" Width="176px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Btnpr0" runat="server" CausesValidation="False" OnClick="Btnpr0_Click" Text="Sales Returns" BackColor="#666666" BorderColor="#666666" ForeColor="White" Height="37px" Width="176px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnregister" runat="server"  Text="Register" CssClass="btn  btn-success " Width="173px" OnClick="btnregisterr" Height="34px" style="margin-top: 0"/>
                &nbsp;<a runat="server"  href="Form_Pwchange.aspx" class="auto-style3"><strong>Welcome, <%: Session["new"].ToString() %>!</strong></a>
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
            <div class="auto-style19" style="font-family: 'Times New Roman', Times, serif; font-size: 18px; color: #FFFFFF">
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style9">
                    <asp:Label ID="lbllowname0" runat="server" Text="Low Stock" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style10">
                    <asp:Label ID="lbllowname1" runat="server" Text="High Stock" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style11">
                    <asp:Label ID="lbllowname2" runat="server" Text="Expensive Product" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td>
                    <asp:Label ID="lbllowname4" runat="server" Text="Cheapest Product" CssClass="auto-style12"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style9">
                            <asp:Image ID="imglowstock" runat="server" Height="250px" Width="263px" CssClass="auto-style48" />
                        </td>
                        <td class="auto-style10">
                            <asp:Image ID="imagehigh" runat="server" Height="250px" Width="260px" />
                        </td>
                        <td class="auto-style11">
                            <asp:Image ID="imgexpensiveitem" runat="server" Height="250px" Width="259px" />
                        </td>
                        <td>
                            <asp:Image ID="imgCheapProduct" runat="server" Height="250px" Width="255px" CssClass="auto-style47" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style51">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbllowname" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                        <td class="auto-style20">
                    <asp:Label ID="lblhighname" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                        <td class="auto-style21">
                    <asp:Label ID="lblexpensivename" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                        <td class="auto-style49">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblcheapname" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style52">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity:<asp:Label ID="lbllowqty" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                        <td class="auto-style33">Quantity:<asp:Label ID="lblhighqty" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                        <td class="auto-style32"><asp:Label ID="lblprice" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                        <td class="auto-style50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblcheapprice" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                </div>
               
             <div class="auto-style7" style="font-family: 'Times New Roman', Times, serif; font-size: 18px; color: #FFFFFF">
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" Text="Today's Purchase" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style20">
                    <asp:Label ID="Label2" runat="server" Text="Total Purchase" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style21">
                    <asp:Label ID="Label3" runat="server" Text="Sales Today" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td>
                    <asp:Label ID="Label4" runat="server" Text="Total Sales" CssClass="auto-style12"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style9">
                            <asp:Image ID="Image2" runat="server" Height="250px" Width="263px" ImageUrl="~/Images/purchase.png" CssClass="auto-style22" />
                        </td>
                        <td class="auto-style10">
                            <asp:Image ID="image3" runat="server" Height="250px" Width="260px" ImageUrl="~/Images/totalpurchase.png" CssClass="auto-style23" />
                        </td>
                        <td class="auto-style11">
                            <asp:Image ID="Image4" runat="server" Height="250px" Width="299px" ImageUrl="~/Images/sales.png" CssClass="auto-style22" />
                        </td>
                        <td>
                            <asp:Image ID="Image5" runat="server" Height="250px" Width="255px" ImageUrl="~/Images/sales1.png" CssClass="auto-style43" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style44">
                            Total purchases:
                    <asp:Label ID="lblPurchaseToday" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                        <td class="auto-style20">
                            Total Purchases:
                    <asp:Label ID="lblTotalPurchases" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                        <td class="auto-style21">
                            Number of Sales:
                    <asp:Label ID="lblsodaysales" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                        <td class="auto-style30">
                            Total Sales:
                    <asp:Label ID="lbltotalsales" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style45">Total Amount:<asp:Label ID="lblPurchaseAmountToday" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                        <td class="auto-style33">Total Amount :<asp:Label ID="lblTotalPurchaseAmount" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                        <td class="auto-style32">Total Amount: <asp:Label ID="lblsAmount" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                        <td class="auto-style31">Total Amount: <asp:Label ID="lbltotalamount" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style15"></td>
                        <td class="auto-style16"></td>
                        <td class="auto-style17"></td>
                        <td class="auto-style18"></td>
                    </tr>
                </table>
                <br />
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style27">
                    <asp:Label ID="Label5" runat="server" Text="Total Orders" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style20">
                    <asp:Label ID="Label6" runat="server" Text="Today's Orders" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td class="auto-style24">
                    <asp:Label ID="Label7" runat="server" Text="Total Orders to Supplier" CssClass="auto-style12"></asp:Label>
                        </td>
                        <td>
                    <asp:Label ID="Label8" runat="server" Text="Order To Supplier Today" CssClass="auto-style12"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style27">
                            <asp:Image ID="Image7" runat="server" Height="250px" Width="263px" ImageUrl="~/Images/order1.png" />
                        </td>
                        <td class="auto-style10">
                            <asp:Image ID="image8" runat="server" Height="250px" Width="260px" ImageUrl="~/Images/orders2.png" CssClass="auto-style23" />
                        </td>
                        <td class="auto-style25">
                            <asp:Image ID="Image9" runat="server" Height="250px" Width="277px" ImageUrl="~/Images/order3.png" CssClass="auto-style29" />
                        </td>
                        <td>
                            <asp:Image ID="Image10" runat="server" Height="250px" Width="258px" ImageUrl="~/Images/order4.png" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style37">
                            Total Orders:
                    <asp:Label ID="lblallorders" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                        <td class="auto-style20">
                            Total Orders:
                    <asp:Label ID="lbltodayorders" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                        <td class="auto-style46">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Total Orders to Supplier:
                    <asp:Label ID="lbltotalsorder" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                        <td class="auto-style39">
                            Total Orders to Supplier:
                    <asp:Label ID="lblsordertoday" runat="server" Text="lbllowname"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style38">Total Amount:<asp:Label ID="lbltotalordersamount" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                        <td class="auto-style33">Total Amount :<asp:Label ID="lbltodayamount" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                        <td class="auto-style36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Amount: <asp:Label ID="lbltotalsorderamount" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                        <td class="auto-style40">Total Amount: <asp:Label ID="lblsorderamount" runat="server" Text="lbllowqty"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style28"></td>
                        <td class="auto-style16"></td>
                        <td class="auto-style26"></td>
                        <td class="auto-style18"></td>
                    </tr>
                </table>
                <br />
                </div>
    </form>

         
</body>
</html>
