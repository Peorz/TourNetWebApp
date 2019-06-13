using NetDB.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TourWebApp.server.mode;

namespace TourWebApp.server.extend
{
    public class TourInterceptor : IHttpModule
    {
        private HttpApplication context;
        public void Dispose()
        {
        }

        public void Init(HttpApplication context)
        {
            this.context = context;
            context.BeginRequest += AppBeginRequest;
        }

        public void AppBeginRequest(Object source,EventArgs e)
        {
           
        }
    }
}