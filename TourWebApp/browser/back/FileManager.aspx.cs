using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

using TourWebApp.server.mode;
using TourWebApp.server.utils;
using NetDB.Core;
using NetDB.Core.Support;

namespace TourWebApp.browser.back
{
    public partial class FileManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static String GetData()
        {
            return "";
        }
        [WebMethod]
        public static String DeleteFileInfo(string DeleteID)
        {
            FileInfo delInfo = new FileInfo();
            delInfo.ID = DeleteID;
            int res = delInfo.Delete();
            if (res == 0)
            {
                return Result.Error("");
            }
            return Result.Ok("", "");
        }
    }
}