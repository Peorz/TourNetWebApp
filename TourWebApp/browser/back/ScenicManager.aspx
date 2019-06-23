<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScenicManager.aspx.cs" Inherits="TourWebApp.browser.back.ScenicManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/backcss/scenic/scenic.css" rel="stylesheet" />
    <script src="../static/js/qiniu.min.js"></script>
    <script src="../static/js/myfileup.js"></script>
      <script src="../static/js/myfileup2.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="alert alert-success" role="alert">景区管理</div>
            <div class="container-fluid">
                <div class="row">
                    <div class="card">
                        <div class="btn-group" role="group" aria-label="..." style="margin-bottom: 20px;">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#scenicInfoAdd">新增</button>
                        </div>
                        <div class="btn-group" role="group" aria-label="..." style="margin-bottom: 20px;">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#scenicPicAdd" id="AddPic">新增轮播图</button>
                        </div>
                        <table id="ScenicInfoTb"></table>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <div class="alert alert-success" role="alert">景区详情图片轮播管理</div>
            <div class="container-fluid">
                <div class="row">
                    <div class="card">
                        <table id="ScenicPicTb"></table>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!--景区信息添加模态框-->
    <div class="modal fade" id="scenicInfoAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                        <span class="input-group-addon" id="scenic_english_span">景区别名</span>
                        <input type="text" class="form-control" id="scenic_english" placeholder="景区别名" aria-describedby="scenic_english_span" />
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
                        <button type="button" id="upload_pic" class="btn btn-primary" aria-describedby="scenic_pic_span" style="margin-top: 10px;">上传</button>
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
                        <span class="input-group-addon" id="scenic_english_span_edit">景区别名</span>
                        <input type="text" class="form-control" id="scenic_english_edit" placeholder="景区别名" aria-describedby="scenic_english_span_edit" />
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
                        <span class="input-group-addon" id="scenic_english_span_show">景区别名</span>
                        <input type="text" class="form-control" id="scenic_english_show" placeholder="景区别名" aria-describedby="scenic_english_span_show" />
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
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_pic_span_show">景区图片</span>
                        <div class="img_upload_box" aria-describedby="scenic_pic_span_show">
                            <div class="picList">
                                <img src="#" class="newImg" />
                            </div>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_browse_span_show">浏览数量</span>
                        <input type="text" class="form-control" id="scenic_browse_show" aria-describedby="scenic_browse_span_show" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="scenic_time_span_show">更新时间</span>
                        <input type="text" class="form-control" id="scenic_time_show" aria-describedby="scenic_time_span_show" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>

    <!--景区轮播图添加-->
    <div class="modal fade" id="scenicPicAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header header_color">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title title_color" id="H1">景区轮播图信息添加</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon" id="selScenic">景区名称</span>
                        <input type="text" class="form-control" id="scenic_sel_name" aria-describedby="selScenic" />
                        <input type="text" id="scenic_sel_id" hidden="hidden" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" id="ScenicPic_span">景区图片</span>
                        <input type="text" class="form-control" id="scenic_pic" aria-describedby="ScenicPic_span" style="width: 70%" />
                        <button type="button" id="scenic_pic_add" class="btn btn-primary" aria-describedby="scenic_pic_span">上传</button>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" id="subScenicPic" class="btn btn-primary" data-dismiss="modal">添加</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        //页面初始加载
        $(document).ready(function () {
            ScenicInfoTb();
            ScenicPicTb();
            upScenicPic();
            upWheelPic();
        });
        //景区图片上传
        function upScenicPic(){
            var param = {
                btn: "#upload_pic",
                url: "../../server/controller/FileUp.ashx",
                progress: function (list) {
                    console.log(list);
                },
                success: function (list) {
                    var host = "http://psxrtdro4.bkt.clouddn.com/";
                    var imgUrl = host + list.data;
                    showimg(imgUrl);
                },
                error: function (msg) {
                    console.log(msg);
                }
            };
            fileup(param);
        }
        //轮播图上传
        function upWheelPic(){

            var upPic = {
                btn: "#scenic_pic_add",
                url: "../../server/controller/FileUp.ashx",
                progress: function (res) {
                    console.log(res);
                },
                success: function (res) {
                    console.log(res);
                    var host = "http://psxrtdro4.bkt.clouddn.com/";
                    var imgUrl = host + res.data;
                    $("#scenic_pic").val(imgUrl);
                },
                error: function (msg) {
                    console.log(msg);
                }
            };
            fileup2(upPic);
        }
        //上传图片显示
        function showimg(url) {
            $(".img_upload_box").append("<div class='picList'></div>");
            $(".picList").append("<img class='newImg'  src='" + url + "'/>");
        }
        //景区信息表格数据加载
        function ScenicInfoTb() {
            $('#ScenicInfoTb').bootstrapTable({
                method: "get",
                url: '../../server/controller/ScenicManager.ashx',
                contentType: "application/x-www-form-urlencoded",
                striped: true,                         //是否显示行间隔色
                cache: false,
                singleSelect: true,                     // 单选checkbox
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
                        field: 'ScenicEnglish',
                        title: '景区别名'
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
        //景区轮播表格数据加载
        function ScenicPicTb() {
            $('#ScenicPicTb').bootstrapTable({
                method: "get",
                url: '../../server/controller/ScenicMesPic.ashx',
                contentType: "application/x-www-form-urlencoded",
                striped: true,                         //是否显示行间隔色
                cache: false,
                singleSelect: true,                     // 单选checkbox
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
                        field: 'ScenicImg',
                        title: '图片地址'
                    },
                    {
                        field: 'ID',
                        title: '操作',
                        formatter: imgFormatter
                    },
                ]

            })
        }
        //景区信息操作栏的格式化
        function actionFormatter(value, row, index) {
            var id = value;
            var result = "";
            result += "<button type='button' class='btn btn-xs btn-warning' data-toggle='modal' onclick=\"ShowByIds('" + id + "')\" data-target='#ShowView'><span class='glyphicon glyphicon-search'></span></button>";
            result += "<button type='button' class='btn btn-xs btn-success' data-toggle='modal' onclick=\"EditByIds('" + id + "')\" data-target='#EditView'><span class='glyphicon glyphicon-pencil'></span></button>";
            result += "<button type='button' class='btn btn-xs btn-danger' data-toggle='modal' onclick=\"DeleteByIds('" + id + "')\" ><span class='glyphicon glyphicon-remove'></span></button>";
            return result;
        }
        //轮播图操作栏的格式化
        function imgFormatter(value, row, index) {
            var id = value;
            var result = "";
            result += "<button type='button' class='btn btn-xs btn-danger' data-toggle='modal' onclick=\"DeleteByImg('" + id + "')\" ><span class='glyphicon glyphicon-remove'></span></button>";
            return result;
        }
        //选择行信息获取
        $("#AddPic").click(function () {
            $("#scenic_pic").val("");
            var selectContent = $("#ScenicInfoTb").bootstrapTable('getSelections');
            console.log(selectContent);
            if (selectContent.length == 0) {
                alert("未选中行");
                return false;
            }
            $("#scenic_sel_name").val(selectContent[0]['ScenicName']);
            $("#scenic_sel_id").val(selectContent[0]['ID']);
        });
        //轮播图添加
        $("#subScenicPic").click(function () {
            $.ajax({
                url: "ScenicManager.aspx/AddScenicPic",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                    ID: $("#scenic_sel_id").val(),
                    ImgUrl: $("#scenic_pic").val(),
                }),//参数
                success: function (result)//成功函数
                {
                    var data = JSON.parse(result.d);
                    if (data.code == 0) {
                        $("#ScenicPicTb").bootstrapTable('refresh');
                    }
                },
                error: function () { alert("添加失败，程序异常！"); return; }
            });
        });
        //景区信息新增数据
        $("#subScenicInfo").click(function () {        
            $.ajax({
                url: "ScenicManager.aspx/AddScenicInfo",
                contentType: "application/json",
                type: "POST",
                datatype: "json",
                data: JSON.stringify({
                    Name: $("#scenic_name").val(),
                    English: $("#scenic_english").val(),
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
        //景区详细信息显示
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
                        $("#scenic_english_show").val(data.data.ScenicEnglish);
                        $("#scenic_title_show").val(data.data.ScenicTitle);
                        $("#scenic_content_show").val(data.data.ScenicContent);
                        $("#scenic_address_show").val(data.data.ScenicAddress);
                        $("#scenic_browse_show").val(data.data.ScenicBrowse);
                        $('.newImg').attr('src', data.data.ScenicPic);
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
                        $("#scenic_english_edit").val(data.data.ScenicEnglish);
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
                                    EditEnglish: $("#scenic_english_edit").val(),
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
        //景区信息单条数据删除
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
        //轮播图单条数据删除
        function DeleteByImg(ID) {
            var deleteId = ID;
            if (confirm("确定删除该条信息")) {
                $.ajax({
                    url: "ScenicManager.aspx/DeleteScenicImg",
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
                            $("#ScenicPicTb").bootstrapTable('refresh');
                        }
                    },
                    error: function () { alert("删除失败，程序异常！"); return; }
                });
            }
        }
        $('@scenicInfoAdd').on('hidden.bs.modal', '.modal', function () {
            $(this).removeData('bs.modal');
        });
    </script>
</body>
</html>
