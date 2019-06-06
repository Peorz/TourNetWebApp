<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourSelect.aspx.cs" Inherits="TourWebApp.browser.view.TourSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/index/customize.css" rel="stylesheet" />
    <link href="../static/css/tourselect/tourselect.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="#">首页</a></li>
                <li><a href="#">搜索</a></li>
                <li class="active">景区信息</li>
            </ol>
        </div>
        <div class="container">
            <div class="TourSelect_title col-md-5">
                <h1>北海</h1>
                <span>BeiHai</span>

            </div>
            <div class="TourSelect_icon col-lg-5 col-md-offset-2">
                <ul>
                    <li><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>想去</li>
                    <li><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>评价</li>
                    <li><span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>攻略</li>
                </ul>
            </div>
        </div>
        <hr />
        <div class="container TourSelect_content">
            <div class="TourSelect_banner col-md-7">
                <img src="../static/img/banner.jpg" />
                <img src="../static/img/banner.jpg" />
                <img src="../static/img/banner.jpg" />
                <img src="../static/img/banner.jpg" />
                <img src="../static/img/banner.jpg" />
                <a href="javascript:;" class="arrow arrow_left"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></a>
                <a href="javascript:;" class="arrow arrow_right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
            </div>
            <div class="TourSelect_Info col-md-5 ">
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
        <div class="container TourSelect_hot">
            <h1>热门景点</h1>



        </div>
        <div class="container TourSelect_hot">
            <h1>旅游攻略</h1>



        </div>
        <div class="container TourSelect_hot">
            <h1>周边美食</h1>



        </div>

        <div class="container TourSelect_hot">
            <h1>热门评论</h1>



        </div>
    </form>

</body>
</html>
