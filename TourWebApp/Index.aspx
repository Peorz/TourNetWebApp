<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TourWebApp.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="browser/static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="browser/static/css/card-view.css" rel="stylesheet" />
    <link href="browser/static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="browser/static/css/index/customize.css" rel="stylesheet" />
    <link href="browser/static/css/main/main.css" rel="stylesheet" />
    <link href="browser/static/css/main/about.css" rel="stylesheet" />
    <script src="browser/static/js/jquery.min.js"></script>
    <script src="browser/static/js/bootstrap.min.js"></script>
</head>
<body>
    <form class="form-horizontal" runat="server" role="form">
        <%-- 导航栏 s --%>
        <nav class="navbar navbar-default" style="margin: 12px; position: absolute; width: 98.5%; z-index: 10;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-2">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">xxxxx</a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <ul class="nav navbar-nav">
                            <li><a href="browser/view/TourSel.aspx?param=">旅游景区</a></li>
                            <li><a href="browser/view/MessageBoard.aspx">留言板</a></li>
                            <li><a href="browser/view/About.aspx">关于我们</a></li>
                            <li>
                                <div class="navbar-form navbar-left">
                                    <div class="form-group ">
                                        <asp:TextBox ID="SearchText" runat="server" CssClass="form-control" placeholder="输入搜索内容"></asp:TextBox>
                                    </div>
                                    <asp:Button ID="SearchBtn" runat="server" Text="搜索" CssClass="btn btn-default" OnClick="SearchBtn_Click"  />
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <ul class="nav navbar-nav navbar-right">
                            <%
                                String outStr = "";
                                String inStr = "style='display:none'";
                                String admin = "style='display:none'";
                                TourWebApp.server.mode.UserInfo user = Session["user"] as TourWebApp.server.mode.UserInfo;
                                if (user != null)
                                {
                                    outStr = "style='display:none'";
                                    inStr = "";
                                    if (user.Type == 2)
                                    {
                                        admin = "";
                                    }
                                }
                                %>
                            <li <% Response.Write(outStr);%>>
                                <a href="browser/view/Register.aspx">
                                    <span class="glyphicon glyphicon-leaf" aria-hidden="true"></span>
                                    <span class="sr-only">Error:</span>注册
                                </a>
                            </li>
                            <li <% Response.Write(outStr);%>>
                                <a href="browser/view/Login.aspx">
                                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                    <span class="sr-only">Error:</span>登录
                                </a>
                            </li>
                            <li class="head_img" <% Response.Write(inStr);%>>
                                <img class="btn-default dropdown-toggle" data-toggle="dropdown" src="browser/static/img/16849027.jpeg" />
                                <ul class="dropdown-menu">
                                    <li role="separator" class="divider"></li>
                                    <li <% Response.Write(admin);%>><a target="_blank" href="browser/back/Index.aspx">后台管理</a></li>
                                    <li <% Response.Write(admin);%> role="separator" class="divider"></li>
                                    <li><a href="browser/view/Personal.aspx">个人中心</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="browser/view/Login.aspx">退出</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <%-- 导航栏 e --%>
        <%-- 背景 s --%>
        <div id="bg_area">
        </div>
        <%-- 背景 e --%>
        <%-- 内容区域 s --%>
        <div id="content">
        </div>
        <%-- 内容区域 e --%>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            init();
            loadView("browser/view/Main.aspx")
            $.ajax({
                type: "Post",
                url: "Index.aspx/Add",
                data: "{}",
                contentType: "application/json; chartset=utf-8",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                },
                error: function (err) {
                    alert(err);
                }
            });
        });

        function init() {
            $("#bg_area").css("height", $(window).height() * 2 / 3);
            $("#content").css("padding-top", $("nav").outerHeight(true));
            //为 css 样式为 click-link 的元素添加点击监听
            //去除跳转 将页面填充到该页面下。
            $(".click-link").on("click", function () {
                var url = $(this).attr("href");
                loadView(url);
                return false;
            });
        }

        //加载页面
        function loadView(url) {
            $.get(url, function (data) {
                $("#content").html(data);//初始化加载界面
            });
        }
        $("#SearchBtn").click(function () {
            window.location.href = "/browser/view/TourSel.aspx";
        });
    </script>
</body>
</html>
