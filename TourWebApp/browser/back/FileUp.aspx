<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUp.aspx.cs" Inherits="TourWebApp.browser.back.FileUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/backcss/bootstrap-table.min.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
    <script src="../static/js/qiniu.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" method="post" action="SaveFile.aspx">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <input id="file_up" name="file" type="file" accept="image/*" onchange="up(this)" />
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-default">Submit</button>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {

        });
        function up(file) {
            $.ajax({
                type: "Get",
                url: "../../server/controller/FileUp.ashx",
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    var qiniu = require('qiniu-js')
                    var blob = file.files[0];
                    var observable = qiniu.upload(blob, "xxxxtest", data.data, {}, {})
                    var subscription = observable.subscribe(observer);
                },
                error: function (err) {
                }
            });

        }
    </script>
</body>
</html>
