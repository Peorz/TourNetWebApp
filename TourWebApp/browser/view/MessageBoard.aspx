<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageBoard.aspx.cs" Inherits="TourWebApp.browser.view.MessageBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/message/message.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="guestbook_nav">
            <h3>留言板</h3>
            <br />
            <div class="guestbook_input">
                <span>欢迎来到留言板</span>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="100px" ViewStateMode="Enabled" Width="100%" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" CssClass="btn-success" runat="server" Text="发送" Height="28px" Width="100%" />
            </div>
        </div>

        <div class="guestbook_content">
            <div class="guestbook_other">
                <div class="guestbook_img">
                    <img src="..\static\img\guestbook_img.png" />
                </div>
                <div class="guestbook_news">
                    <h4><a href="#">Label</a></h4>
                    <span>content</span>
                    <h5>time</h5>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            load();
            $.ajax({
                url: "MessageBoard.aspx/Add",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                    key: $("#TextBox1").val(),
                }),//格式为 "{a:1,b:2}"
                success: function (result) {
                    var data = JSON.parse(result.d);
                    if (data.code == 0) {
                    }
                }
            })
        });

        function load() {
            $.ajax({
                url: "MessageBoard.aspx/GetData",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                }),//格式为 "{a:1,b:2}"
                success: function (result) {
                    var data = JSON.parse(result.d);
                    console.log(data);
                    if (data.code == 0) {
                        var rows = data.rows;
                        for (var i = 0; i < rows.length; i++) {
                            var item = data.rows[i];
                            var dom = $('<div class= "guestbook_other" > ' +
                                '<div class="guestbook_img">' +
                                '<img src="..\static\img\guestbook_img.png" />' +
                                '</div>' +
                                '<div class="guestbook_news">' +
                                '<h4><a href="#">Label</a></h4>' +
                                '<span>content</span>' +
                                '<h5>time</h5>' +
                                '</div></div > ');
                            $(".guestbook_content").append(dom);
                        }
                    }
                }
            })


        };
    </script>
</body>
</html>
