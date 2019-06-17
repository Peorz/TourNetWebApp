using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using NetDB.Core;
using NetDB.Core.Condition;
using NetDB.Core.SqlAttribute;

namespace TourWebApp.server.mode
{
    public class ForumRecord:ORMSupport
    {
        
        //用户ID
        private string _ID;
        [Colmun(Type = "varchar(32)")]
        public string ID
        {
            get { return _ID; }
            set { _ID = value; }
        }
        //帖子ID
        private string _TopicID;
        [Colmun(Type = "varchar(32)")]
        public string TopicID
        {
            get { return _TopicID; }
            set { _TopicID = value; }
        }
        //回复内容
        private string _RecordContent;
        [Colmun(Type = "text")]
        public string RecordContent
        {
            get { return _RecordContent; }
            set { _RecordContent = value; }
        }
        //回复时间
        private string _RecordTime;
        [Colmun(Type = "datetime")]
        public string RecordTime
        {
            get { return _RecordTime; }
            set { _RecordTime = value; }
        }
    }
}