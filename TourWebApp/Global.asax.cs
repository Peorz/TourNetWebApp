using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace TourWebApp.server.config
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            /**
             * 配置数据库
             */
            SqlHelper.Config("GCM47C2", "TourDataBase");
            /**
             * 创建数据表
             */
            //new DevTest().CreateTable();
            //new UserInfo().CreateTable();
            //new TokenInfo().CreateTable();
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