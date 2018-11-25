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
            width: 165px;
            height: 40px;
        }
        .auto-style4 {
            text-align: right;
            width: 165px;
            height: 40px;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style6 {
            height: 40px;
            text-align: center;
            width: 323px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LabelMail" runat="server" Text="Enter E-mail:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxMail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxMail" ErrorMessage="Please enter your E-mail!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxMail" ErrorMessage="Please enter a valid E-mail!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LabelFName" runat="server" Text="Enter your First Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxFName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxFName" ErrorMessage="Please enter your First Name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LabelLName" runat="server" Text="Enter your Last Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxLName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxLName" ErrorMessage="Please enter your Last Name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LabelUName" runat="server" Text="Enter Username:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxUser" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxUser" ErrorMessage="Please enter a Username!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LabelPass" runat="server" Text="Enter Password:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxPass" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter a Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LabelPassCon" runat="server" Text="Confirm Password:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxPassConfirm" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPassConfirm" ErrorMessage="Please conform your password!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxPassConfirm" ErrorMessage="Passwords do not match!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LabelCity" runat="server" Text="Enter City:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxCity" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxCity" ErrorMessage="Please enter your City!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" type="reset" value="Reset Fields" /></td>
                <td class="auto-style5"></td>
            </tr>
        </table>
    </form>
</body>
    <!-- Created by members of Group 18 of the Plymouth Batch 6 (17.1). -->
</html>
