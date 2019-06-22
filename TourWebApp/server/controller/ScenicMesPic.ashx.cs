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
    /// ScenicManager 的摘要说明
    /// </summary>
    public class ScenicMesPic : ResultFullAPIHttpHandler
    {
        public override string GetProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            String order = request.Params["order"];
            PageList<ScenicPic> scenicList = ORMSupport.PageSelect<ScenicPic>()
                .Select();

            return Result.Ok("", scenicList.Total, scenicList.Rows);
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