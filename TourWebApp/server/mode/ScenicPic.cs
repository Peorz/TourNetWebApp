using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using NetDB.Core;
using NetDB.Core.Condition;
using NetDB.Core.SqlAttribute;

namespace TourWebApp.server.mode
{
    public class ScenicPic:ORMSupport
    {
        private string _ScenicID;
        [Colmun(Type = "varchar(32)")]
        public string ScenicID
        {
            get { return _ScenicID; }
            set { _ScenicID = value; }
        }
        private string _ScenicImg;
        [Colmun(Type = "varchar(255)")]
        public string ScenicImg
        {
            get { return _ScenicImg; }
            set { _ScenicImg = value; }
        }
    }
}