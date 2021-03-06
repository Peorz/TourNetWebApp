﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManager.aspx.cs" Inherits="TourWebApp.browser.back.UserManager" %>

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
    <div id="modal_test" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">新增信息</h4>
                </div>
                <div class="modal-body">
                    <ul>
                        <li>
                            <asp:Label ID="Label1" runat="server" CssClass="input-group-addon" Text="昵称："></asp:Label>
                            <input id="Input_Nick" placeholder="请输入昵称" type="text" />
                        </li>
                        <li>
                            <asp:Label ID="Label2" runat="server" CssClass="input-group-addon" Text="密码："></asp:Label>
                            <input id="Input_PassWord" placeholder="请输入密码" type="text" />
                        </li>
                        <li>
                            <asp:Label ID="Label3" runat="server" CssClass="input-group-addon" Text="邮箱："></asp:Label>
                            <input id="Input_Emil" placeholder="请输入邮箱" type="text" />
                        </li>
                        <li>
                            <asp:Label ID="Label4" runat="server" CssClass="input-group-addon" Text="性别："></asp:Label>
                            <input id="Input_Sex" placeholder="请输入性别" type="text" />
                        </li>
                    </ul>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">保存信息</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <div id="modal_test1" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">修改信息</h4>
                </div>
                <div class="modal-body">
                    <ul>
                        <li>
                            <asp:Label ID="Label5" runat="server" CssClass="input-group-addon" Text="昵称："></asp:Label>
                            <input id="Input_Nick1" placeholder="请输入昵称" type="text" />
                        </li>

                        <li>
                            <asp:Label ID="Label7" runat="server" CssClass="input-group-addon" Text="邮箱："></asp:Label>
                            <input id="Input_Emil1" placeholder="请输入邮箱" type="text" />
                        </li>
                        <li>
                            <asp:Label ID="Label8" runat="server" CssClass="input-group-addon" Text="性别："></asp:Label>
                            <input id="Input_Sex1" placeholder="请输入性别" type="text" />
                        </li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">保存信息</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->


    <form id="form1" runat="server">
        <div>
            <div class="alert alert-success" role="alert">人员管理</div>
            <div class="container-fluid">
                <div class="row">
                    <div class="card" style="margin-bottom: 0">
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" id="add_user_btn" class="btn btn-primary">新增</button>
                            <%--<button type="button" id="update_user_btn" class="btn btn-success">修改</button>--%>
                            <%--<button type="button" class="btn btn-warning">设置</button>--%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="card">
                        <table id="table">
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $('#table').bootstrapTable({
            method: "get",
            url: '../../server/controller/UserManager.ashx',
            contentType: "application/x-www-form-urlencoded",
            striped: true,                         //是否显示行间隔色
            cache: false,
            sidePagination: "server",
            pagination: true,
            columns: [
                {
                    field: 'Nick',
                    title: '昵称'
                },
                {
                    field: 'Email',
                    title: '邮件'
                },
                {
                    field: 'Sex',
                    title: '性别',
                    formatter: function (value, row, index) {
                        return value == 1 ? "男" : "女";
                    }
                },
                {
                    field: 'CreateTime',
                    title: '注册时间'
                },
                 {
                     field: 'ID',
                     title: '操作',
                     formatter: actionFormatter
                 },
            ]
        })

        $("#add_user_btn").on("click", function () {
            $("#modal_test").modal("show");
        });
        $("#update_user_btn").on("click", function () {
            $("#modal_test1").modal("show");
        });
        //操作栏的格式化
        function actionFormatter(value, row, index) {
            var id = value;
            var result = "";
            result += "<button type='button' class='btn btn-xs btn-danger' data-toggle='modal' onclick=\"DeleteByImg('" + id + "')\" ><span class='glyphicon glyphicon-remove'></span></button>";
            return result;
        }
        //单条数据删除
        function DeleteByImg(ID) {
            var deleteId = ID;
            if (confirm("确定删除该条信息")) {
                $.ajax({
                    url: "UserManager.aspx/DeleteUserInfo",
                    contentType: "application/json",
                    type: "POST",
                    datatype: "json",
                    data: JSON.stringify({
                        DeleteID: deleteId
                    }),//参数
                    success: function (result)//成功函数
                    {
                        var data = JSON.parse(result.d);
                        if (data.code == 0) {
                            $("#table").bootstrapTable('refresh');
                        }
                    },
                    error: function () { alert("删除失败，程序异常！"); return; }
                });
            }
        }
    </script>
</body>
</html>
