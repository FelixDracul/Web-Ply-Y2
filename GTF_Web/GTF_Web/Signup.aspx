<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="GTF_Web.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 115px;
            height: 40px;
        }
        .auto-style4 {
            text-align: right;
            width: 115px;
            height: 40px;
        }
        .auto-style5 {
            height: 40px;
            width: 125px;
        }
        /*.auto-style6 {
            width: 188px;
        }*/
    </style>
    <link href="CSS\RegisterStyles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h1>User Registration</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <h4>Enter E-mail:</h4>
                </td>
                <td class="textbox">
                    <asp:TextBox ID="TextBoxMail" runat="server" BorderStyle="None" CssClass="textbox" Width="100%"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxMail" ErrorMessage="Please enter your E-mail!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator CssClass="validator" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxMail" ErrorMessage="Please enter a valid E-mail!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h4>First Name:</h4>
                </td>
                <td class="textbox">
                    <asp:TextBox ID="TextBoxFName" runat="server" BorderStyle="None" CssClass="textbox" Width="100%"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxFName" ErrorMessage="Please enter your First Name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h4>Last Name:</h4>
                </td>
                <td class="textbox">
                    <asp:TextBox ID="TextBoxLName" runat="server" BorderStyle="None" CssClass="textbox" Width="100%"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxLName" ErrorMessage="Please enter your Last Name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h4>Username:</h4>
                </td>
                <td class="textbox">
                    <asp:TextBox ID="TextBoxUser" runat="server" BorderStyle="None" CssClass="textbox" Width="100%"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxUser" ErrorMessage="Please enter a Username!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h4>Password:</h4>
                </td>
                <td class="textbox">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" BorderStyle="None" CssClass="textbox" Width="100%"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter a Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h4>Confirm Password:</h4>
                </td>
                <td class="textbox">
                    <asp:TextBox ID="TextBoxPassConfirm" runat="server" TextMode="Password" BorderStyle="None" CssClass="textbox" Width="100%"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPassConfirm" ErrorMessage="Please conform your password!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator CssClass="validator" ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxPassConfirm" ErrorMessage="Passwords do not match!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h4>City:</h4>
                </td>
                <td class="textbox">
                    <asp:TextBox ID="TextBoxCity" runat="server" BorderStyle="None" CssClass="textbox" Width="100%"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxCity" ErrorMessage="Please enter your City!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn" BorderStyle="Solid" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" class="btn" type="reset" value="Reset Fields" /></td>
                <td class="auto-style5"></td>
            </tr>
        </table>
        </div>
    </form>
</body>
    <!-- Created by members of Group 18 of the Plymouth Batch 6 (17.1). -->
</html>
