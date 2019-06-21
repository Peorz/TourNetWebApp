using System;
using System.Web.Services;
using TourWebApp.server.mode;
using NetDB.Core.Support;
using NetDB.Core;
using TourWebApp.server.utils;

namespace TourWebApp.browser.view
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static String GetTourData(String name)
        {
            PageList<MainTourColumn> page = ORMSupport.PageSelect<MainTourColumn>()
                .Select();
            return Result.Ok("", page.Total, page.Rows);
        }
    }
}