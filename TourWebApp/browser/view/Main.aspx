<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="TourWebApp.browser.view.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%--<link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/login/login.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div id="title_row" class="row">
                <asp:Label ID="main_title" runat="server" CssClass="center-block" Text="人生就是一场说走就走的旅行" Font-Size="XX-Large" ForeColor="White"></asp:Label>
            </div>
            <div id="main_content" class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="card">
                        <div class="row" id="tour_content_div">
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Label ID="Label3" runat="server" CssClass="center-block" Style="text-align: center; margin: 48px" Text="旅行胜地" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="carousel slide" id="carousel-447297">
                                        <ol class="carousel-indicators">
                                            <li data-slide-to="0" data-target="#carousel-447297"></li>
                                            <li data-slide-to="1" data-target="#carousel-447297" class="active"></li>
                                            <li data-slide-to="2" data-target="#carousel-447297"></li>
                                        </ol>
                                        <div class="carousel-inner">
                                            <div class="item">
                                                <img alt="" src="browser/static/img/bg_area_2.jpg" />
                                            </div>
                                            <div class="item active">
                                                <img alt="" src="browser/static/img/bg_area_2.jpg" />
                                            </div>
                                            <div class="item">
                                                <img alt="" src="browser/static/img/bg_area_2.jpg" />
                                            </div>
                                        </div>
                                        <a data-slide="prev" href="#carousel-447297" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-447297" class="right carousel-control">›</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Label ID="Label1" runat="server" CssClass="center-block" Style="text-align: center; margin: 48px" Text="旅行胜地" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 16px">
                            <div class="col-md-3">
                                <img src="browser/static/img/bg_area_2.jpg" class="full-img" alt="xx">
                            </div>
                            <div class="col-md-3">
                                <img src="browser/static/img/bg_area_2.jpg" class="full-img" alt="xx">
                            </div>
                            <div class="col-md-6">
                                <img src="browser/static/img/bg_area_2.jpg" class="full-img" alt="xx">
                            </div>
                        </div>
                        <div class="row" style="margin-top: 16px">
                            <div class="col-md-6">
                                <img src="browser/static/img/bg_area_2.jpg" class="full-img" alt="xx">
                            </div>
                            <div class="col-md-3">
                                <img src="browser/static/img/bg_area_2.jpg" class="full-img" alt="xx">
                            </div>
                            <div class="col-md-3">
                                <img src="browser/static/img/bg_area_2.jpg" class="full-img" alt="xx">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Label ID="Label2" runat="server" CssClass="center-block" Style="text-align: center; margin: 48px" Text="关于我们" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                                <img src="browser/static/img/16849027.jpeg" class="full-img" alt="xx">
                            </div>
                            <div class="col-md-4"></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4"></div>
                            <div class="col-md-4"></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#title_row").css("margin-top", $(window).height() * 1 / 3);

            $.ajax({
                url: "browser/view/Main.aspx/GetTourData",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                }),//格式为 "{a:1,b:2}"
                success: function (result) {
                    var data = JSON.parse(result.d);
                    console.log(data);
                    if (data.code == 0) {
                        var host = "http://psxrtdro4.bkt.clouddn.com/";
                        for (var i = 0; i < data.rows.length; i++) {
                            var item = data.rows[i];
                            var col = $('<div class="col-md-4">' +
                               '<div class="thumbnail">' +
                                   '<img src="' + host + item.Img + '" alt="xx" style="height:150px">' +
                                   '<div class="caption">' +
                                       '<h3>' + item.Title + '</h3>' +
                                       '<p>' + item.Summary + '</p>' +
                                  '</div>' +
                               '</div>' +
                          '</div>');
                            $("#tour_content_div").append(col);
                        }
                    }
                }
            })

            $.ajax({
                url: "browser/view/Main.aspx/GetRotationData",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                }),//格式为 "{a:1,b:2}"
                success: function (result) {
                    var data = JSON.parse(result.d);
                    console.log(data);
                    if (data.code == 0) {
                        var host = "http://psxrtdro4.bkt.clouddn.com/";
                        for (var i = 0; i < data.rows.length; i++) {
                            var item = data.rows[i];
                            var col = $('<div class="item">' +
                                                '<img alt="" src="' + host + item.Img + '" />' +
                                            '</div>');
                            $(".carousel-inner").append(col);
                        }
                    }
                }
            })

        });
    </script>
</body>
</html>
