<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TourWebApp.browser.back.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/backcss/index.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid" style="margin: 0; padding: 0">
            <div id="nav_area" style="margin: 0px">
                <div class="row" style="text-align: center">
                    <img id="head_img" src="../static/img/16849027.jpeg" alt="..." class="img-circle">
                </div>
                <div class="row">
                    <div id="item_list" class="list-group">
                        <a href="#" class="list-group-item active">
                            <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                            <span class="sr-only">Error:</span>
                            人员信息
                        </a>
                        <a href="#" class="list-group-item">
                            <span class="glyphicon glyphicon-king" aria-hidden="true"></span>
                            <span class="sr-only">Error:</span>
                            主页管理
                        </a>
                        <a href="#" class="list-group-item">
                            <span class="glyphicon glyphicon-tree-conifer" aria-hidden="true"></span>
                            <span class="sr-only">Error:</span>
                            景区详情
                        </a>
                        <a href="#" class="list-group-item">
                            <span class="glyphicon glyphicon-duplicate" aria-hidden="true"></span>
                            <span class="sr-only">Error:</span>
                            留言板
                        </a>
                    </div>
                </div>
            </div>
            <div id="title_area" style="background-color: azure">
            </div>
            <div id="content_area" style="background-color: antiquewhite">
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            position();
        });

        function position() {
            var windownWidth = $(window).width();
            var windownHeight = $(window).height();
            var nav_area_width = windownWidth / 6;
            var content_area_width = windownWidth - nav_area_width;
            var title_area_height = windownHeight / 10;

            console.log(nav_area_width);
            var nav_area = $("#nav_area");
            nav_area.css("width", nav_area_width);
            nav_area.css("height", windownHeight);

            var title_area = $("#title_area");
            title_area.css("width", content_area_width);
            title_area.css("left", nav_area_width);
            title_area.css("height", title_area_height);

            var content_area = $("#content_area");
            content_area.css("width", content_area_width);
            content_area.css("top", title_area_height);
            content_area.css("left", nav_area_width);
            content_area.css("height", windownHeight - title_area_height);
        }
    </script>
</body>
</html>
