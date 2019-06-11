using NetDB.Core;
using NetDB.Core.SqlAttribute;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp.server.mode
{
    public class LoginToken : ORMSupport
    {

        private String _UserID;

        private DateTime _LoginTime;

        [Colmun(Type = "varchar(32)")]
        public string UserID
        {
            get { return _UserID; }
            set { _UserID = value; }
        }

        [Colmun(Type = "datetime")]
        public DateTime LoginTime
        {
            get { return _LoginTime; }
            set { _LoginTime = value; }
        }
    }
}