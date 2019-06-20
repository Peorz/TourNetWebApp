<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileManager.aspx.cs" Inherits="TourWebApp.browser.back.FileManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/backcss/index/custom-styles.css" rel="stylesheet" />
    <link href="../static/css/card-view.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/backcss/bootstrap-table.min.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
    <script src="../static/backjs/index/custom-scripts.js"></script>
    <script src="../static/js/jquery.metisMenu.js"></script>
    <script src="../static/backjs/bootstrap-table.min.js"></script>
    <script src="../static/backjs/bootstrap-table-zh-CN.min.js"></script>
    <script src="../static/js/qiniu.min.js"></script>
    <script src="../static/js/myfileup.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="alert alert-success" role="alert">人员管理</div>
            <div class="container-fluid">
                <div class="row">
                    <div class="card" style="margin-bottom: 0">
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" id="add_file" class="btn btn-primary">上传</button>
                            <button type="button" class="btn btn-success">修改</button>
                            <button type="button" class="btn btn-warning" onclick="getSelections()">设置</button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="card">
                        <table id="table"></table>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            loadTable();
            var param = {
                btn: "#add_file",
                url: "../../server/controller/FileUp.ashx",
                progress: function (res) {
                    console.log(res);
                },
                success: function (res) {
                    console.log(res);
                    $('#table').bootstrapTable("refresh");
                },
                error: function (msg) {
                    console.log(msg);
                }
            };
            fileup(param);
        });

        function loadTable() {
            $('#table').bootstrapTable({
                method: "get",
                url: '../../server/controller/FileManager.ashx',
                contentType: "application/x-www-form-urlencoded",
                striped: true,                         //是否显示行间隔色
                cache: false,
                sidePagination: "server",
                pagination: true,
                columns: [
                    {
                        checkbox: true,
                    },
                    {
                        field: 'FileKey',
                        title: '预览',
                        align: 'center',
                        formatter: function (value, row, index) {
                            var host = "http://psxrtdro4.bkt.clouddn.com/";
                            var img = '<img src="' + host + value + "-default" + '">';
                            return img;
                        }
                    },
                    {
                        field: 'FileKey',
                        title: 'FileKey'
                    },
                    {
                        field: 'FileHash',
                        title: 'FileHash'
                    },
                    {
                        field: 'UpTime',
                        title: '上传时间'
                    },
                    {
                        field: "FileKey",
                        title: "外链",
                        formatter: function (value, row, index) {
                            var host = "http://psxrtdro4.bkt.clouddn.com/";
                            return host + value;
                        }
                    }
                ]
            });
        }

        function getSelections() {
            return row = $('#table').bootstrapTable("getSelections");
        }
    </script>
</body>
</html>
