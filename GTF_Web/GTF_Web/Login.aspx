<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GTF_Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 217px;
            height: 40px;
        }
        .auto-style5 {
            text-align: right;
            width: 217px;
            height: 40px;
        }
        .auto-style6 {
            text-align: center;
            width: 236px;
            height: 40px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            height: 40px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxUser" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUser" ErrorMessage="Please enter a Username!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter a Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sign Up" />
                </td>
                <td class="auto-style7"></td>
            </tr>
        </table>
    </form>
</body>
</html>
