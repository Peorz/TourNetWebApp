<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TourWebApp.browser.view.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/login/login.css" rel="stylesheet" />
    <script src="browser/static/js/jquery.min.js"></script>
    <script src="browser/static/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="login-box">
        <%--<img src="#" />--%>
        <h3>登录</h3>
        <form action="#" runat="server" name="loginForm" class="form-horizontal" method="post">
            <div class="form-group">
                <div class="col-md-offset-3 col-md-6">
                    <label for="inputUserName" class="control-label">用户名</label>
                    <asp:TextBox class="form-control" ID="inputUserName" runat="server" placeholder="请输入用户名"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="inputUserName" ErrorMessage="*请输入用户名" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-3 col-md-6">
                    <label for="inputPassword" class="control-label">密码</label>
                    <asp:TextBox class="form-control" ID="inputPassword" runat="server" placeholder="请输入密码"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="inputPassword" ErrorMessage="*请输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-7 col-md-5"><a href="#">忘记密码？</a> </div>
            </div>
            <div class="form-group">
                <div class="btn-group col-md-offset-3 col-md-6" role="group" aria-label="...">
                    <asp:Button ID="Button1" class="btn btn-default" runat="server" Style="width: 100px" Text="注册" />
                    <asp:Button ID="Button2" class="btn btn-primary" runat="server" Style="width: 100px" Text="登录" />

                </div>
            </div>
        </form>
    </div>
</body>
</html>
