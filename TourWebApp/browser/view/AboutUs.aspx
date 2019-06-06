<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="TourWebApp.browser.view.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/index/customize.css" rel="stylesheet" />
    <link href="../static/css/main/main.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <div id="bg_area">
        </div>
        <div id="content">
        </div>
        <div class="container-fluid">
            <div id="title_row" class="row">
                <asp:Label ID="main_title" runat="server" CssClass="center-block" Text="人生就是一场说走就走的旅行" Font-Size="XX-Large" ForeColor="White"></asp:Label>
            </div>
            <div id="main_content" class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="card" style="height: 600px">
                        <div class="row">
                            <h2 style="text-align: center; font-family: '微软雅黑';">关于我们</h2>
                            <p style="margin-left: 110px; margin-right: 110px;">
                                <span style="font-size: 25px; padding: 12px;">坚</span>守“正道成功”的价值取向，坚定地践行用合法方式获得商业成功，
                                致力于成为一家为社会创造最大价值的公司。自创立之初，智慧就秉持诚信经营的核心理念，
                                坚守正品行货、倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                            </p>
                            <p style="margin-left: 110px; margin-right: 110px;">
                                <span style="font-size: 25px; padding: 12px;">坚</span>守“正道成功”的价值取向，坚定地践行用合法方式获得商业成功，
                                致力于成为一家为社会创造最大价值的公司。自创立之初，智慧就秉持诚信经营的核心理念，
                                坚守正品行货、倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                            </p>
                            <p style="margin-left: 110px; margin-right: 110px;">
                                <span style="font-size: 25px; padding: 12px;">坚</span>守“正道成功”的价值取向，坚定地践行用合法方式获得商业成功，
                                致力于成为一家为社会创造最大价值的公司。自创立之初，智慧就秉持诚信经营的核心理念，
                                坚守正品行货、倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                                倡导品质经济，成为中国备受消费者信赖的零售平台；
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
    <script type="text/javascript">


        $(document).ready(function () {
            init();
            loadView("browser/view/Main.aspx")
            $.ajax({
                type: "PUT",
                contentType: "application/json",
                url: "server/controller/Test.ashx?name=123",
                success: function (data) {
                    console.log(data);
                }
            });
        });
        function init() {
            $("#bg_area").css("height", $(window).height() * 2 / 3);
            $("#content").css("padding-top", $("nav").outerHeight(true));
        }
        //function loadView(url) {
        //    $.get(url, function (data) {
        //        $("#content").html(data);//初始化加载界面
        //    });
        //}

        $(document).ready(function () {
            $("#title_row").css("margin-top", $(window).height() * 1 / 3);
        });

    </script>

</body>
</html>
