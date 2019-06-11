<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourSel.aspx.cs" Inherits="TourWebApp.browser.view.TourSel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/index/customize.css" rel="stylesheet" />
    <link href="../static/css/toursel/toursel.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Brand</a>
                <form class="navbar-form navbar-left" role="search" runat="server">
                    <div class="form-group">
                        <asp:TextBox ID="SearchBox" runat="server" CssClass="form-control" placeholder="北海"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="搜索" />
                </form>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">登录</a></li>
                <li><a href="#">注册</a></li>
            </ul>
        </div>
    </nav>
</body>
</html>
