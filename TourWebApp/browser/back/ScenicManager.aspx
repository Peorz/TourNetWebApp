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
                        <span class="input-group-addon" id="scenic_name">景区名称</span>
                        <input type="text" class="form-control" placeholder="请输入景区名称" aria-describedby="scenic_name"/>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_title">景区标题</span>
                        <input type="text" class="form-control" placeholder="请输入景区标题" aria-describedby="scenic_title"/>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_content">景区介绍</span>
                        <input type="text" class="form-control" placeholder="请输入景区介绍" aria-describedby="scenic_content"/>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">添加</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal -->
    </div>
</body>
</html>
