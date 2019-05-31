﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TourWebApp.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="browser/static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="browser/static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="browser/static/js/jquery.min.js"></script>
    <script src="browser/static/js/bootstrap.min.js"></script>
</head>
<body>
    <form class="form-horizontal" runat="server" role="form">
        <%-- 导航栏 s--%>
        <nav class="navbar navbar-default" style="margin: 8px; position: absolute; width: 99%; z-index: 10">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-2">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">智慧豪</a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <ul class="nav navbar-nav">
                            <li><a href="#">旅游咨询</a></li>
                            <li><a href="#">周边美食</a></li>
                            <li>
                                <div class="navbar-form navbar-left">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="btn btn-default" />
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">关于我们</a></li>
                            <li>
                                <a href="#">
                                    <span class="glyphicon glyphicon-leaf" aria-hidden="true"></span>
                                    <span class="sr-only">Error:</span>注册
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                    <span class="sr-only">Error:</span>登录
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <%-- 导航栏 e--%>
        <div id="content" style="position: absolute; width: 100%; z-index: 0">
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            loadView("browser/view/Test.aspx")
        });

        //加载页面
        function loadView(url) {
            $.get(url, function (data) {
                $("#content").html(data);//初始化加载界面
            });
        }
    </script>
</body>
</html>