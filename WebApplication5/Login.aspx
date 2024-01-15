<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication5.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='https://fonts.googleapis.com/css?family=Kanit' rel='stylesheet'>
    <title></title>
    <style>
        body {
            font-family: 'Kanit';font-size: 22px;
        }
        form {
            width: 400px;
            max-width: 90%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 170px;
            min-height: 300px;
            padding: 0px 30px 22px 30px;
            background-color: white;
            border-radius: 6px;
            box-shadow: 0 10px 20px 0 rgba(0,0,0,0.2);
            box-sizing: border-box;
        }
        .bg-img {
            background-image: url(img/bg.jpg);
            width: 100%;
            height: 100%;
            visibility: visible;
            top: 0px;
            left: 0px;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: absolute;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .login-button {
            background-color: #33b5e5;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        .login-button:hover {
            opacity: 0.8;
        }
        .tab-label {
            border-top: 4px solid #057FEB;
            width: 70px;
        }
</style>
</head>
<body>
    <div class="bg-img">
        <form id="form1" runat="server">
            <div class="tab-label"></div>
            <h4>เข้าสู่ระบบเพื่อไปหน้าถัดไป...</h4>
            <div><asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></div>
            <div><asp:TextBox ID="txtUser" runat="server" placeholder="Username"></asp:TextBox></div>
            <div><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></div>
            <div><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox></div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-button" OnClick="btnLogin_Click"/>
        </form>
    </div>
</body>
</html>
