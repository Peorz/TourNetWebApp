using NetDB.Core;
using System;

namespace TourWebApp.server.config
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            /**
             * 配置数据库
             */
            SqlHelper.ConfigAuto("TourDataBase");
            /**
             * 创建数据表
             */
            new DevTest().CreateTable();
            new UserInfo().CreateTable();
            new TokenInfo().CreateTable();
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