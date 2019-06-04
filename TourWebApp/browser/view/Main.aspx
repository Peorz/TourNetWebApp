<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="TourWebApp.browser.view.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%--<link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/login/login.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div id="title_row" class="row">
                <asp:Label ID="main_title" runat="server" CssClass="center-block" Text="人生就是一场说走就走的旅行" Font-Size="XX-Large" ForeColor="White"></asp:Label>
            </div>
            <div id="main_content" class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="card" style="height: 600px">
                        <div class="row">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#title_row").css("margin-top", $(window).height() * 1 / 3);
        });
    </script>
</body>
</html>
