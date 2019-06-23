using NetDB.Core;
using NetDB.Core.Condition;
using NetDB.Core.SqlAttribute;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp.server.mode
{
    public class UserInfo : ORMSupport
    {
        private String _Nick;

        private String _PassWord;

        private String _Email;

        private byte _Sex;

        private DateTime _CreateTime;

        private LoginToken _LoginToken;

        [Colmun(Type = "varchar(50)")]
        public string Nick
        {
            get { return _Nick; }
            set { _Nick = value; }
        }

        [Colmun(Type = "varchar(32)")]
        public string PassWord
        {
            get { return _PassWord; }
            set { _PassWord = value; }
        }

        [Colmun(Type = "varchar(255)")]
        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }

        [Colmun(Type = "tinyint")]
        public byte Sex
        {
            get { return _Sex; }
            set { _Sex = value; }
        }

        [Colmun(Type = "datetime")]
        public DateTime CreateTime
        {
            get { return _CreateTime; }
            set { _CreateTime = value; }
        }

        private int _Type;

        [Colmun(Type = "int")]
        public int Type
        {
            get { return _Type; }

            set { _Type = value; }
        }

        public LoginToken LoginToken
        {
            get
            {
                _LoginToken = new LoginToken();
                _LoginToken.Find(new Where().Add("UserID", ID));
                return _LoginToken;
            }
            set { _LoginToken = value; }
        }

        public UserInfo()
        {
            _LoginToken = new LoginToken();
            _LoginToken.UserID = ID;
        }

        public override int Save()
        {
            _LoginToken = new LoginToken();
            _LoginToken.UserID = ID;
            _LoginToken.Save();
            return base.Save();
        }
    }
}