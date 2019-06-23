using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using NetDB.Core;
using NetDB.Core.Support;
using TourWebApp.server.extend;
using TourWebApp.server.mode;
using LitJson;
using TourWebApp.server.utils;

namespace TourWebApp.server.controller
{
    /// <summary>
    /// ScenicMesPic 的摘要说明
    /// </summary>
    public class ScenicMesPic : ResultFullAPIHttpHandler
    {
        public override string GetProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            PageList<ScenicPic> picList = ORMSupport.PageSelect<ScenicPic>()
                .Select();

            return Result.Ok("", picList.Total, picList.Rows);
        }

        public override string PostProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            return "";
        }

        public override string PutProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }

        public override string DeleteProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }
    }
}