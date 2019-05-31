using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp
{
    public class TokenInfo : ORMSupport
    {
        public DateTime loginTime = DateTime.Now;
        public String token = null;

        public TokenInfo()
        {

        }

        public TokenInfo(String userId)
        {
            setId(userId);
            this.loginTime = DateTime.Now;
            this.token = UUID.Get("token");
        }
    }
}