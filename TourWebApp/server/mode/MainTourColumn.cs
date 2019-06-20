using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NetDB.Core;
using NetDB.Core.SqlAttribute;
using NetDB.Core.Utils;

namespace TourWebApp.server.mode
{
    public class MainTourColumn : ORMSupport
    {
        private String _Img;

        [Colmun(Type = "varchar(50)")]
        public String Img
        {
            get { return _Img; }
            set { _Img = value; }
        }

        private String _Title;

        [Colmun(Type = "varchar(32)")]
        public String Title
        {
            get { return _Title; }
            set { _Title = value; }
        }

        private String _Summary;

        [Colmun(Type = "varchar(32)")]
        public String Summary
        {
            get { return _Summary; }
            set { _Summary = value; }
        }
             
    }
}