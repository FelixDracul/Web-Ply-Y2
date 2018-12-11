<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="GTF_Web.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="CSS\styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">

            <h1>Admin Login</h1>

            <div class="textbox">
                <h4>Username</h4>
                <asp:TextBox ID="TextBoxUser" runat="server" placeholder="Username" Width="100%" Font-Size="Large"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator class="validator" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUser" ErrorMessage="Please enter a Username!" ForeColor="Red" Font-Size="Large" Width="100%"></asp:RequiredFieldValidator>

            <div class="textbox">
                <h4>Password</h4>
                <asp:TextBox ID="TextBoxPass" runat="server" placeholder="Password" TextMode="Password" Width="100%" Font-Size="Large"></asp:TextBox>
                
            </div>
            <asp:RequiredFieldValidator class="validator" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter a Password!" ForeColor="Red" Font-Size="Large" Width="100%"></asp:RequiredFieldValidator>

            <br />
            <br />
            <div class="btn">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" CssClass="btn" BorderStyle="None" />
            </div>
            <br />
            <div class="btn">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sign Up" CssClass="btn" BorderStyle="None" />
            </div>
            </div>
    </form>
</body>
    <!-- Created by Group 18 of Plymouth Batch 6 (17.1). -->
</html>
