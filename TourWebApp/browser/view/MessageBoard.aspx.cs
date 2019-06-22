using NetDB.Core;
using NetDB.Core.Support;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TourWebApp.server.mode;
using TourWebApp.server.utils;

namespace TourWebApp.browser.view
{
    public partial class MessageBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static String GetData()
        {
            PageList<MsgBoard> list = ORMSupport.PageSelect<MsgBoard>()
                .Select();
            return Result.Ok("", list.Total, list.Rows);
        }

        [WebMethod]
        public static String Add(String Content)
        {
            MsgBoard msg = new MsgBoard();
            msg.Content = Content;
            msg.UserID = "sdsdsd";
            msg.PostTime = DateTime.Now;
            return msg.Save() == 1 ? Result.Ok("", "") : Result.Error("");
        }
    }
}