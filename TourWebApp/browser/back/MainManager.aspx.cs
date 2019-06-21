using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TourWebApp.server.mode;
using TourWebApp.server.utils;

namespace TourWebApp.browser.back
{
    public partial class MainManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static String AddTour(String title, String summary, String key)
        {
            MainTourColumn col = new MainTourColumn();
            col.Title = title;
            col.Summary = summary;
            col.Img = key;
            int ret = col.Save();
            if (ret == 0)
            {
                return Result.Error("");
            }
            return Result.Ok("","");
        }

        [WebMethod]
        public static String AddRotation(String key)
        {
            MainRotation col = new MainRotation();
            col.Img = key;
            int ret = col.Save();
            if (ret == 0)
            {
                return Result.Error("");
            }
            return Result.Ok("", "");
        }
    }
}