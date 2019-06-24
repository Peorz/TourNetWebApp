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

        [WebMethod]
        public static String RotaryPic(string GetID)
        {
            PageList<ScenicPic> loadImg = ORMSupport.PageSelect<ScenicPic>()
           .AddWhere("ScenicID", GetID)
           .Select();
            return Result.Ok("", loadImg.Total, loadImg.Rows);
        }

        [WebMethod]
        public static String DisplayMore(string LoadKey)
        {
            PageList<ScenicInfo> moreInfo = ORMSupport.PageSelect<ScenicInfo>()
            .AddWhere("ScenicContent", "like", "%" + LoadKey + "%")
            .AddWhere("ScenicName","!=",LoadKey)
           .Select();
            return Result.Ok("", moreInfo.Total, moreInfo.Rows);
        }
        
    }
}