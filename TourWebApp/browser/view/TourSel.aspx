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

    <nav class="navbar navbar-default navbar-fixed-top" >
        <div class="container-fluid" style="background-color:rgba(34, 139, 34,0.5);">
            <div class="col-md-1"><a class="navbar-brand" href="#" style="color:#fff;">Brand</a></div>
            <div class="navbar-header col-md-8">                        
                <form class="navbar-form navbar-left" role="search" runat="server">
                    <div class="form-group" style="width:600px;">
                        <asp:TextBox ID="SearchBox" runat="server" CssClass="form-control" placeholder="北海"  style="width:600px;"></asp:TextBox>                      
                    </div>
                    <asp:Button ID="SearchBtn" runat="server" CssClass="btn btn-success" Text="搜索" />                
                </form>
            </div>
            <ul class="nav navbar-nav navbar-right col-md-2 col-md-offset-1">
                <li><a href="#"style="color:#fff;">登录</a></li>
                <li><a href="#"style="color:#fff;">注册</a></li>
            </ul>
        </div>
    </nav>
    <div class="container" style="margin-top:60px;">
        <div class="searchnum col-md-5">
            <h3>共为您搜索到<span>N条</span>关于北海的信息</h3>
        </div>      
    </div>
</body>
</html>
