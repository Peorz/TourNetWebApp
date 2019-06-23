<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserMesBoard.aspx.cs" Inherits="TourWebApp.browser.back.UserMesBoard" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="alert alert-success" role="alert">留言板管理</div>
            <div class="container-fluid">
                <div class="row">
                    <div class="card" style="margin-bottom: 0">
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" id="del_btn" class="btn btn-success">删除</button>
                            <%--<button type="button" class="btn btn-warning" onclick="getSelections()">设置</button>--%>
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
            $("#del_btn").on("click", function () {
                var row = getSelections();
                var id = row[0].ID;
                $.ajax({
                    url: "UserMesBoard.aspx/Del",
                    contentType: "application/json",
                    type: "POST",
                    datatype: "json",
                    data: JSON.stringify({
                        ID: id,
                    }),//格式为 "{a:1,b:2}"
                    success: function (result) {
                        var data = JSON.parse(result.d);
                        if (data.code == 0) {
                            $('#table').bootstrapTable("refresh");
                        }
                    }
                })
            });
        });

        function loadTable() {
            $('#table').bootstrapTable({
                method: "get",
                url: '../../server/controller/MsgBoard.ashx',
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
                        field: 'UserInfo',
                        title: '发表人',
                        formatter: function (value, row, index) {
                            var nick = value.Nick;
                            return nick;
                        }
                    },
                    {
                        field: 'Content',
                        title: '内容'
                    },
                    {
                        field: 'PostTime',
                        title: '发表时间'
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
