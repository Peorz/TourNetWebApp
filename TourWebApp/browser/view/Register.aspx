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
                        <div class="row">
                            <asp:Label ID="Register_title" runat="server" CssClass="center-block" Text="Register" Font-Size="XX-Large" ForeColor="Gray"></asp:Label>
                        </div>
                        <div class="input-group" style="margin-top: 16px">
                            <asp:Label ID="Label1" runat="server" CssClass="input-group-addon" Text="用户名："></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="请输入用户名"></asp:TextBox>
                        </div>
                        <div class="input-group" style="margin-top: 16px">
                            <asp:Label ID="Label4" runat="server" CssClass="input-group-addon" Text="邮&nbsp&nbsp&nbsp&nbsp箱："></asp:Label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="请输入邮箱"></asp:TextBox>
                        </div>
                        <div class="input-group" style="margin-top: 16px">
                            <asp:Label ID="Label2" runat="server" CssClass="input-group-addon" Text="密&nbsp&nbsp&nbsp&nbsp码："></asp:Label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Password"  placeholder="请输入密码"></asp:TextBox>
                        </div>
                        <div class="row center-block" style="margin-top: 16px">
                            <button type="button" class="btn btn-success" style="width: 100%">注册</button>
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
        <%--<div class="login-box">
            <h2>注册</h2>
            <div class="hei">
                <div class="col-md-offset-3 col-md-6">
                    <b>
                        <asp:Label ID="LabName" runat="server" Text="用&nbsp&nbsp户&nbsp&nbsp名："></asp:Label></b>
                    <asp:TextBox ID="TebName" runat="server" placeholder="请输入用户名" Height="30px" width="198px"></asp:TextBox>
                </div>
            </div>
            <div class="hei">
                <div class="col-md-offset-3 col-md-7">
                    <b>
                        <asp:Label ID="Labem" runat="server" Text="邮&nbsp &nbsp &nbsp &nbsp箱："></asp:Label></b>
                    <asp:TextBox ID="Tebem" runat="server" placeholder="请输入邮箱" Height="30px" width="200px"></asp:TextBox>
                </div>
            </div>

            <div class="hei">
                <div class="col-md-offset-3 col-md-7">
                    <b>
                        <asp:Label ID="Labpas" runat="server" Text="密 &nbsp &nbsp &nbsp&nbsp码："></asp:Label></b>
                    <asp:TextBox ID="Tebpas" runat="server" placeholder="请输入密码" TextMode="Password" Height="30px" width="200px"></asp:TextBox>
                </div>
            </div>

            <div class="hei">
                <div class="col-md-offset-3 col-md-7">
                    <asp:Label ID="Labpas1" runat="server" Text="确认密码："></asp:Label>
          <asp:TextBox ID="Tebpas1" runat="server" placeholder="请输入密码" TextMode="Password" Height="30px" width="200px"></asp:TextBox>
                </div>
            </div>
            
            <div class="hei">
                <div class="btn-group col-md-offset-3 col-md-7 confirm_life confirm_right" role="group" aria-label="...">
                    <asp:Button ID="Button2" class="btn btn-primary" runat="server" Style="width: 95px; margin-left: 72px; margin-top:10px;" Text="确认注册" />
                    &nbsp&nbsp
                    <a href="login.aspx">已有帐号？去登陆</a>
                </div>              
            </div>
        </div>--%>
    </form>
</body>
</html>
