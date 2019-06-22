using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using TourWebApp.server.utils;
using TourWebApp.server.mode;
using System.Web.Services;
using NetDB.Core.Support;
using NetDB.Core;

namespace TourWebApp.browser.view
{
    public partial class TourSel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static String DisplayList(string ScenicKey)
        {
            PageList<ScenicInfo> loadInfo = ORMSupport.PageSelect<ScenicInfo>()
           .AddWhere("ScenicContent", "like", "%" + ScenicKey + "%")
           .Select();
            return Result.Ok("", loadInfo.Total, loadInfo.Rows);
        }          
    }
}