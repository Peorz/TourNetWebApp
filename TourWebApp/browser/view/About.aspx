<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TourWebApp.browser.view.AboutUs" %>

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
    <link href="../static/css/about/about.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <h1>关于我们</h1>
        <div class="box">
            <div class="conten">
                <div class="row">
                    <div class="col-md-4">
                        <div class="nei">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/browser/static/img/about_1.png" Width="90px" />
                            <p>
                                南宁师范大学位于广西壮族自治区首府南宁市，是自治区人民政府举办的本科师范院校。
                                南宁地处亚热带、北回归线以南，是北部湾城市群核心城市、中国面向东盟十国国际大通道、西南出海综合交通枢纽城市，
                                国家“一带一路”海上丝绸之路有机衔接的重要门户城市，是全国文明城市，这里满城皆绿、四季常青，被誉为“中国绿城”。
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
                                南宁师范大学位于广西壮族自治区首府南宁市，是自治区人民政府举办的本科师范院校。
                                南宁地处亚热带、北回归线以南，是北部湾城市群核心城市、中国面向东盟十国国际大通道、西南出海综合交通枢纽城市，
                                国家“一带一路”海上丝绸之路有机衔接的重要门户城市，是全国文明城市，这里满城皆绿、四季常青，被誉为“中国绿城”。
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
                                南宁师范大学位于广西壮族自治区首府南宁市，是自治区人民政府举办的本科师范院校。
                                南宁地处亚热带、北回归线以南，是北部湾城市群核心城市、中国面向东盟十国国际大通道、西南出海综合交通枢纽城市，
                                国家“一带一路”海上丝绸之路有机衔接的重要门户城市，是全国文明城市，这里满城皆绿、四季常青，被誉为“中国绿城”。
                            </p>
                        </div>

                    </div>
                    <div class="col-md-4">
                         <div class="bott1">
                             <asp:Image ID="Image7" runat="server" ImageUrl="~/browser/static/img/about_4.png" Width="90px" />
                            <p>
                                南宁师范大学位于广西壮族自治区首府南宁市，是自治区人民政府举办的本科师范院校。
                                南宁地处亚热带、北回归线以南，是北部湾城市群核心城市、中国面向东盟十国国际大通道、西南出海综合交通枢纽城市，
                                国家“一带一路”海上丝绸之路有机衔接的重要门户城市，是全国文明城市，这里满城皆绿、四季常青，被誉为“中国绿城”。
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                         <div class="bott1">
                             <asp:Image ID="Image8" runat="server" ImageUrl="~/browser/static/img/about_5.png" Width="90px" />
                            <p>
                                南宁师范大学位于广西壮族自治区首府南宁市，是自治区人民政府举办的本科师范院校。
                                南宁地处亚热带、北回归线以南，是北部湾城市群核心城市、中国面向东盟十国国际大通道、西南出海综合交通枢纽城市，
                                国家“一带一路”海上丝绸之路有机衔接的重要门户城市，是全国文明城市，这里满城皆绿、四季常青，被誉为“中国绿城”。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
