using NetDB.Core;
using NetDB.Core.Support;
using NetDB.Core.Utils;
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
                return;
            }
            UserInfo userInfo = user.Rows[0];
            if (!userInfo.PassWord.Equals(Md5Utils.MD5Encrypt(psw)))
            {
                warning_div.Visible = true;
                warning_lb.Text = "密码错误！";
            }
            userInfo.PassWord = "";
            Session["user"] = userInfo;
            LoginToken token = userInfo.LoginToken;
            token.TokenID = UUID.Get("token");
            token.LoginTime = DateTime.Now;
            //int ret = token.Update();
            SLog.Out.WriteLine("Login:" + token.TokenID);
            Session["token"] = token.TokenID;
            Response.Redirect("../../Index.aspx");
        }

        [WebMethod]
        public static String SignIn()
        {
            return "";
        }
    }
}