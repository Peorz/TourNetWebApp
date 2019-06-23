<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TourWebApp.browser.back.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/backcss/index/custom-styles.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/backcss/bootstrap-table.min.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
    <script src="../static/backjs/index/custom-scripts.js"></script>
    <script src="../static/js/jquery.metisMenu.js"></script>
    <script src="../static/backjs/bootstrap-table.min.js"></script>
    <script src="../static/backjs/bootstrap-table-zh-CN.min.js"></script>
</head>
<body style="background-color:#1F2837">
    <form id="form1" runat="server">
        <div id="wrapper">
            <nav class="navbar navbar-default top-navbar" role="navigation" style="border-radius: 0">
                <div class="navbar-header">
                    <a class="navbar-brand  " href="index.html">
                        <span>Admin</span>
                    </a>
                </div>
                <div id="side_btn">
                    <a><span class="glyphicon glyphicon-list"></span></a>
                </div>
                <%--<ul class="nav navbar-top-links navbar-right">
                    <a href="#" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        <i class="glyphicon glyphicon-user"></i>
                        (未登陆)
                    <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </ul>--%>
            </nav>
            <!-- Dropdown Structure -->

            <!--/. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li class="manager_item active-menu">
                            <a class="click-link" href="UserManager.aspx">
                                <i class="glyphicon glyphicon-leaf"></i>
                                人员信息
                            </a>
                        </li>
                        <li class="manager_item">
                            <a class="click-link" href="MainManager.aspx">
                                <i class="glyphicon glyphicon-leaf"></i>
                                主页管理
                            </a>
                        </li>
                        <li class="manager_item">
                            <a class="click-link" href="ScenicManager.aspx">
                                <i class="glyphicon glyphicon-leaf"></i>
                                景区管理
                            </a>
                        </li>
                        <li class="manager_item">
                            <a class="click-link" href="UserMesBoard.aspx">
                                <i class="glyphicon glyphicon-leaf"></i>
                                留言板
                            </a>
                        </li>
                        <li class="manager_item">
                            <a class="click-link" href="FileManager.aspx">
                                <i class="glyphicon glyphicon-leaf"></i>
                                资源管理
                            </a>
                        </li>
                    </ul>

                </div>

            </nav>
            <!-- /. NAV SIDE  -->

            <div id="page-wrapper">
            </div>
            <!-- /. PAGE WRAPPER  -->
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            init();
            loadView("UserManager.aspx");
            
        });

        function init() {
            $(".click-link").on("click", function () {
                var url = $(this).attr("href");
                loadView(url);
                return false;
            });
        }

        function loadView(url) {
            $.get(url, function (data) {
                $("#page-wrapper").html(data);//初始化加载界面
            });
        }
        
        $(".manager_item").click(function () {
            $(this).addClass("active-menu").siblings().removeClass("active-menu");                  
        });
  
    </script>
</body>
</html>
