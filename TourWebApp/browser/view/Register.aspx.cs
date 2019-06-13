using System;
using TourWebApp.server.mode;

namespace TourWebApp.browser.view
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_btn_Click(object sender, EventArgs e)
        {
            String nick = nick_tb.Text;
            String email = email_tb.Text;
            String psw = psw_tb.Text;
            String again_psw = again_psw_tb.Text;
            if (nick.Length == 0 || email.Length == 0 || psw.Length == 0 || again_psw.Length == 0)
            {
                warning_div.Visible = true;
                warning_lb.Text = "信息填写不完整！";
                return;
            }
            if (!psw.Equals(again_psw))
            {
                warning_div.Visible = true;
                warning_lb.Text = "密码填写有误！";
                return;
            }
            warning_div.Visible = false;
            UserInfo userInfo = new UserInfo();
            userInfo.Nick = nick;
            userInfo.Email = email;
            userInfo.PassWord = psw;
            userInfo.Save();
            Response.Redirect("Login.aspx");
        }
    }
}