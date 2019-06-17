using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using NetDB.Core;
using NetDB.Core.Condition;
using NetDB.Core.SqlAttribute;

namespace TourWebApp.server.mode
{
    public class CityInfo:ORMSupport
    {
        //城市ID
        private string _CityID;
        [Colmun(Type = "varchar(32)")]
        public string CityID
        {
            get { return _CityID; }
            set { _CityID = value; }
        }

        //城市名称
        private string _CityName;
        [Colmun(Type = "varchar(50)")]
        public string CityName
        {
            get { return _CityName; }
            set { _CityName = value; }
        }

        //城市介绍
        private string _CityContent;
        [Colmun(Type = "text")]
        public string CityContent
        {
            get { return _CityContent; }
            set { _CityContent = value; }
        }

        //城市图片
        private string _CityPic;
        [Colmun(Type = "varchar(255)")]
        public string CityPic
        {
            get { return _CityPic; }
            set { _CityPic = value; }
        }

        //城市文章浏览量
        private int _CityBrowse;
        [Colmun(Type = "int")]
        public int CityBrowse
        {
            get { return _CityBrowse; }
            set { _CityBrowse = value; }
        }

        //城市信息添加时间
        private DateTime _CityUploadTime;
        [Colmun(Type = "datetime")]
        public DateTime CityUploadTime
        {
            get { return CityUploadTime; }
            set { CityUploadTime = value; }
        }
    }
}