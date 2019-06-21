using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using NetDB.Core;
using NetDB.Core.Condition;
using NetDB.Core.SqlAttribute;

namespace TourWebApp.server.mode
{
    public class MainRotation : ORMSupport
    {
        private String _Img;

        [Colmun(Type = "varchar(50)")]
        public String Img
        {
            get { return _Img; }
            set { _Img = value; }
        }
    }
}