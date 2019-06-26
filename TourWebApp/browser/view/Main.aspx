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
    <link href="../static/css/main/about.css" rel="stylesheet" />
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
                                                <img alt="" style="height: 400px; width: 100%" src="browser/static/img/bg_area_1.jpg" />
                                            </div>
                                            <div class="item active">
                                                <img alt="" style="height: 400px; width: 100%" src="browser/static/img/bg_area_3.jpg" />
                                            </div>
                                            <div class="item">
                                                <img alt="" style="height: 400px; width: 100%" src="browser/static/img/bg_area_2.jpg" />
                                            </div>
                                        </div>
                                        <a data-slide="prev" href="#carousel-447297" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-447297" class="right carousel-control">›</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Label ID="Label1" runat="server" CssClass="center-block" Style="text-align: center; margin: 48px" Text="旅行资讯" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 16px">
                            <div class="col-md-3 package1">
                                <img src="browser/static/img/main_bg1.jpg" class="full-img" alt="xx"/>
                                <h4>北海银滩之旅</h4>
                                <h5>参考价：888元</h5>
                                <a href="/browser/view/TourInfo.aspx?id=8baef878fded49049288b80e7aab529b" target="_blank" class="w3_agileits_sign_up2 popup-with-zoom-anim ab scroll">进入</a>
                            </div>
                            <div class="col-md-3 package1">
                                <img src="browser/static/img/main_bg2.jpg" class="full-img" alt="xx"/>
                                <h4>桂林山水之旅</h4>
                                <h5>参考价：1888元</h5>
                                <a href="/browser/view/TourInfo.aspx?id=0e011e1f820442eb94e8c92cd017d906" target="_blank" class="w3_agileits_sign_up2 popup-with-zoom-anim ab scroll">进入</a>
                            </div>
                            <div class="col-md-6 package2">
                                <img src="browser/static/img/main_bg5.jpg" class="full-img" alt="xx"/>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 16px">
                            <div class="col-md-6 package2">
                                <img src="browser/static/img/main_bg6.jpg" class="full-img" alt="xx"/>
                            </div>
                            <div class="col-md-3 package1">
                                <img src="browser/static/img/main_bg3.jpg" class="full-img" alt="xx"/>
                                <h4>伦敦之旅</h4>
                                <h5>参考价：2888元</h5>
                                <a href="/browser/view/TourInfo.aspx?id=cdef706d88e14f788312467f043150e3" target="_blank" class="w3_agileits_sign_up2 popup-with-zoom-anim ab scroll">进入</a>
                            </div>
                            <div class="col-md-3 package1">
                                <img src="browser/static/img/main_bg4.jpg" class="full-img" alt="xx"/>
                                <h4>巴黎之旅</h4>
                                <h5>参考价：3888元</h5>
                                <a href="/browser/view/TourInfo.aspx?id=69455e7225cc4bd49c3428d42ab4c00a" target="_blank" class="w3_agileits_sign_up2 popup-with-zoom-anim ab scroll">进入</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Label ID="Label2" runat="server" CssClass="center-block" Style="text-align: center; margin: 60px" Text="联系我们" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-md-offset-2 about_title">
                                <h3>联系我们</h3>
                            </div>
                            <div class="col-md-5 col-md-offset-1">
                                <h3>联系方式</h3>
                            </div>
                        </div>
                        <br />
                        <div class="row about">
                            <div class="col-md-4 col-md-offset-2 about_title">
                                <asp:TextBox ID="nick_tb" CssClass="form-control" runat="server" placeholder="姓名"></asp:TextBox><br />
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="邮箱"></asp:TextBox><br />
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="电话"></asp:TextBox><br />
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Height="100px" TextMode="MultiLine" placeholder="内容..."></asp:TextBox><br />
                                <asp:Button ID="register_btn" runat="server" Text="提交" CssClass="btn btn-success" Style="width: 100px" />
                            </div>
                            <div class="col-md-5 col-md-offset-1">
                                <br />
                                <div class="about_p">
                                    <div class="about_pht">
                                        <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                    </div>
                                    <div style="padding-top: 10px; margin-left: 60px;">
                                        <span style="font-size: 14px;">南宁师范大学</span>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <div class="about_p">
                                    <div class="about_pht">
                                        <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                    </div>
                                    <div style="padding-top: 10px; margin-left: 60px;">
                                        <span style="font-size: 14px;">88888888@163.com</span>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <div class="about_p">
                                    <div class="about_pht">
                                        <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                                    </div>
                                    <div style="padding-top: 10px; margin-left: 60px;">
                                        <span style="font-size: 14px;">88+88888888</span>
                                    </div>
                                </div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4"></div>
                        <div class="col-md-4"></div>
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
                                '<img src="' + host + item.Img + '" alt="xx" style="height:150px;width:100%">' +
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
