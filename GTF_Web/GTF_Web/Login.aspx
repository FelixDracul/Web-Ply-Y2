<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GTF_Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--
        <link href="CSS\bootstrap.css" rel="stylesheet" type="text/css" />
        -->
    <link href="CSS\styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">

            <h1>User Login</h1>

            <div class="textbox">
                <!--<h4>Username</h4>-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUser" ErrorMessage="Please enter a Username!" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBoxUser" runat="server" placeholder="Username" Width="100%" Font-Size="Large"></asp:TextBox>
            </div>

            <div class="textbox">
                <!--<h4>Password</h4>-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter a Password!" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBoxPass" runat="server" placeholder="Password" TextMode="Password" Width="100%" Font-Size="Large"></asp:TextBox>
            </div>

            <br />
            <div class="btn">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" CssClass="btn" BorderStyle="None" />
            </div>
            <br />
            <div class="btn">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sign Up" CssClass="btn" BorderStyle="None" />
            </div>
            
        </div>
        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
        <br />
        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                <br />
        <br />
        <br />
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
        <br />
        <br />
        <br />
    </form>
</body>
    <!-- Created by Group 18 of Plymouth Batch 6 (17.1). -->
</html>
