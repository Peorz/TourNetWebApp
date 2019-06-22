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
    public partial class UserMesBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static String Del(String ID)
        {
            MsgBoard msg = new MsgBoard();
            msg.ID = ID;
            return msg.Delete() == 1 ? Result.Ok("", "") : Result.Error("");
        }
    }
}