<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourSelect.aspx.cs" Inherits="TourWebApp.browser.view.TourSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/index/customize.css" rel="stylesheet" />
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
            <h1>BeiHai</h1>
            <h2>北海<span class="label label-info" style="font-size:x-small" >共0条搜索结果</span></h2>
        </div>
        <div class="container">
            <img src="../static/img/banner.jpg" class="" alt="图片1" />
            <p>景区介绍</p>
        </div>
    </form>

</body>
</html>
