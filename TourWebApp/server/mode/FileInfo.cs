using NetDB.Core;
using NetDB.Core.SqlAttribute;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp.server.mode
{
    public class FileInfo : ORMSupport
    {
        private String _FileKey;

        private String _FileHash;

        [Colmun(Type = "varchar(255)")]
        public string FileKey
        {
            get
            {
                return _FileKey;
            }

            set
            {
                _FileKey = value;
            }
        }

        [Colmun(Type = "varchar(32)")]
        public string FileHash
        {
            get
            {
                return _FileHash;
            }

            set
            {
                _FileHash = value;
            }
        }

        private DateTime _UpTime;

        [Colmun(Type = "datetime")]
        public DateTime UpTime
        {
            get
            {
                return _UpTime;
            }

            set
            {
                _UpTime = value;
            }
        }
    }
}