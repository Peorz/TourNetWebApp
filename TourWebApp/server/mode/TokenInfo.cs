using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp
{
    public class TokenInfo : ORMSupport
    {
        [Colmun(Type = "datetime")]
        public DateTime LoginTime;

        [Colmun(Type = "varchar(255)")]
        public String Token;

        public TokenInfo()
        {

        }

        public TokenInfo(String userId)
        {
            setId(userId);
            this.LoginTime = DateTime.Now;
            this.Token = UUID.Get("token");
        }
    }
}