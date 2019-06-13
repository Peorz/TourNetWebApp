using NetDB.Core;
using NetDB.Core.Support;
using System;
using System.Web.Services;
using TourWebApp.server.mode;
using TourWebApp.server.utils;

namespace TourWebApp.browser.view
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            String email = email_tb.Text;
            String psw = psw_tb.Text;
            PageList<UserInfo> user = ORMSupport.PageSelect<UserInfo>()
                .AddWhere("Email", email)
                .Select();
            if (user.Total == 0)
            {
                warning_div.Visible = true;
                warning_lb.Text = "该用户不存在！";
            }
            if (!user.Rows[0].PassWord.Equals(Md5Utils.MD5Encrypt(psw)))
            {
                warning_div.Visible = true;
                warning_lb.Text = "密码错误！";
            }
        }

        [WebMethod]
        public static String SignIn()
        {
            return "";
        }
    }
}