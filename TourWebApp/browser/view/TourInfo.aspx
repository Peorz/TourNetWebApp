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
                <asp:Label ID="scenic_name" CssClass="scenic_name" runat="server" Text=""></asp:Label>
                <asp:Label ID="scenic_py" CssClass="scenic_py" runat="server" Text=""></asp:Label>
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
                </ul>

                <div class="img_btn btn_left"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></div>
                <div class="img_btn btn_right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></div>
            </div>
            <div class="tourinfo_Info col-md-5 ">
                <h3>景区介绍</h3>
                <div class="tourinfo_txt"><span id="scenicTxt"></span></div>
            </div>
        </div>
        <hr />
        <div class="container tourinfo_hot">
            <h1>告诉你怎么玩,附近更多的景点</h1>
            <div class="imgbox col-md-12">
                <ul class="tourinfo_img">                   
                </ul>
                <div class="more_scenic_btn">
                    <asp:Button ID="btnTour" CssClass="btn btn-success btn_tour" runat="server" Text="查看更多景点" /></div>
            </div>
        </div>
    </form>
    <script>
        //页面初始化加载
        $(document).ready(function () {
            $(".imgbox .tourinfo_img:gt(0)").hide();
            var getID = GetQueryString("id");
            loadInfo(getID);
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
        function GetQueryString(ID) {
            //构造一个含有目标参数的正则表达式对象  
            var reg = new RegExp("(^|&)" + ID + "=([^&]*)(&|$)");
            //匹配目标参数  
            var r = window.location.search.substr(1).match(reg);
            //alert(r);
            //返回参数值  
            if (r != null) return decodeURI(r[2]);
            return null;
        }
        //加载数据
        function loadInfo(getID) {
            $.ajax({
                url: "TourInfo.aspx/DisplayInfo",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                    GetID: getID
                }),//格式为 "{a:1,b:2}"
                success: function (result) {
                    var data = JSON.parse(result.d);
                    console.log(data);
                    if (data.code == 0) {
                        $("#scenic_name").text(data.rows[0].ScenicName);
                        $("#scenic_py").text(data.rows[0].ScenicEnglish);
                        $("#scenicTxt").text(data.rows[0].ScenicContent);
                        moreScenic();
                    }
                },
                error: function () { alert("显示失败，程序异常！"); return; }
            })

            $.ajax({
                url: "TourInfo.aspx/RotaryPic",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                    GetID: getID
                }),//格式为 "{a:1,b:2}"
                success: function (result) {
                    var data = JSON.parse(result.d);
                    console.log(data);
                    if (data.code == 0) {
                        for (var i = 0; i < data.rows.length; i++) {
                            var item = data.rows[i];
                            var imgList = $('<li>' +
                                '<img alt="" src="' + item.ScenicImg + '" />' +
                                '</li>');
                            $(".img_ul").append(imgList);
                        }
                    }
                }
            })
        }
        //更多景点显示
        function moreScenic() {
            var key = $("#scenic_name").html();
            console.log(key);
            $.ajax({
                url: "TourInfo.aspx/DisplayMore",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                    LoadKey: key
                }),//格式为 "{a:1,b:2}"
                success: function (result) {
                    var data = JSON.parse(result.d);
                    if (data.code == 0) {
                        var temp;
                        if (data.rows.length > 4) {
                            temp = 4;
                        } else {
                            temp = data.rows.length;
                        }
                        for (var i = 0; i < temp; i++) {
                            var item = data.rows[i];
                            var dom = $('<li class="more_scenic_list">' +
                        '<a href="TourInfo.aspx?keyid=' + item.ID + '" target="_blank">' +
                            '<img src="' + item.ScenicPic + '" style="width: 255px; height: 180px;" />' +
                            '<div class="more_scenic_name">' +
                                '<h4>' + item.ScenicName + '</h4>' +
                                '<span class="scenic_price">门票：<i>888</i>元</span>' +
                            '</div>' +
                            '<div class="more_scenic_title">' +
                                '<span class="scenic_title">' + item.ScenicTitle + '</span>' +
                            '</div>' +
                        '</a>' +
                    '</li>');
                            $(".tourinfo_img").append(dom);
                        }
                       
                    }
                },
                error: function () { alert("显示失败，程序异常！"); return; }
            })
        }
    </script>
</body>
</html>
