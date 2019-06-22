using NetDB.Core;
using NetDB.Core.SqlAttribute;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp.server.mode
{
    public class MsgBoard : ORMSupport
    {
        private string _UserID;

        [Colmun(Type = "varchar(32)")]
        public string UserID
        {
            get { return _UserID; }
            set { _UserID = value; }
        }

        private string _Content;

        [Colmun(Type = "text")]
        public string Content
        {
            get { return _Content; }
            set { _Content = value; }
        }

        private DateTime _PostTime;

        [Colmun(Type = "datetime")]
        public DateTime PostTime
        {
            get { return _PostTime; }
            set { _PostTime = value; }
        }

        private UserInfo _UserInfo;

        public UserInfo UserInfo
        {
            get
            {
                _UserInfo = new UserInfo();
                _UserInfo.ID = UserID;
                _UserInfo.Find();
                _UserInfo.PassWord = "";
                _UserInfo.Nick = "xxxxx";
                return _UserInfo;
            }

            set { _UserInfo = value; }
        }

    }
}