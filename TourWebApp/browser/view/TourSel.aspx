<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourSel.aspx.cs" Inherits="TourWebApp.browser.view.TourSel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>旅游景区</title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/index/customize.css" rel="stylesheet" />
    <link href="../static/css/toursel/toursel.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
    <script src="../static/js/qiniu.min.js"></script>
    <script src="../static/js/myfileup.js"></script>
</head>
<body>

    <nav class="navbar navbar-default navbar-fixed-top" style="margin-bottom: 10px;">
        <div class="container-fluid" style="background-color: rgba(34, 139, 34,0.5);">
            <div class="col-md-1"><a class="navbar-brand" href="#" style="color: #fff;">搜索</a></div>
            <div class="navbar-header col-md-8">
                <form class="navbar-form navbar-left" role="search" runat="server">
                    <div class="form-group">
                        <input id="SearchBox" class="form-control" style="width: 600px;" />
                    </div>
                    <button id="SearchBtn" type="button" class="btn btn-success"><span class="glyphicon glyphicon-search"></span></button>
                </form>
            </div>
            <ul class="nav navbar-nav navbar-right col-md-2 col-md-offset-1" style="display: none">
                <li><a href="#" style="color: #fff;">登录</a></li>
                <li><a href="#" style="color: #fff;">注册</a></li>
            </ul>
        </div>
    </nav>
    <div class="content">

        <div class="container">
            <div class="searchnum col-md-5">
                <div class="container">
                    <ol class="breadcrumb">
                        <li><a href="#">首页</a></li>
                        <li class="active">景区信息</li>
                    </ol>
                </div>
                <h3></h3>
            </div>
        </div>
        <%--<div class="container">
            <ul class="nav nav-pills selecthr col-md-12 ">
                <li role="presentation" class="search_item active"><a href="#">全部<span class="badge">100</span></a></li>
                <li role="presentation" class="search_item"><a href="#">景区<span class="badge">100</span></a></li>
                <li role="presentation" class="search_item"><a href="#">美食<span class="badge">100</span></a></li>
                <li role="presentation" class="search_item"><a href="#">攻略<span class="badge">100</span></a></li>
                <li role="presentation" class="search_item"><a href="#">讨论<span class="badge">100</span></a></li>
            </ul>
        </div>--%>
        <div class="container">
            <div class="infobox col-md-12">
                <ul class="infoul">
                </ul>

                <nav aria-label="Page navigation" style="text-align: center;">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            var scenicKey = GetQueryString("param");
            loadList(scenicKey);
        })

        function GetQueryString(name) {
            //构造一个含有目标参数的正则表达式对象  
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            //匹配目标参数  
            var r = window.location.search.substr(1).match(reg);
            //alert(r);
            //返回参数值  
            if (r != null) return decodeURI(r[2]);
            return null;
        }
        $(".search_item").click(function () {
            $(this).addClass("active").siblings().removeClass("active");

            var num = $(".tabs_ul>li").index(this);
            $('.imgbox ul').eq(num).show().siblings().hide();
        });
        function loadList(getKey) {
            console.log(getKey);
            $.ajax({
                url: "TourSel.aspx/DisplayList",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                    ScenicKey: getKey
                }),//格式为 "{a:1,b:2}"
                success: function (result) {
                    var data = JSON.parse(result.d);
                    console.log(data);
                    if (data.code == 0) {
                        var txt;
                        if (getKey.length == 0) {
                            txt = "";
                        } else {
                            txt = '关于<span class="label label-success">' + getKey + '</span>的';
                        }
                        var total_info = '共为您搜索到<span class="label label-success">' + data.total + '</span>条' + txt + '信息</div>';
                        $(".searchnum h3").html(total_info);
                        for (var i = 0; i < data.rows.length; i++) {
                            var item = data.rows[i];
                            var dom = $('<li>' +
                        '<div class="list_box">' +
                            '<div class="list_img">' +
                               ' <a href="TourInfo.aspx?id=' + item.ID + '" target="_blank">' +
                                    '<img src="' + item.ScenicPic + '" alt="pic" />' + '</a>' +
                            '</div>' +
                            '<div class="list_text">' +
                                '<div class="list_title">' +
                                    '<a href="TourInfo.aspx?id=' + item.ID + '" target="_blank">' +
                                        '<h4>' +
                                        '<span class="label label-success">风景</span>' + item.ScenicTitle + '</h4>' +
                                    '</a>' +
                                '</div>' +
                                '<div class="list_content">' +
                                    '<p>' + item.ScenicContent + '</p>' +
                                '</div>' +
                                '<div class="list_icon">' +
                                    '<p>更新时间：<span class="createtime">' + item.ScenicUploadTime + '</span><span class="glyphicon glyphicon-eye-open" style="margin-left: 10px;"><i>' + item.ScenicBrowse + '</i></span></p>' +
                                '</div>' +
                            '</div>' +
                        '</div>' +
                    '</li>');
                            $(".infoul").append(dom);
                        }
                    }
                },
                error: function () { alert("显示失败，程序异常！"); return; }
            })
        }
        $("#SearchBtn").click(function () {
            var val = $("#SearchBox").val();
            loadList(val);
        });

    </script>
</body>
</html>
