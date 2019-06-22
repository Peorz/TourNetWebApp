using System;
using System.Web.Services;
using TourWebApp.server.mode;
using TourWebApp.server.utils;

namespace TourWebApp.browser.view
{
    public partial class ForgetPassWrod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static String UpdatePsw(String psw)
        {
            UserInfo info = new UserInfo();
            info.ID = "";
            info.PassWord = Md5Utils.MD5Encrypt(psw);
            return info.Update() == 1 ? Result.Ok("", "") : Result.Error("");
        }
    }
}