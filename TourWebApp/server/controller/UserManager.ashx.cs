using NetDB.Core;
using NetDB.Core.Support;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TourWebApp.server.extend;
using TourWebApp.server.mode;
using LitJson;
using TourWebApp.server.utils;

namespace TourWebApp.server.controller
{
    /// <summary>
    /// UserManager 的摘要说明
    /// </summary>
    public class UserManager : ResultFullAPIHttpHandler
    {
        public override string DeleteProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }

        public override string GetProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            String order = request.Params["order"];
            PageList<UserInfo> userList = ORMSupport.PageSelect<UserInfo>()
                .Select();
            foreach (UserInfo info in userList.Rows)
            {
                info.PassWord = null;
                info.LoginToken = null;
            }
            return Result.Ok("", userList.Total, userList.Rows);
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