using NetDB.Core;
using NetDB.Core.Support;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TourWebApp.server.mode;

namespace TourWebApp.browser.view
{
    public partial class MessageBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MsgBoard msg = new MsgBoard();
            //msg.UserID = "213123123";
            //msg.Content = "hahahahahahahah";
            //msg.PostTime = DateTime.Now;
            //msg.Save();

            PageList<MsgBoard> list = ORMSupport.PageSelect<MsgBoard>()
                .Select();
        }
    }
}