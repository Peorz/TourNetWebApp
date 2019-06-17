<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageBoard.aspx.cs" Inherits="TourWebApp.browser.view.MessageBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../static/css/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/message/message.css" rel="stylesheet" />
    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="guestbook_nav">
            <h3>留言板</h3>
            <br />
            <div class="guestbook_input">
                <span>欢迎来到留言板</span>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="100px" ViewStateMode="Enabled" Width="100%" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" CssClass="btn-success" runat="server" Text="发送" Height="28px" Width="100%" />
            </div>
        </div>     

        <div class="guestbook_content">
            <div class="guestbook_other">
                <div class="guestbook_img">
                    <a href="#">
                        <img src="..\static\img\guestbook_img.png" />
                    </a>
                </div>
                <div class="guestbook_news">
                    <h4><a href="#"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></a></h4>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis                                           
                    </span>
                    <h5>
                        <asp:Label ID="Label8" runat="server" Text="time"></asp:Label>
                    </h5>
                </div>
            </div>

            <div class="guestbook_other">
                <div class="guestbook_img">
                    <a href="#">
                        <img src="..\static\img\guestbook_img.png" />
                    </a>
                </div>
                <div class="guestbook_news">
                    <h4><a href="#"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></a></h4>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis                                           
                    </span>
                    <h5>
                        <asp:Label ID="Label4" runat="server" Text="time"></asp:Label>
                    </h5>
                </div>
            </div>

            <div class="guestbook_other">
                <div class="guestbook_img">
                    <a href="#">
                        <img src="..\static\img\guestbook_img.png" />
                    </a>
                </div>
                <div class="guestbook_news">
                    <h4><a href="#"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></a></h4>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis                                           
                    </span>
                    <h5>
                        <asp:Label ID="Label6" runat="server" Text="time"></asp:Label>
                    </h5>
                </div>
            </div>
            <div class="guestbook_other">
                <div class="guestbook_img">
                    <a href="#">
                        <img src="..\static\img\guestbook_img.png" />
                    </a>
                </div>
                <div class="guestbook_news">
                    <h4><a href="#"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></a></h4>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis                                           
                    </span>
                    <h5>
                        <asp:Label ID="Label9" runat="server" Text="time"></asp:Label>
                    </h5>
                </div>
            </div>
            <div class="guestbook_other">
                <div class="guestbook_img">
                    <a href="#">
                        <img src="..\static\img\guestbook_img.png" />
                    </a>
                </div>
                <div class="guestbook_news">
                    <h4><a href="#"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></a></h4>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis                                           
                    </span>
                    <h5>
                        <asp:Label ID="Label11" runat="server" Text="time"></asp:Label>
                    </h5>
                </div>
            </div>
            <div class="guestbook_other">
                <div class="guestbook_img">
                    <a href="#">
                        <img src="..\static\img\guestbook_img.png" />
                    </a>
                </div>
                <div class="guestbook_news">
                    <h4><a href="#"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></a></h4>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis                                           
                    </span>
                    <h5>
                        <asp:Label ID="Label13" runat="server" Text="time"></asp:Label>
                    </h5>
                </div>
            </div>
            <div class="guestbook_other">
                <div class="guestbook_img">
                    <a href="#">
                        <img src="..\static\img\guestbook_img.png" />
                    </a>
                </div>
                <div class="guestbook_news">
                    <h4><a href="#"><asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></a></h4>
                    <span>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. 
                          Cras purus odio, vestibulum in vulputate at, tempus viverra turpis                                           
                    </span>
                    <h5>
                        <asp:Label ID="Label15" runat="server" Text="time"></asp:Label>
                    </h5>
                </div>
            </div>

        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "GET",
                url: "../../server/controller/MsgBoard.ashx",
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                },
                error: function (err) {
                }
            });
        });
    </script>
</body>
</html>
