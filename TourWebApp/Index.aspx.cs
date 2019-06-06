using NetDB.Core;
using System;
using System.Collections.Generic;
using System.Web.Services;
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
            return "xlh";
        }
    }
}