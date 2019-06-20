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
    /// MainTourColumn 的摘要说明
    /// </summary>
    public class MainTourColumn : ResultFullAPIHttpHandler
    {
        public override string DeleteProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }

        public override string GetProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            PageList<mode.MainTourColumn> pageList = ORMSupport.PageSelect<mode.MainTourColumn>()
                //.AddOrder("UpTime",SortType.DESC)
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