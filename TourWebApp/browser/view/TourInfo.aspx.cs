using System;
using TourWebApp.server.utils;
using TourWebApp.server.mode;
using System.Web.Services;
using NetDB.Core.Support;
using NetDB.Core;

namespace TourWebApp.browser.view
{
    public partial class TourInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static String DisplayInfo(string GetID)
        {
            PageList<ScenicInfo> loadInfo = ORMSupport.PageSelect<ScenicInfo>()
           .AddWhere("ID", GetID)
           .Select();
            return Result.Ok("", loadInfo.Total, loadInfo.Rows);
        }
    }
}