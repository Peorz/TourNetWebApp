using NetDB.Core;
using NetDB.Core.SqlAttribute;
using NetDB.Core.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp.server.mode
{
    public class LoginToken : ORMSupport
    {

        private String _UserID;

        private DateTime _LoginTime = DateTime.Now;

        [Colmun(Type = "varchar(32)")]
        public string UserID
        {
            get { return _UserID; }
            set { _UserID = value; }
        }

        private String _TokenID = UUID.Get("token");

        [Colmun(Type = "varchar(32)")]
        public string TokenID 
        {
            get { return _TokenID; }

            set { _TokenID = value; }
        }

        [Colmun(Type = "datetime")]
        public DateTime LoginTime
        {
            get { return _LoginTime; }
            set { _LoginTime = value; }
        }
    }
}