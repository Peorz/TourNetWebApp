<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainManager.aspx.cs" Inherits="TourWebApp.browser.back.MainManager" %>

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
            <div class="container-fluid">
                <div class="row">
                    <div class="alert alert-success" role="alert">景区咨询栏目</div>
                    <div id="tour_modal" class="modal fade" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">添加</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="input-group">
                                        <span class="input-group-addon">标题：</span>
                                        <input type="text" id="tour_title_input" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
                                    </div>
                                    <div class="input-group">
                                        <span class="input-group-addon">内容：</span>
                                        <input type="text" id="tour_summary_input" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
                                    </div>
                                    <div class="input-group">
                                        <input id="tour_img_input" type="text" class="form-control" placeholder="">
                                        <span class="input-group-btn">
                                            <button id="add_tour_file_btn" class="btn btn-default" type="button">选择图片</button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <button type="button" id="tour_add_btn" class="btn btn-primary">添加</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                    <div class="card" style="margin-bottom: 0">
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" id="add_tour_btn" class="btn btn-primary">新增</button>
                            <button type="button" id="update_user_btn" class="btn btn-success">修改</button>
                            <button type="button" class="btn btn-warning">设置</button>
                        </div>
                    </div>
                    <div class="card">
                        <table id="tour_table">
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="alert alert-success" role="alert">轮播图管理</div>
                    <div id="rotation_modal" class="modal fade" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">添加</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="input-group">
                                        <span class="input-group-addon">图片key：</span>
                                        <input type="text" id="rotation_key_input" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <button type="button" id="rotation_add_btn" class="btn btn-primary">添加</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                    <div class="card" style="margin-bottom: 0">
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" id="add_rotation_btn" class="btn btn-primary">新增</button>
                            <button type="button" id="update_user_btn" class="btn btn-success">修改</button>
                            <button type="button" class="btn btn-warning">设置</button>
                        </div>
                    </div>
                    <div class="card">
                        <table id="rotation_table">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            init();
            loadTourTable();
            loadRotation();
        });

        function init() {
            var param = {
                btn: "#add_tour_file_btn",
                url: "../../server/controller/FileUp.ashx",
                progress: function (res) {
                    console.log(res);
                },
                success: function (res) {
                    console.log(res);
                    $("#tour_img_input").val(res.data);
                },
                error: function (msg) {
                    console.log(msg);
                }
            };
            fileup(param);
        }

        function loadTourTable() {

            $('#tour_table').bootstrapTable({
                method: "get",
                url: '../../server/controller/MainTourColumn.ashx',
                contentType: "application/x-www-form-urlencoded",
                striped: true,                         //是否显示行间隔色
                cache: false,
                sidePagination: "server",
                pagination: true,
                columns: [
                    {
                        field: 'Img',
                        title: '预览',
                        width: 120,
                        align: 'center',
                        formatter: function (value, row, index) {
                            var host = "http://psxrtdro4.bkt.clouddn.com/";
                            var img = '<img src="' + host + value + "-default" + '">';
                            return img;
                        }
                    },
                    {
                        field: 'Title',
                        title: '标题'
                    },
                    {
                        field: 'Img',
                        title: 'key'
                    },
                    {
                        field: 'Summary',
                        title: '内容'
                    }
                ]
            });

            $("#add_rotation_btn").on("click", function () {
                $("#rotation_modal").modal("show");
            });

            $("#rotation_add_btn").on("click", function () {
                $.ajax({
                    url: "MainManager.aspx/AddRotation",
                    contentType: "application/json",
                    type: "POST",
                    datatype: "json",
                    data: JSON.stringify({
                        key: $("#rotation_key_input").val(),
                    }),//格式为 "{a:1,b:2}"
                    success: function (result) {
                        var data = JSON.parse(result.d);
                        if (data.code == 0) {
                            $('#rotation_table').bootstrapTable("refresh");
                            $("#rotation_modal").modal("hide");
                        }
                    }
                })
            });
        }

        function loadRotation() {

            $('#rotation_table').bootstrapTable({
                method: "get",
                url: '../../server/controller/MainRotation.ashx',
                contentType: "application/x-www-form-urlencoded",
                striped: true,                         //是否显示行间隔色
                cache: false,
                sidePagination: "server",
                pagination: true,
                columns: [
                    {
                        field: 'Img',
                        title: '预览',
                        width: 120,
                        align: 'center',
                        formatter: function (value, row, index) {
                            var host = "http://psxrtdro4.bkt.clouddn.com/";
                            var img = '<img src="' + host + value + "-default" + '">';
                            return img;
                        }
                    }
                ]
            });

        }

    </script>
</body>
</html>
