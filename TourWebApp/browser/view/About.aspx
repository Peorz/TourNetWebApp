<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TourWebApp.browser.view.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>关于我们</title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/index/customize.css" rel="stylesheet" />
    <link href="../static/css/main/main.css" rel="stylesheet" />
    <link href="../static/css/about/about.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <h1>关于我们 </h1>
        <div class="box">
            <div class="conten">
                <div class="row">
                    <div class="col-md-4">
                        <div class="nei">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/browser/static/img/about_1.png" Width="90px" />
                            <p>
                                XXX，中国年轻一代用得更多的旅游网站。
                                得益于“内容 + 交易” 的核心优势，
                                XXX更理解年轻人的偏好让复杂的旅游决策、预订和体验，变得简单、高效和便捷。
                            </p>
                        </div>
                    </div>
                    <%--轮播图--%>
                    <div class="col-md-4">
                        <div class="row">
                            <div id="container">
                                <div id="photo">
                                    <asp:Image ID="Image2" CssClass="img" runat="server" ImageUrl="~/browser/static/img/about_a.jpg" />
                                    <asp:Image ID="Image3" CssClass="img" runat="server" ImageUrl="~/browser/static/img/about_b.jpg" />
                                    <asp:Image ID="Image4" CssClass="img" runat="server" ImageUrl="~/browser/static/img/about_c.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="nei">
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/browser/static/img/about_2.png" Width="90px" />
                            <p>
                                经大量旅行者自主分享，
                                XXX社区的信息内容不断丰富和完善，
                                成为年轻一代首选的“旅游神器”。
                            </p>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <div class="bott1">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/browser/static/img/about_3.png" Width="90px" />
                            <p>
                                与其他旅游网站相比，
                                XXX更潮、更酷，深谙“年轻一代的选择”，
                                帮助他们从不同角度，重新发现世界。
                            </p>
                        </div>

                    </div>
                    <div class="col-md-4">
                        <div class="bott1">
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/browser/static/img/about_4.png" Width="90px" />
                            <p>
                                我们旅游网站规模化的运营不仅可以为会员提供更多优质的旅行选择，
                                还保障了服务的标准化，确保服务质量，并降低运营成本。
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="bott1">
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/browser/static/img/about_5.png" Width="90px" />
                            <p>
                                我们旅游网站依托景域集团的产业链优势，XXX致力于让游客“自由而有尊严地行走”，要成为“游客心中的第一”。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
