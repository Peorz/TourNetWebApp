<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScenicMesPic.aspx.cs" Inherits="TourWebApp.browser.back.ScenicMesPic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="../static/js/qiniu.min.js"></script>
    <script src="../static/js/myfileup.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="alert alert-success" role="alert">景区详情图片轮播管理</div>
            <div class="container-fluid">
                <div class="row">
                    <div class="card">
                        <div class="btn-group" role="group" aria-label="..." style="margin-bottom: 20px;">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#scenicAdd">新增</button>
                        </div>
                        <table id="ScenicPicTb"></table>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
        $(document).ready(function () {
            loadTable();

            //var param = {
            //    btn: "#upload_pic",
            //    url: "../../server/controller/FileUp.ashx",
            //    progress: function (res) {
            //        console.log(res);
            //    },
            //    success: function (res) {
            //        console.log(res);
            //        var host = "http://psxrtdro4.bkt.clouddn.com/";
            //        var imgUrl = host + res.data;
            //        showimg(imgUrl);
            //    },
            //    error: function (msg) {
            //        console.log(msg);
            //    }
            //};
            //fileup(param);
        });
        //表格数据加载
        function loadTable() {
            $('#ScenicPicTb').bootstrapTable({
                method: "get",
                url: '../../server/controller/ScenicMesPic.ashx',
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
                        field: 'ScenicID',
                        title: '景区ID'
                    },
                    {
                        field: '_ScenicImg',
                        title: '图片地址'
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
            result += "<button type='button' class='btn btn-xs btn-success' data-toggle='modal' onclick=\"EditByIds('" + id + "')\" data-target='#EditView'><span class='glyphicon glyphicon-pencil'></span></button>";
            result += "<button type='button' class='btn btn-xs btn-danger' data-toggle='modal' onclick=\"DeleteByIds('" + id + "')\" ><span class='glyphicon glyphicon-remove'></span></button>";
            return result;
        }
    </script>
</body>
</html>
