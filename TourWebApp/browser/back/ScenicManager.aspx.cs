using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using TourWebApp.server.mode;
using TourWebApp.server.utils;
using System.Web.Services;

namespace TourWebApp.browser.back
{
    public partial class ScenicManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static String AddScenicInfo(string Name,string Title,string Content,string Address)
        {
            ScenicInfo addInfo = new ScenicInfo();
            addInfo.ScenicName = Name;
            addInfo.ScenicTitle = Title;
            addInfo.ScenicContent = Content;
            addInfo.ScenicAddress = Address;
            addInfo.ScenicBrowse = 0;
            addInfo.ScenicPic = "";
            addInfo.ScenicUploadTime = DateTime.Now;
            int res = addInfo.Save();
            if (res == 0)
            {
                return Result.Error("");
            }
            return Result.Ok("", "");
            
        }
        public static String DeleteScenicInfo(string DeleteID)
        {
            ScenicInfo delInfo = new ScenicInfo();
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