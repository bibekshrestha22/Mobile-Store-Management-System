<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Default.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            height: 69px;
        }
        .auto-style2 {
            height: 464px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            margin-left: 0px;
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

    </style>
</head>
<body style="height: 666px">
    <form id="form1" runat="server">
        <div class="auto-style3">
        <h1 class="auto-style1">Welcome to Mobile Store Management System</h1>
        <div class="auto-style2">

            <asp:Image ID="Image1" runat="server" CssClass="auto-style4" Height="450px" ImageUrl="http://bqmobilestore.com/uk/wp-content/uploads/2015/06/04-Slider.png" Width="1444px" />

        </div>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="97px" ImageUrl="~/Images/login-button-blue-i8.png" OnClick="ImageButton1_Click" Width="192px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnOrder" runat="server"  Text="Order" CssClass="btn  btn-info " Width="233px" Height="46px" style="margin-top: 2" OnClick="btnOrder_Click"/>
            &nbsp;</div>
    </form>
</body>
</html>
