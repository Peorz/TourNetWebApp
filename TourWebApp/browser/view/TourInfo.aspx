<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourInfo.aspx.cs" Inherits="TourWebApp.browser.view.TourInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/index/customize.css" rel="stylesheet" />
    <link href="../static/css/tourinfo/tourinfo.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="#">首页</a></li>
                <li class="active">景区信息</li>
            </ol>
        </div>
        <div class="container">
            <div class="tourinfo_title col-md-5">             
                <asp:Label ID="scenic_name" CssClass="scenic_name" runat="server" Text="北海"></asp:Label>
                <asp:Label ID="scenic_py" CssClass="scenic_py" runat="server" Text="BeiHai"></asp:Label>
            </div>
            <div class="tourinfo_icon col-lg-5 col-md-offset-2">
                <ul>
                    <li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true">想去</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-edit" aria-hidden="true">评价</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-hand-right" aria-hidden="true">攻略</span></a></li>
                </ul>
            </div>
        </div>
        <hr />
        <div class="container tourinfo_content">
            <div class="tourinfo_banner col-md-6">
                <ul class="img_ul">
                    <li>
                        <img src="../static/img/banner.jpg" /></li>
                    <li>
                        <img src="../static/img/bg_area_1.jpg" /></li>
                    <li>
                        <img src="../static/img/bg_area_2.jpg" /></li>
                    <li>
                        <img src="../static/img/banner.jpg" /></li>
                    <li>
                        <img src="../static/img/banner.jpg" /></li>
                </ul>

                <div class="img_btn btn_left"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></div>
                <div class="img_btn btn_right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></div>
            </div>
            <div class="tourinfo_Info col-md-5 ">
                <h3>城市介绍</h3>
                <p>
                    北海市拥有4A级景区9家，分别为：银滩国家旅游度假区、
                    涠洲岛鳄鱼山景区、北海老城景区、
                    金海湾红树林生态旅游区、北海园博园、
                    北海汉闾文化园、海底世界、海洋之窗、嘉和·冠山海；
                    此外还有3A级景区8家，以及星岛湖旅游度假区、“世外桃源”斜阳岛、
                    冠头岭国家森林公园、山口国家级红树林自然保护区、儒艮（美人鱼）
                    国家自然保护区等一批旅游景点景区。
                </p>
            </div>
        </div>
        <hr />
        <div class="container tourinfo_hot">
            <h1>告诉你怎么玩</h1>
            <ul class="nav nav-tabs tabs_ul">
                <li role="presentation" class="tab-item myactive"><a href="#">景点</a></li>
                <li role="presentation" class="tab-item "><a href="#">美食</a></li>
                <li role="presentation" class="tab-item "><a href="#">攻略</a></li>
            </ul>
            <div class="imgbox col-md-12">
                <ul class="tourinfo_img">
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>银滩</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>银滩</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>银滩</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>银滩</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>银滩</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>银滩</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>银滩</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>银滩</h4>
                        </a>
                    </li>
                    <asp:Button ID="btnTour" CssClass="btn btn-success btn_tour" runat="server" Text="查看更多景点" />

                </ul>
                <ul class="tourinfo_img">
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>鱿鱼丝</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>鱿鱼丝</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>鱿鱼丝</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>鱿鱼丝</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>鱿鱼丝</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>鱿鱼丝</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>鱿鱼丝</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>鱿鱼丝</h4>
                        </a>
                    </li>
                    <asp:Button ID="btnFood" CssClass="btn btn-success btn_tour" runat="server" Text="查看更多美食" />
                </ul>
                <ul class="tourinfo_img">
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>攻略1</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>攻略1</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>攻略1</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>攻略1</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>攻略1</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>攻略1</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>攻略1</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank">
                            <img src="../static/img/banner.jpg" style="width: 255px; height: 180px;" />
                            <h4>攻略1</h4>
                        </a>
                    </li>
                    <asp:Button ID="btnStrategy" CssClass="btn btn-success btn_tour" runat="server" Text="查看更多攻略" />
                </ul>

            </div>
        </div>    
    </form>
    <script>
        $(document).ready(function () {
            $(".imgbox .tourinfo_img:gt(0)").hide();
        });
        var index = 0;
        function autoMove() {
            //隐藏所有
            $('.img_ul>li').hide();
            if (index == $('.img_ul>li').length - 1) {
                index = 0;
            } else {
                index = index + 1;
            }
            //设置当前的索引显示
            $('.img_ul>li:eq(' + index + ')').show();
        }

        var t = setInterval(autoMove, 2000);

        $('.img_ul').mouseover(function () {
            //清除定时器
            clearInterval(t);
        });

        $('.img_ul').mouseout(function () {
            t = setInterval(autoMove, 2000);
        });
        //上一张
        $('.btn_left').bind('click', function () {

            //隐藏所有
            $('.img_ul>li').hide();
            //获取到当前的索引
            if (index <= 0) {
                index = $('.img_ul>li').length - 1;
            } else {
                index = index - 1;
            }
            //设置当前的索引显示
            $('.img_ul>li:eq(' + index + ')').show();
        });
        //下一张
        $('.btn_right').bind('click', function () {

            //隐藏所有
            $('.img_ul>li').hide();


            if (index == $('.img_ul>li').length - 1) {
                index = 0;
            } else {
                index = index + 1;
            }
            //设置当前的索引显示
            $('.img_ul>li:eq(' + index + ')').show();
        });

        $('.tab-item').mouseenter(function () {
            $(this).addClass('myactive').siblings().removeClass('myactive');
            
            var num = $(".tabs_ul>li").index(this);
            $('.imgbox ul').eq(num).show().siblings().hide();
        });
    </script>
</body>
</html>
