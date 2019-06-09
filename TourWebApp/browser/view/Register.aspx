<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TourWebApp.browser.view.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/register/register.css" rel="stylesheet" />
    <script src="browser/static/js/jquery.min.js"></script>
    <script src="browser/static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div class="login-box">
        <h3>注册</h3>
        <div class="hei">
        <div class="col-md-offset-3 col-md-6">
          <b><asp:Label ID="LabName" runat="server" Text="用户名："></asp:Label></b>
          <asp:TextBox ID="TebName" runat="server" placeholder="请输入用户名" Height="30px"></asp:TextBox>
        </div>
        </div>
        <div class="hei">
        <div class="col-md-offset-3 col-md-6">
          <b><asp:Label ID="Labem" runat="server" Text="邮&nbsp &nbsp 箱："></asp:Label></b>
          <asp:TextBox ID="Tebem" runat="server" placeholder="请输入邮箱" Height="30px"></asp:TextBox>
        </div>
        </div>
        <div class="hei">
        <div class="col-md-offset-3 col-md-6">
          <b><asp:Label ID="Labpas" runat="server" Text="密 &nbsp &nbsp码："></asp:Label></b>
          <asp:TextBox ID="Tebpas" runat="server" placeholder="请输入密码" TextMode="Password" Height="30px"></asp:TextBox>
        </div>
        </div>
        <div class="hei">
        <div class="col-md-offset-3 col-md-6">
          <asp:Label ID="Labpas1" runat="server" Text="确认密码："></asp:Label></b>
          <asp:TextBox ID="Tebpas1" runat="server" placeholder="请输入密码" TextMode="Password" Height="30px"></asp:TextBox>
        </div>
        </div>
        <div class="form-group">
           <div class="col-md-offset-7 col-md-5"><a href="#">已有帐号？去登陆</a> </div>
        </div>
        <div class="hei">
        <div class="btn-group col-md-offset-3 col-md-6" role="group" aria-label="...">
          <asp:Button ID="Button2" class="btn btn-primary" runat="server" style="width: 100px; margin-left:70px;" Text="确认注册"/>
        </div>
        </div>
    </div>
    </form>
</body>
</html>
