<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TourWebApp.browser.view.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/register/register.css" rel="stylesheet" />
    <script src="browser/static/js/jquery.min.js"></script>
    <script src="browser/static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div id="login_content" class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="card">
                        <div class="row Register_title">
                            <asp:Label runat="server" Text="Register" Font-Size="XX-Large" ForeColor="Gray"></asp:Label>
                        </div>
                        <div class="input-group" style="margin-top: 16px">
                            <asp:Label ID="Label1" runat="server" CssClass="input-group-addon" Text="&nbsp用&nbsp户&nbsp名："></asp:Label>
                            <asp:TextBox ID="nick_tb" CssClass="form-control" runat="server" placeholder="请输入用户名"></asp:TextBox>
                        </div>
                        <div class="input-group" style="margin-top: 16px">
                            <asp:Label ID="Label6" runat="server" CssClass="input-group-addon" Text="性&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp别："></asp:Label>                           
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                <asp:ListItem Value="1">男</asp:ListItem>
                                <asp:ListItem Value="0">女</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="input-group" style="margin-top: 16px">
                            <asp:Label ID="Label4" runat="server" CssClass="input-group-addon" Text="邮&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp箱："></asp:Label>
                            <asp:TextBox ID="email_tb" CssClass="form-control" runat="server" placeholder="请输入邮箱" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="input-group" style="margin-top: 16px">
                            <asp:Label ID="Label2" runat="server" CssClass="input-group-addon" Text="密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码："></asp:Label>
                            <asp:TextBox ID="psw_tb" CssClass="form-control" runat="server" TextMode="Password" placeholder="请输入密码"></asp:TextBox>
                        </div>
                        <div class="input-group" style="margin-top: 16px; margin-bottom: 8px">
                            <asp:Label ID="Label5" runat="server" CssClass="input-group-addon" Text="确认密码："></asp:Label>
                            <asp:TextBox ID="again_psw_tb" CssClass="form-control" runat="server" TextMode="Password" placeholder="请输入密码"></asp:TextBox>
                        </div>
                        <asp:Panel ID="warning_div" CssClass="alert alert-danger" runat="server" Style="margin-top: 8px; margin-bottom: 8px" Visible="False">
                            <asp:Label ID="warning_lb" runat="server" Text=""></asp:Label>
                        </asp:Panel>
                        <div class="row center-block" style="margin-top: 8px">
                            <asp:Button ID="register_btn" runat="server" Text="注册" CssClass="btn btn-success" Style="width: 100%" OnClick="register_btn_Click" />
                        </div>
                    </div>
                    <div class="row alert alert-warning" style="margin-left: 16px; margin-right: 16px">
                        <div class="col-md-8">
                            <asp:Label ID="Label3" runat="server" Text="已有账号？"></asp:Label>
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
    <script>
        $("#again_psw_tb").blur(function () {
            var first_pwd = $("psw_tb").val;
            var again_pwd = $(this).val;
            if (first_pwd != again_pwd) {
                alert(123);
                $("#warning_lb").show();
                $("#warning_lb").html("两次输入密码不一致");
            }
        });

    </script>
</body>
</html>
