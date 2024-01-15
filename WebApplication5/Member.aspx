<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="WebApplication5.Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        form {
            width: 400px;
            max-width: 90%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 500px;
        }
        .bg-img {
        background-image: url(img/wel.jpg);
        width: 100%;
        height: 100%;
        visibility: visible;
        top: 0px;
        left: 0px;
        background-position: center;
        background-repeat: no-repeat;
        position: absolute;
    }
                .logout-button {
            background-color: #33b5e5;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        .logout-button:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    
    <div class="bg-img">
    <form id="form2" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Logout" CssClass="logout-button" OnClick="btnLogout_Click"/>
        </form>
        </div>
    
</body>
</html>
