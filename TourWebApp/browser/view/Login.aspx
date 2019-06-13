<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TourWebApp.browser.view.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/login/login.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div id="login_content" class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="card">
                        <div class="row">
                            <asp:Label ID="login_title" runat="server" CssClass="center-block" Text="TourProject" Font-Size="XX-Large" ForeColor="Gray"></asp:Label>
                        </div>
                        <div class="input-group" style="margin-top: 16px">
                            <asp:Label ID="Label1" runat="server" CssClass="input-group-addon" Text="邮箱："></asp:Label>
                            <asp:TextBox ID="email_tb" CssClass="form-control" Text="760336282@qq.com" runat="server"></asp:TextBox>
                        </div>
                        <div class="input-group" style="margin-top: 16px; margin-bottom: 8px">
                            <asp:Label ID="Label2" runat="server" CssClass="input-group-addon" Text="密码："></asp:Label>
                            <asp:TextBox ID="psw_tb" CssClass="form-control" runat="server" Text="admin" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:Panel ID="warning_div" CssClass="alert alert-danger" runat="server" Style="margin-top: 8px; margin-bottom: 8px" Visible="False">
                            <asp:Label ID="warning_lb" runat="server" Text="sdfdsfsdfsdfd"></asp:Label>
                        </asp:Panel>
                        <div class="row center-block" style="margin-top: 8px">
                            <asp:Button ID="login_btn" runat="server" Text="登录" CssClass="btn btn-success" Style="width: 100%" OnClick="login_btn_Click" />
                        </div>
                    </div>
                    <div class="row alert alert-warning" style="margin-left: 16px; margin-right: 16px">
                        <div class="col-md-8">
                            <asp:Label ID="Label3" runat="server" Text="没有帐号？"></asp:Label>
                            <a href="Register.aspx">点击注册</a>
                        </div>
                        <div class="col-md-4">
                            <a href="ForgetPassWrod.aspx">忘记密码</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            init();
        });

        function init() {
            $("#login_content").css("padding-top", ($(window).height() - $("#login_content").outerHeight(true)) / 2);
        }
    </script>
</body>
</html>
