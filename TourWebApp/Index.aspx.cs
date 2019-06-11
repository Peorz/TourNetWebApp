using NetDB.Core;
using NetDB.Core.Utils;
using System;
using System.Web.Services;

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
            return "xlh";
        }
    }
}