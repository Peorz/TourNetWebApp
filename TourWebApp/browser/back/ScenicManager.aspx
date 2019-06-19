<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScenicManager.aspx.cs" Inherits="TourWebApp.browser.back.ScenicManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="alert alert-success" role="alert">景区管理</div>
            <div class="container-fluid">
                <div class="row">
                    <div class="card" style="margin-bottom: 0">
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#scenicAdd">新增</button>
                            <button type="button" class="btn btn-success">修改</button>
                            <button type="button" class="btn btn-warning">设置</button>
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
    <div class="modal fade" id="scenicAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">景区信息添加</h4>
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
                        <input type="text" class="form-control" id="scenic_content" placeholder="请输入景区介绍" aria-describedby="scenic_content_span" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_address_span">景区地址</span>
                        <input type="text" class="form-control" id="scenic_address" placeholder="请输入景区地址" aria-describedby="scenic_address_span" />
                    </div>
                    <div class="input-group picList">
                        <span class="input-group-addon" id="scenic_pic_span">景区图片</span>
                        <input type="file" id="upload_pic"  aria-describedby="scenic_pic_span" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" id="subScenicInfo" class="btn btn-primary" data-dismiss="modal">添加</button>


                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal -->
    </div>

    <script>
        $("#upload_pic").bind('change', addfile);
        function addfile() {
            var imgUrl = $("#upload_pic").val();
            var extStart = imgUrl.lastIndexOf(".");
            var ext = imgUrl.substring(extStart, imgUrl.length).toUpperCase();

            if (ext != ".BMP" && ext != ".PNG" && ext != ".GIF" && ext != ".JPG" && ext != ".JPEG") {
                alert("图片限于bmp,png,gif,jpeg,jpg格式");
                return false;
            }
            showimg(imgUrl);
        }


        function showimg(url) {
            var img = '<img src="' + url + '"/>';
            $(".picList").append(img);
        }

        $("#subScenicInfo").click(function () {
            $.ajax({
                type: "post",                  //提交方式
                url: "../../server/controller/ScenicManager.ashx",  //提交路径
                data: {
                    Name: $("#scenic_name").val(),
                    Title: $("#scenic_title").val(),
                    Content: $("#scenic_content").val(),
                    Address: $("#scenic_address").val(),
                },//参数
                success: function (result, status)//成功函数
                {
                    alert("数据库保存成功！");
                   
                },
                error: function () { alert("添加失败，程序异常！"); return; }
            });           
        });
        $('#table').bootstrapTable({
            method: "get",
            url: '../../server/controller/ScenicManager.ashx',
            contentType: "application/x-www-form-urlencoded",
            striped: true,                         //是否显示行间隔色
            cache: false,
            sidePagination: "server",
            pagination: true,
            columns: [
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
                    field: '',
                    title: '操作'
                }
            ]
        })
    </script>
</body>
</html>
