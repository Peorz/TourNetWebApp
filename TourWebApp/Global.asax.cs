using NetDB.Core;
using System;
using TourWebApp.server.mode;

namespace TourWebApp.server.config
{
    public class Global : System.Web.HttpApplication
    {

        String url = "http://localhost:51606/browser/view/Login.aspx";

        protected void Application_Start(object sender, EventArgs e)
        {
            /**
             * 配置数据库
             */
            //SqlHelper.Config("49.234.13.138", "TourDataBase", "tmpuser", "tmpuser.123");
            SqlHelper.Config("TourDataBase");
            /**
             * 创建数据表
             */
            new UserInfo().CreateTable();
            new LoginToken().CreateTable();
            new FileInfo().CreateTable();
            /**
             * 配置日志开关
             */
            SLog.SetEnable(true);
        }

        protected void Session_Start(object sender, EventArgs e)
        {
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
        }

        protected void Application_PostRequestHandlerExecute(object sender, EventArgs e)
        {

            //if (Request.CurrentExecutionFilePathExtension.Equals(".aspx"))
            //{
            //    String view = Request.FilePath;
            //    if (view.EndsWith("Login.aspx") || view.EndsWith("Register.aspx") || view.EndsWith("ForgetPassWrod.aspx"))
            //    {
            //        return;
            //    }
            //    UserInfo userInfo = Session["user"] as UserInfo;
            //    String token = Session["token"] as String;
            //    if (userInfo == null || token == null)
            //    {
            //        Response.Redirect(url);
            //        return;
            //    }
            //    LoginToken loginToken = userInfo.LoginToken;
            //    SLog.Out.WriteLine("Global:" + loginToken.TokenID);
            //    if (!loginToken.TokenID.Equals(token))
            //    {
            //        Session.Remove("user");
            //        Session.Remove("token");
            //        Response.Redirect(url);
            //        return;
            //    }
            //}
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {
        }
    }
}