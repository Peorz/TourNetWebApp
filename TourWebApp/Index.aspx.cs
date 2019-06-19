using NetDB.Core;
using NetDB.Core.Support;
using NetDB.Core.Utils;
using Qiniu.Http;
using Qiniu.Storage;
using Qiniu.Util;
using System;
using System.Web.Services;
using TourWebApp.server.mode;
using TourWebApp.server.utils;

namespace TourWebApp
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        [WebMethod]
        public static String Add()
        {
            return "";
        }

        public string Md5Util { get; set; }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            ScenicInfo scenic = new ScenicInfo();
            PageList<ScenicInfo> list = ORMSupport.PageSelect<ScenicInfo>()
                .AddWhere("ScenicContent", "like", SearchText.Text)
                .Select();
<<<<<<< HEAD
=======
>>>>>>> 5673ea7c388275011d24400eadf8b06c892df76b
        }
    }
}