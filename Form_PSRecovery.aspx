<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form_PSRecovery.aspx.cs" Inherits="Mobile_Store_Management_System_FYP.Form_PSRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Recovery</title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
            height: 65px;
            margin-bottom: 0px;
            color: #FF0066;
        }
        .auto-style2 {
            height: 608px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 100%;
            border: 2px solid #FFFFFF;
        }
        .auto-style6 {
            width: 536px;
        }
        .auto-style7 {
            width: 536px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
    </style>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="height: 54px; background-image:url(Images/f.png)">
    <form id="form1" runat="server">







        <h1 class="auto-style1" style="font-family: 'Times New Roman', Times, serif"><strong>Password Recovery Page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/logo.png" Width="112px" Height="42px" OnClick="ImageButton1_Click" />
            </strong></h1>
        <div class="auto-style2">
            <h3 class="auto-style4" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF">Enter your recovery key to reset your password or Contact Admin</h3>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: 22px;">
            <asp:Label ID="Label1" runat="server" Text="Select Your Username"></asp:Label>
                    </td>
                    <td>
            <asp:DropDownList ID="ddlussername" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username" Height="24px" OnSelectedIndexChanged="Button1_Click" Width="321px">
            </asp:DropDownList>
            <asp:Button ID="btnSelect" runat="server"  Text="Select " CssClass="btn  btn-info " OnClick="Button1_Click"/>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: 22px;">
            <asp:Label ID="Label2" runat="server" Text="Enter Your Recovery Pin"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txt_recovery" runat="server" CssClass="auto-style3" Height="35px" Width="311px"></asp:TextBox>
            <asp:Button ID="btncheeck" runat="server"  Text="Check" CssClass="btn  btn-info " OnClick="Btncheck_Click"/>
                    </td>
                    <td>
            <asp:TextBox ID="txt_password" runat="server" Visible="False" Width="168px">1@@#@#@#@#@</asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" style="font-family: 'Times New Roman', Times, serif; color: #FFFFFF; font-size: 22px;">
            <asp:Label ID="lblnew" runat="server" Text="Enter New Password to Cotinue" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style8">
            <asp:TextBox ID="txt_confirm" runat="server" Visible="False" Height="36px" TextMode="Password" Width="314px"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
            <asp:Label ID="lblnew0" runat="server" Text="Confirm Password" Visible="False" CssClass="auto-style9"></asp:Label>
                    </td>
                    <td class="auto-style8">
            <asp:TextBox ID="txt_newpass" runat="server" Visible="False" TextMode="Password" Width="318px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_confirm" ControlToValidate="txt_newpass" ErrorMessage="Password dont match!"></asp:CompareValidator>
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">
            <asp:Button ID="btnSAVEE" runat="server"  Text="Save" CssClass="btn  btn-info " OnClick="BtnSave_Click"/>
            <asp:Label ID="lblkhatra" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString %>" SelectCommand="SELECT [Username] FROM [Login]"></asp:SqlDataSource>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </div>
    </form>
</body>
</html>
