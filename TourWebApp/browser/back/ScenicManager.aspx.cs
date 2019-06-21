using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using TourWebApp.server.mode;
using TourWebApp.server.utils;
using System.Web.Services;
using NetDB.Core;
using NetDB.Core.Support;

namespace TourWebApp.browser.back
{
    public partial class ScenicManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static String AddScenicInfo(string Name, string Title, string Content, string Address, string PicUrl)
        {
            ScenicInfo addInfo = new ScenicInfo();
            addInfo.ScenicName = Name;
            addInfo.ScenicTitle = Title;
            addInfo.ScenicContent = Content;
            addInfo.ScenicAddress = Address;
            addInfo.ScenicBrowse = 0;
            addInfo.ScenicPic = PicUrl;
            addInfo.ScenicUploadTime = DateTime.Now;
            int res = addInfo.Save();
            if (res == 0)
            {
                return Result.Error("");
            }
            return Result.Ok("", "");

        }
        [WebMethod]
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
        [WebMethod]
        public static String DetailedInfo(string DetailedID)
        {                  
            ScenicInfo detailedInfo = new ScenicInfo();
            detailedInfo.ID = DetailedID;
            bool res = detailedInfo.Find();
            if (res==false)
            {
                return Result.Error("");
            }
            return Result.Ok("",detailedInfo);
        }

        [WebMethod]
        public static String EditInfo(string EditID)
        {
            ScenicInfo editInfo = new ScenicInfo();
            editInfo.ID = EditID;
            bool res = editInfo.Find();
            if (res == false)
            {
                return Result.Error("");
            }
            return Result.Ok("", editInfo);
            
        }

        [WebMethod]
        public static String EditUp(string EditID, string EditName, string EditTitle, string EditContent, string EditAddress)
        {
            ScenicInfo editInfo = new ScenicInfo();
            editInfo.ScenicName = EditName;
            editInfo.ScenicTitle = EditTitle;
            editInfo.ScenicContent = EditContent;
            editInfo.ScenicAddress = EditAddress;
            editInfo.ScenicUploadTime = DateTime.Now;
            editInfo.ID = EditID;
            int res = editInfo.Update();
            if (res == 0)
            {
                return Result.Error("");
            }
            return Result.Ok("", "");

        }
    }
}