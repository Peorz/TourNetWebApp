using System;
using System.Web;
using TourWebApp.server.utils;

namespace TourWebApp.server.extend
{
    public abstract class ResultFullAPIHttpHandler : IHttpHandler
    {
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        public void ProcessRequest(HttpContext context)
        {
            String method = context.Request.HttpMethod.ToUpper();
            String result = "";
            switch (method)
            {
                case "GET":
                    result = GetProcessRequest(context, context.Request, context.Response);
                    break;
                case "POST":
                    result = PostProcessRequest(context, context.Request, context.Response);
                    break;
                case "PUT":
                    result = PutProcessRequest(context, context.Request, context.Response);
                    break;
                case "DELETE":
                    result = DeleteProcessRequest(context, context.Request, context.Response);
                    break;
            }
            context.Response.Write(result);
        }

        public abstract String GetProcessRequest(HttpContext context, HttpRequest request, HttpResponse response);

        public abstract String PostProcessRequest(HttpContext context, HttpRequest request, HttpResponse response);

        public abstract String PutProcessRequest(HttpContext context, HttpRequest request, HttpResponse response);

        public abstract String DeleteProcessRequest(HttpContext context, HttpRequest request, HttpResponse response);
    }
}