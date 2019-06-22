using NetDB.Core;
using NetDB.Core.Support;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TourWebApp.server.extend;
using TourWebApp.server;
using TourWebApp.server.utils;

namespace TourWebApp.server.controller
{
    /// <summary>
    /// MsgBoard 的摘要说明
    /// </summary>
    public class MsgBoard : ResultFullAPIHttpHandler
    {
        public override string DeleteProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }

        public override string GetProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            PageList<mode.MsgBoard> page = ORMSupport.PageSelect<mode.MsgBoard>()
                .Select();
            foreach (mode.MsgBoard msg in page.Rows)
            {
                _ = msg.UserInfo;
            }
            return Result.Ok("", page.Total, page.Rows);
        }

        public override string PostProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            return "";
        }

        public override string PutProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }
    }
}