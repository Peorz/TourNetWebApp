<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassWrod.aspx.cs" Inherits="TourWebApp.browser.view.ForgetPassWrod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/forgetpsw/forgetpsw.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div id="login_content" class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="card">
                        <div class="row Register_title">
                            <asp:Label runat="server" Text="RetrieveThePassword" Font-Size="XX-Large" ForeColor="Gray"></asp:Label>
                        </div>

                        <div class="input-group" style="margin-top: 16px">
                            <asp:Label ID="Label4" runat="server" CssClass="input-group-addon" Text="邮&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp箱："></asp:Label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="请输入邮箱"></asp:TextBox>
                        </div>

                        <%--验证码--%>
                        <div class="input">
                            <input id="t1" type="text" name="u" placeholder="验证码" style="height: 25px;"/>
                            <span id="discode"></span>
                            <input type="button" value="换一换" class="c" style="height: 25px;" onclick="createCode()" />
                            <span  style="color:red;font-weight:bold;" id="messBox"></span>
                        </div>
                        <%--验证码--%>

                        <div class="row center-block" style="margin-top: 16px">
                            <button id="next_btn" type="button" class="btn btn-success" style="width: 100%">下一步</button>
                        </div>
                    </div>
                    <div class="row alert alert-warning" style="margin-left: 16px; margin-right: 16px">
                        <div class="col-md-8">

                            <a href="Login.aspx">点击登录</a>
                        </div>
                        <div class="col-md-4">
                            <a href="Main.aspx">返回首页</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        var code; //在全局 定义验证码
        $(document).ready(function () {
            createCode();
            $("#next_btn").on("click", function () {
                //验证验证码输入是否正确
                var val1 = document.getElementById("t1").value;
                var val2 = code;
                if (val1 != val2) {
                    $("#messBox").html("验证码错误");                 
                    document.getElementById('t1').value = "";
                }
                else {
                    window.location.href = "Main.aspx";
                }
            });
        });

        function createCode() { //创建验证码函数
            code = "";
            document.getElementById('t1').value = "";
            var codeLength = 4;//验证码的长度
            var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
                'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');//所有候选组成验证码的字符，当然也可以用中文的
            for (var i = 0; i < codeLength; i++) {
                var charIndex = Math.floor(Math.random() * 36);
                code += selectChar[charIndex];
            }
            // 设置验证码的显示样式，并显示
            document.getElementById("discode").style.fontFamily = "Fixedsys"; //设置字体
            document.getElementById("discode").style.letterSpacing = "5px"; //字体间距
            document.getElementById("discode").style.color = "#0ab000"; //字体颜色
            document.getElementById("discode").innerHTML = code; // 显示
        }
    </script>
</body>
</html>
