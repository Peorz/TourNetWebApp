﻿using System;
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
        //景区ID
        private string _ScenicID;

        [Colmun(Type = "varchar(32)")]
        public string ScenicID
        {
            get { return _ScenicID; }
            set { _ScenicID = value; }
        }
        //城市ID
        private string _CityID;

        [Colmun(Type = "varchar(32)")]
        public string CityID
        {
            get { return _CityID; }
            set { _CityID = value; }
        }
        //景区名称
        private string _ScenicName;

        [Colmun(Type = "varchar(50)")]
        public string ScenicName
        {
            get { return _ScenicName; }
            set { _ScenicName = value; }
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

        //景区信息添加时间
        private DateTime _ScenicUploadTime;

        [Colmun(Type = "datetime")]
        public DateTime ScenicUploadTime
        {
            get { return _ScenicUploadTime; }
            set { _ScenicUploadTime = value; }
        }


    }
}