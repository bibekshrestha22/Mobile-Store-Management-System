<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_Login.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 64px;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
            height: 495px;
            background-color:whitesmoke;
                margin-left: auto;
    margin-right: auto;
    position: relative;
    min-width: 320px;
    max-width: 540px;
    width: calc(100% - 40px);
    padding: 44px;
    margin-bottom: 28px;
            left: -1px;
            top: 0px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            margin-left: 4px;
        }
        .auto-style6 {
            color: #FF0000;
        }
        .auto-style7 {
            height: 678px;
        }
        .auto-style8 {
            width: 84%;
            height: 233px;
            border: 1px solid #000000;
            margin-left: 0px;
        }
        .auto-style14 {
            height: 56px;
        }
        .auto-style22 {
            width: 317px;
            height: 56px;
        }
        .auto-style23 {
            height: 56px;
            width: 438px;
        }
        .auto-style24 {
            width: 438px;
        }
        .auto-style25 {
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
<body style="background-image:url(Images/background1.jpg)">
    <form id="form1" runat="server">
        <div  class="auto-style7">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/logo.png" Width="112px" Height="76px" OnClick="ImageButton1_Click" />
&nbsp;<div class="auto-style1">
            Login Page</div>
        <div class="auto-style2">
            <span class="auto-style4">&nbsp;&nbsp;Sign In!</span><br class="auto-style4" />
            <br />
            <br />
            <table class="auto-style8">
                <tr>
                    <td class="auto-style23">
                        <asp:Image ID="Image1" runat="server" Height="116px" ImageUrl="~/Images/logo.png" Width="160px" />
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style23">USERNAME</td>
                    <td class="auto-style14" colspan="2"><asp:TextBox ID="txtUname" runat="server" CssClass="auto-style3" Height="33px" Width="232px"></asp:TextBox>
                        <asp:Label ID="rq" runat="server" Text="*" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">PASSWORD</td>
                    <td colspan="2">
            <asp:TextBox ID="txtPass" runat="server" CssClass="auto-style5" Height="33px" TextMode="Password" Width="231px"></asp:TextBox>
                        <asp:Label ID="rq1" runat="server" Text="*" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblwarning" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="btnLogin_Click" Text="Login" class="btn btn-info"/>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:52946/Form_PSRecovery.aspx" class="auto-style6">Forgot Password??</a></div>
            </div>
    </form>
</body>
</html>
