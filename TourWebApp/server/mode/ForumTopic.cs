using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using NetDB.Core;
using NetDB.Core.Condition;
using NetDB.Core.SqlAttribute;

namespace TourWebApp.server.mode
{
    public class ForumTopic:ORMSupport
    {         

        //用户ID
        private string _UserID;

        [Colmun(Type = "varchar(32)")]
        public string UserID
        {
            get { return _UserID; }
            set { _UserID = value; }
        }

        //帖子标题
        private string _TopicTitle;
        [Colmun(Type = "varchar(255)")]
        public string TopicTitle
        {
            get { return _TopicTitle; }
            set { _TopicTitle = value; }
        }

        //帖子内容
        private string _TopicContent;
        [Colmun(Type = "text")]
        public string TopicContent
        {
            get { return _TopicContent; }
            set { _TopicContent = value; }
        }

        //帖子点赞人数
        private int _TopicClick;
        [Colmun(Type = "int")]
        public int TopicClick
        {
            get { return _TopicClick; }
            set { _TopicClick = value; }
        }

        //帖子发布时间
        private DateTime _TopicUploadTime;
        [Colmun(Type = "datetime")]
        public DateTime TopicUploadTime
        {
            get { return _TopicUploadTime; }
            set { _TopicUploadTime = value; }
        }
    }
}