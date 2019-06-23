using NetDB.Core;
using NetDB.Core.Support;
using TourWebApp.server.mode;
using TourWebApp.server.utils;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TourWebApp.server.mode;

namespace TourWebApp.browser.back
{
    public partial class UserManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public void ResultUserList(List<UserInfo> userList)
        {

        }

        [WebMethod]
        public static String DeleteUserInfo(string DeleteID)
        {
            UserInfo delInfo = new UserInfo();
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