﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScenicManager.aspx.cs" Inherits="TourWebApp.browser.back.ScenicManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/backcss/scenic/scenic.css" rel="stylesheet" />
    <script src="../static/js/qiniu.min.js"></script>
    <script src="../static/js/myfileup.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="alert alert-success" role="alert">景区管理</div>
            <div class="container-fluid">
                <div class="row">
                    <div class="card">
                        <div class="btn-group" role="group" aria-label="..." style="margin-bottom: 20px;">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#scenicAdd">新增</button>
                        </div>
                        <table id="ScenicInfoTb"></table>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!--景区信息添加模态框-->
    <div class="modal fade" id="scenicAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header header_color">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title title_color" id="myModalLabel">景区信息添加</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_name_span">景区名称</span>
                        <input type="text" class="form-control" id="scenic_name" placeholder="请输入景区名称" aria-describedby="scenic_name_span" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_title_span">景区标题</span>
                        <input type="text" class="form-control" id="scenic_title" placeholder="请输入景区标题" aria-describedby="scenic_title_span" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_content_span">景区介绍</span>
                        <textarea class="form-control" id="scenic_content" placeholder="请输入景区介绍" aria-describedby="scenic_content_span"></textarea>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_address_span">景区地址</span>
                        <input type="text" class="form-control" id="scenic_address" placeholder="请输入景区地址" aria-describedby="scenic_address_span" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_pic_span">景区图片</span>
                        <div class="img_upload_box" aria-describedby="scenic_pic_span">
                        </div>
                        <button type="button" id="upload_pic" class="btn btn-primary" aria-describedby="scenic_pic_span" style="margin-top:10px;">上传</button>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="subScenicInfo" class="btn btn-primary" data-dismiss="modal">添加</button>
            </div>
        </div>
    </div>
    </div>

    <!--景区信息编辑模态框-->
    <div class="modal fade" id="EditView" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header header_color">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title title_color" id="myModalEdit">景区信息编辑</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_name_span_edit">景区名称</span>
                        <input type="text" class="form-control" id="scenic_name_edit" aria-describedby="scenic_name_span_edit" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_title_span_edit">景区标题</span>
                        <input type="text" class="form-control" id="scenic_title_edit" aria-describedby="scenic_title_span_edit" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_content_span_edit">景区介绍</span>
                        <textarea class="form-control" id="scenic_content_edit" aria-describedby="scenic_content_span_edit"></textarea>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_address_span_edit">景区地址</span>
                        <input type="text" class="form-control" id="scenic_address_edit" aria-describedby="scenic_address_span_edit" />
                    </div>
                    <div class="input-group picList">
                        <span class="input-group-addon" id="scenic_pic_span_edit">景区图片</span>
                        <input type="file" id="upload_pic_edit" class="scenic_pic_btn" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" id="UpdataInfo" class="btn btn-primary" data-dismiss="modal">保存信息</button>
                </div>
            </div>
        </div>
    </div>

    <!--景区信息查看-->
    <div class="modal fade" id="ShowView" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header header_color">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title title_color" id="myModalShow">景区信息查看</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_name_span_show">景区名称</span>
                        <input type="text" class="form-control" id="scenic_name_show" aria-describedby="scenic_name_span_show" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_title_span_show">景区标题</span>
                        <input type="text" class="form-control" id="scenic_title_show" aria-describedby="scenic_title_span_show" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_content_span_show">景区介绍</span>
                        <textarea class="form-control" id="scenic_content_show" aria-describedby="scenic_content_span_show"></textarea>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_address_span_show">景区地址</span>
                        <input type="text" class="form-control" id="scenic_address_show" aria-describedby="scenic_address_span_show" />
                    </div>
                    <div class="input-group picList">
                        <span class="input-group-addon" id="scenic_pic_span_show">景区图片</span>
                        <input type="file" id="upload_pic_show" class="scenic_pic_btn" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_browse_span_show">浏览数量</span>
                        <input type="text" class="form-control" id="scenic_browse_show" aria-describedby="scenic_browse_span_show" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_time_span_show">景区地址</span>
                        <input type="text" class="form-control" id="scenic_time_show" aria-describedby="scenic_time_span_show" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <script>

        $(document).ready(function () {
            loadTable();

            var param = {
                btn: "#upload_pic",
                url: "../../server/controller/FileUp.ashx",
                progress: function (res) {
                    console.log(res);
                },
                success: function (res) {
                    console.log(res);
                    var host = "http://psxrtdro4.bkt.clouddn.com/";
                    var imgUrl = host + res.data;
                    showimg(imgUrl);
                },
                error: function (msg) {
                    console.log(msg);
                }
            };
            fileup(param);
        });       

        function showimg(url) {
            $(".img_upload_box").append("<div class='picList'></div>");
            $(".picList").append("<img class='newImg'  src='" + url + "'/>");
        }
        //表格数据加载
        function loadTable() {
            $('#ScenicInfoTb').bootstrapTable({
                method: "get",
                url: '../../server/controller/ScenicManager.ashx',
                contentType: "application/x-www-form-urlencoded",
                striped: true,                         //是否显示行间隔色
                cache: false,
                sidePagination: "server",
                pagination: true,
                columns: [
                    {
                        checkbox: true,
                        visible: true                  //是否显示复选框  
                    },
                    {
                        field: 'ScenicName',
                        title: '景区名称'
                    },
                    {
                        field: 'ScenicAddress',
                        title: '景区地址'
                    },
                    {
                        field: 'ScenicBrowse',
                        title: '景区点击量'
                    },
                    {
                        field: 'ScenicUploadTime',
                        title: '景区信息更新时间'
                    },
                    {
                        field: 'ID',
                        title: '操作',
                        formatter: actionFormatter
                    },
                ]
            })
        }
        //操作栏的格式化
        function actionFormatter(value, row, index) {
            var id = value;
            var result = "";
            result += "<button type='button' class='btn btn-xs btn-warning' data-toggle='modal' onclick=\"ShowByIds('" + id + "')\" data-target='#ShowView'><span class='glyphicon glyphicon-search'></span></button>";
            result += "<button type='button' class='btn btn-xs btn-success' data-toggle='modal' onclick=\"EditByIds('" + id + "')\" data-target='#EditView'><span class='glyphicon glyphicon-pencil'></span></button>";
            result += "<button type='button' class='btn btn-xs btn-danger' data-toggle='modal' onclick=\"DeleteByIds('" + id + "')\" ><span class='glyphicon glyphicon-remove'></span></button>";
            return result;
        }
        //新增数据
        $("#subScenicInfo").click(function () {
             $.ajax({
                url: "ScenicManager.aspx/AddScenicInfo",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                    Name: $("#scenic_name").val(),
                    Title: $("#scenic_title").val(),
                    Content: $("#scenic_content").val(),
                    Address: $("#scenic_address").val(),
                    PicUrl: $('.newImg').attr('src')
                }),//参数
                success: function (result)//成功函数
                {
                    var data = JSON.parse(result.d);
                    if (data.code == 0) {
                        $("#ScenicInfoTb").bootstrapTable('refresh');
                    }
                },
                error: function () { alert("添加失败，程序异常！"); return; }
            });
        });
        //详细数据
        function ShowByIds(ID) {
            var detailedId = ID;
            $.ajax({
                url: "ScenicManager.aspx/DetailedInfo",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                    DetailedID: detailedId
                }),//参数
                success: function (result)//成功函数
                {
                    var data = JSON.parse(result.d);
                    if (data.code == 0) {
                        $("#scenic_name_show").val(data.data.ScenicName);
                        $("#scenic_title_show").val(data.data.ScenicTitle);
                        $("#scenic_content_show").val(data.data.ScenicContent);
                        $("#scenic_address_show").val(data.data.ScenicAddress);
                        $("#scenic_browse_show").val(data.data.ScenicBrowse);
                        $("#scenic_time_show").val(data.data.ScenicUploadTime);
                    }
                },
                error: function () { alert("显示失败，程序异常！"); return; }
            });
        }

        //更新数据
        function EditByIds(ID) {
            var editId = ID;
            $.ajax({
                url: "ScenicManager.aspx/EditInfo",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                    EditID: editId
                }),//参数
                success: function (result)//成功函数
                {
                    var data = JSON.parse(result.d);
                    if (data.code == 0) {
                        $("#scenic_name_edit").val(data.data.ScenicName);
                        $("#scenic_title_edit").val(data.data.ScenicTitle);
                        $("#scenic_content_edit").val(data.data.ScenicContent);
                        $("#scenic_address_edit").val(data.data.ScenicAddress);
                        $("#UpdataInfo").click(function () {
                            $.ajax({
                                url: "ScenicManager.aspx/EditUp",
                                contentType: "application/json",
                                type: "POST",
                                datatype: "json",
                                data: JSON.stringify({
                                    EditID: editId,
                                    EditName: $("#scenic_name_edit").val(),
                                    EditTitle: $("#scenic_title_edit").val(),
                                    EditContent: $("#scenic_content_edit").val(),
                                    EditAddress: $("#scenic_address_edit").val(),
                                }),//参数
                                success: function (result)//成功函数
                                {
                                    var data = JSON.parse(result.d);
                                    if (data.code == 0) {
                                        $("#ScenicInfoTb").bootstrapTable('refresh')
                                    }
                                },
                                error: function () { alert("更新失败，程序异常！"); return; }
                            });

                        });
                    }
                },
                error: function () { alert("显示失败，程序异常！"); return; }
            });
        }
        //单条数据删除
        function DeleteByIds(ID) {
            var deleteId = ID;
            if (confirm("确定删除该条信息")) {
                $.ajax({
                    url: "ScenicManager.aspx/DeleteScenicInfo",
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
                            $("#ScenicInfoTb").bootstrapTable('refresh');
                        }
                    },
                    error: function () { alert("删除失败，程序异常！"); return; }
                });
            }
        }
    </script>
</body>
</html>
