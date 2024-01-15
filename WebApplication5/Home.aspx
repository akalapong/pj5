<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication5.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID="Label1" runat="server" Text="ปี ค.ศ. ที่เกิด"></asp:Label>
        </div>
        <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
        <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="เข้าสู่ระบบ" />
        <br />
        <asp:Image ID="Image1" runat="server" Height="239px" ImageUrl="~/1-1.png" Width="359px" />
    </form>
</body>
</html>
