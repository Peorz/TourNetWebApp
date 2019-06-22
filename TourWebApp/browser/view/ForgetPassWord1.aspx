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
                        <div class="content">
                            <div class="web-width">
                                <div class="for-liucheng">
                                    <div class="liulist"></div>
                                    <div class="liulist for-cur"></div>
                                    <div class="liutextbox">
                                        <div class="liutext">
                                            <em>1</em><br />
                                            <strong>填写账户名</strong>
                                        </div>
                                        <div class="liutext for-cur">
                                            <em>2</em><br />
                                            <strong>设置新密码</strong>
                                        </div>
                                    </div>
                                </div>
                                <!--for-liucheng/-->
                                <form method="get" class="forget-pwd">
                                    <dl>
                                        <div class="input-group" style="margin-top: 16px">
                                            <asp:Label ID="Label1" runat="server" CssClass="input-group-addon" Text="新密码："></asp:Label>
                                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="请设置密码" Width="200px"></asp:TextBox>
                                        </div>
                                        <div class="clears"></div>
                                    </dl>
                                    <dl>
                                        <div class="input-group" style="margin-top: 16px">
                                            <asp:Label ID="Label2" runat="server" CssClass="input-group-addon" Text="确认密码："></asp:Label>
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="请确认密码" Width="200px"></asp:TextBox>
                                        </div>
                                        <div class="clears"></div>
                                    </dl>
                                </form>
                                <!--forget-pwd/-->
                            </div>
                            <!--web-width/-->
                        </div>
                        <!--content/-->

                        <div class="row center-block" style="margin: 16px auto 0 auto">
                            <button id="next_btn" type="button" class="btn btn-success" style="width: 100%">提交</button>
                        </div>
                    </div>
                    <%--  跳转界面--%>
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
        $(document).ready(function () {
            $("#next_btn").on("click", function () {

                var psw = $("#TextBox1").val();
                var again = $("#TextBox2").val();
                if (psw != again) {
                    return;
                }
                $.ajax({
                    url: "ForgetPassWrod.aspx/UpdatePsw",
                    contentType: "application/json",
                    type: "POST",
                    datatype: "json",
                    data: JSON.stringify({
                        psw: psw,
                    }),//格式为 "{a:1,b:2}"
                    success: function (result) {
                        var data = JSON.parse(result.d);
                        if (data.code == 0) {
                            window.location.href = "Login.aspx";
                        }
                    }
                })
            });
        });
    </script>
</body>
</html>
