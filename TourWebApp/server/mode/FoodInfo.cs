using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using NetDB.Core;
using NetDB.Core.Condition;
using NetDB.Core.SqlAttribute;

namespace TourWebApp.server.mode
{
    public class FoodInfo:ORMSupport
    {
        //美食ID
        private string _FoodID;
        [Colmun(Type = "varchar(32)")]
        public string FoodID
        {
            get { return _FoodID; }
            set { _FoodID = value; }
        }
        //城市ID
        private string _CityID;
        [Colmun(Type = "varchar(32)")]
        public string CityID
        {
            get { return _CityID; }
            set { _CityID = value; }
        }
        //美食名称
        private string _FoodName;
        [Colmun(Type = "varchar(50)")]
        public string FoodName
        {
            get { return _FoodName; }
            set { _FoodName = value; }
        }
        //美食介绍
        private string _FoodContent;
        [Colmun(Type = "text")]
        public string FoodContent
        {
            get { return _FoodContent; }
            set { _FoodContent = value; }
        }
        //美食图片
        private string _FoodPic;
        [Colmun(Type = "varchar(255)")]
        public string FoodPic
        {
            get { return _FoodPic; }
            set { _FoodPic = value; }
        }
        //美食文章浏览量
        private int _FoodBrowte;
        [Colmun(Type = "int")]
        public int FoodBrowte
        {
            get { return _FoodBrowte; }
            set { _FoodBrowte = value; }
        }
        //美食信息添加时间
        private DateTime _FoodUploadTime;
        [Colmun(Type = "datetime")]
        public DateTime FoodUploadTime
        {
            get { return _FoodUploadTime; }
            set { _FoodUploadTime = value; }
        }

    }
}