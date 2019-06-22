using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using NetDB.Core;
using NetDB.Core.Condition;
using NetDB.Core.SqlAttribute;

namespace TourWebApp.server.mode
{
    public class ScenicInfo:ORMSupport
    {       
        //景区名称
        private string _ScenicName;

        [Colmun(Type = "varchar(50)")]
        public string ScenicName
        {
            get { return _ScenicName; }
            set { _ScenicName = value; }
        }
        //景区别名
        private string _ScenicEnglish;
        [Colmun(Type = "varchar(50)")]
        public string ScenicEnglish
        {
            get { return _ScenicEnglish; }
            set { _ScenicEnglish = value; }
        }
        //景区标题
        private string _ScenicTitle;

        [Colmun(Type = "varchar(255)")]
        public string ScenicTitle
        {
            get { return _ScenicTitle; }
            set { _ScenicTitle = value; }
        }

        //景区介绍
        private string _ScenicContent;

        [Colmun(Type = "text")]
        public string ScenicContent
        {
            get { return _ScenicContent; }
            set { _ScenicContent = value; }
        }

        //景区详细地址
        private string _ScenicAddress;

        [Colmun(Type = "varchar(255)")]
        public string ScenicAddress
        {
            get { return _ScenicAddress; }
            set { _ScenicAddress = value; }
        }

        //景区图片
        private string _ScenicPic;

        [Colmun(Type = "varchar(255)")]
        public string ScenicPic
        {
            get { return _ScenicPic; }
            set { _ScenicPic = value; }
        }

        //景区文章浏览数量
        private int _ScenicBrowse;

        [Colmun(Type = "int")]
        public int ScenicBrowse
        {
            get { return _ScenicBrowse; }
            set { _ScenicBrowse = value; }
        }

        //景区信息更新时间时间
        private DateTime _ScenicUploadTime;

        [Colmun(Type = "datetime")]
        public DateTime ScenicUploadTime
        {
            get { return _ScenicUploadTime; }
            set { _ScenicUploadTime = value; }
        }


    }
}