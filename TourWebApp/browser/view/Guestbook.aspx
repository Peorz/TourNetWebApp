﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guestbook.aspx.cs" Inherits="TourWebApp.browser.view.Guestbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/guestbook/guestbook.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="guestbook_nav">
            <h3>留言板</h3>
            <br />
            <span>欢迎来到留言板</span>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="170px" ViewStateMode="Enabled" Width="450px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btn-success" runat="server" Text="发送" />
            <br />
            <br />
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>
                <div class="col-md-1">
                    <span>123</span>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-3">
                    <span>留言（<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>）</span>
                    <br />
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-1 col-md-offset-3">
                    <a href="#">
                        <img src="..." />
                    </a>
                </div>
                <div class="col-md-6">
                    <h5>Media heading</h5>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1 col-md-offset-3">
                    <a href="#">
                        <img src="..." />
                    </a>
                </div>
                <div class="col-md-6">
                    <h5>Media heading</h5>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1 col-md-offset-3">
                    <a href="#">
                        <img src="..." />
                    </a>
                </div>
                <div class="col-md-6">
                    <h5>Media heading</h5>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1 col-md-offset-3">
                    <a href="#">
                        <img src="..." />
                    </a>
                </div>
                <div class="col-md-6">
                    <h5>Media heading</h5>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1 col-md-offset-3">
                    <a href="#">
                        <img src="..." />
                    </a>
                </div>
                <div class="col-md-6">
                    <h5>Media heading</h5>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1 col-md-offset-3">
                    <a href="#">
                        <img src="..." />
                    </a>
                </div>
                <div class="col-md-6">
                    <h5>Media heading</h5>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1 col-md-offset-3">
                    <a href="#">
                        <img src="..." />
                    </a>
                </div>
                <div class="col-md-6">
                    <h5>Media heading</h5>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1 col-md-offset-3">
                    <a href="#">
                        <img src="..." />
                    </a>
                </div>
                <div class="col-md-6">
                    <h5>Media heading</h5>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1 col-md-offset-3">
                    <a href="#">
                        <img src="..." />
                    </a>
                </div>
                <div class="col-md-6">
                    <h5>Media heading</h5>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-1 col-md-offset-3">
                    <a href="#">
                        <img src="..." />
                    </a>
                </div>
                <div class="col-md-6">
                    <h5>Media heading</h5>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                    </span>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
