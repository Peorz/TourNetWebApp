<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal.aspx.cs" Inherits="TourWebApp.browser.view.Personal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../static/css/personal/personal.css" rel="stylesheet" />
    
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/index/customize.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="box">
            <div class="bt"></div>
            <%-- 左侧--%>
            <div class="left">
               
                <div class="bg_bom">
                  
                </div>
                <div class="left_img">

                    <a href="#">
                        <asp:Image ID="Image1" CssClass="img-circle" runat="server" ImageUrl="~/browser/static/img/personal_z1.jpeg" Height="140px" Width="130px" /></a>
                    <%--编辑图片--%>
                    <%--<span class="edit"><a href="#">编辑图片</a></span>--%>
                </div>
                <br />
                <br />
                <br />
                  <br />
                <br />
                <ul>
                    <li>
                        <asp:Label ID="username" CssClass="glyphicon glyphicon-user" runat="server" Text="   我是小花"></asp:Label></li>

                    <li>
                        <asp:Label ID="Label5" CssClass="glyphicon glyphicon-leaf" runat="server" Text=" 已经该网站入驻5年"></asp:Label></li>
                </ul>
            </div>

            <%--中间--%>
            <div class="content">

                <ul class="nav nav-pills">
                    <li onclick="opens(1)" role="presentation "><a href="#">基本信息</a></li>
                    <li onclick="opens(2)" role="presentation"><a href="#">修改密码</a></li>
                    <li onclick="opens(3)" role="presentation"><a href="#">关于我们</a></li>
                </ul>
                <%-- 基本信息--%>
                <div id="con1">
                    <div class="login-box">
                        <div class="hei">
                            <br />
                            <div class="col-md-offset-3 col-md-6">
                                <b>
                                    <asp:Label ID="Label1" runat="server" Text="头像："></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/browser/static/img/personal_z1.jpeg" Width="100px" ImageAlign="Top" />
                                <asp:Label ID="Label2" runat="server" Text="换一换"></asp:Label>
                                <asp:Button ID="Button3" class="btn btn-primary" runat="server" Style="width: 90px;" Text="上传图片" />
                            </div>
                        </div>
                        <div class="hei">
                            <div class="col-md-offset-3 col-md-6">
                                <b>
                                    <asp:Label ID="Label3" runat="server" Text="用 户 名："></asp:Label>&nbsp;&nbsp;&nbsp; </b>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="战三" Height="30px" Width="240px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="hei">
                            <div class="col-md-offset-3 col-md-6">
                                <b>
                                    <asp:Label ID="Label4" runat="server" Text="邮&nbsp &nbsp &nbsp 箱："></asp:Label>&nbsp;&nbsp;&nbsp; </b>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="123456789@qq.com" Height="30px" Width="240px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="hei">
                            <div class="col-md-offset-3 col-md-6">
                                <b>
                                    <asp:Label ID="Label6" runat="server" Text="性 &nbsp &nbsp &nbsp别："></asp:Label>&nbsp;&nbsp;&nbsp; </b>
                                <asp:RadioButton ID="RadioButton3" runat="server" Text=" 保密" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButton1" runat="server" Text=" 男" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text=" 女" />
                            </div>
                        </div>
                        <div class="hei">
                            <div class="col-md-offset-3 col-md-6">
                                <b>
                                    <asp:Label ID="Label7" runat="server" Text="个性签名："></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                                <asp:TextBox ID="TextBox3" runat="server" Height="94px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="hei">
                            <div class="btn-group col-md-offset-3 col-md-6" role="group" aria-label="...">
                                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Style="width: 100px; margin-left: 70px;" Text="保存" />
                            </div>
                        </div>
                    </div>
                </div>
                <%-- 修改密码--%>
                <div id="con2" style="display: none;">
                    <div class="login-box">
                        <div class="hei">
                            <div class="col-md-offset-3 col-md-6">
                                <b>&nbsp;<asp:Label ID="LabName" runat="server" Text="用  户  名："></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;</b><asp:TextBox ID="TebName" runat="server" placeholder="战三" Height="30px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="hei">
                            <div class="col-md-offset-3 col-md-6">
                                <b>
                                    <asp:Label ID="Labem" runat="server" Text="原始密码："></asp:Label>&nbsp;&nbsp;&nbsp;</b><asp:TextBox ID="Tebem" runat="server" placeholder="123456789@qq.com" Height="30px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="hei">
                            <div class="col-md-offset-3 col-md-6">
                                <b>
                                    <asp:Label ID="Labpas" runat="server" Text="密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码："></asp:Label>&nbsp;&nbsp; </b>
                                <asp:TextBox ID="Tebpas" runat="server" placeholder="******" TextMode="Password" Height="30px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="hei">
                            <div class="col-md-offset-3 col-md-6">
                                <b>&nbsp;<asp:Label ID="Labpas1" runat="server" Text="确认密码："></asp:Label>&nbsp; </b>
                                <asp:TextBox ID="Tebpas1" runat="server" placeholder="******" TextMode="Password" Height="30px"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="hei">
                            <div class="btn-group col-md-offset-3 col-md-6" role="group" aria-label="...">
                                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Style="width: 100px; margin-left: 100px;" Text="修改" />
                            </div>
                        </div>
                    </div>
                </div>
                <%--关于我们--%>
                <div id="con3" style="display: none;">
                    <h3 style="text-align: center;">关于我们</h3>
                    <p style="margin-left: 110px; margin-right: 110px;">
                        <span style="font-size: 25px; padding: 12px;">南</span>宁师范大学（Nanning Normal University），简称“南宁师大”，坐落于广西壮族自治区首府南宁市，
                        入选国家中西部高校基础能力建设工程（二期）、新工科研究与实践项目，
                        为全国深化创新创业教育改革示范高校、教育部数据中国“百校工程”项目试点高校、西南大学对口支援建设院校、
                        广西新增博士学位授予单位立项建设单位、广西一流学科建设高校，对口支援广西民族师范学院。
                         [1-2] 学校办学1953年创办的广西中等学校进修学院和1905年创办的南宁道师范学堂，2002年12月，
                        广西师范学院同广西南宁民族师范学校合并，组建新的广西师范学院。2018年12月，学校正式更名为南宁师范大学。 
                        [2] 根据2019年3月学校官网信息显示，学校有明秀、长岗、五合、武鸣4个校区，占地面积共3476.68亩，图书馆藏书201.4万册，合作举办1所独立学院；
                        设有22个教学学院，6个教辅单位，有普通本科专业66个；有专任教师1018人，
                        全日制普通本科生16690人，硕士研究生1466人，专科生422人。
                    </p>



                </div>
            </div>
        </div>

    </form>
    <script>
        function opens(obj) {
            for (var i = 1; i <= 13; i++) {
                if (i === obj) {
                    document.getElementById("con" + i).style.display = "block";


                } else
                    document.getElementById("con" + i).style.display = "none";
            }
        }
    </script>
</body>
</html>
