using NetDB.Core;
using NetDB.Core.Support;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TourWebApp.server.extend;
using TourWebApp.server.utils;

namespace TourWebApp.server.controller
{
    /// <summary>
    /// MainRotation 的摘要说明
    /// </summary>
    public class MainRotation : ResultFullAPIHttpHandler
    {
        public override string DeleteProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }

        public override string GetProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            PageList<mode.MainRotation> pageList = ORMSupport.PageSelect<mode.MainRotation>()
                            .Select();
            return Result.Ok("", pageList.Total, pageList.Rows);
        }

        public override string PostProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }

        public override string PutProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }
    }
}