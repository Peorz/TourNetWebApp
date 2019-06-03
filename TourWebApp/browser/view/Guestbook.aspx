<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guestbook.aspx.cs" Inherits="TourWebApp.browser.view.Guestbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <span>留言板</span>
                <br />
                <span>欢迎来到留言板</span>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="64px" ViewStateMode="Enabled" Width="171px"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="发送" />
                <br />
                <span>留言（<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>）</span>
                <br />

            </div>
        </div>
    </form>
</body>
</html>
