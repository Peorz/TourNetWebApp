using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp
{
    public class UserInfo : ORMSupport
    {
        [Colmun(Type = "varchar(255)")]
        public String Nick;

        [Colmun(Type = "int")]
        public int Sex;

        [Colmun(Type = "int")]
        public int Type;

        private TokenInfo tokenInfo;

        public UserInfo()
        {

        }

        public UserInfo(String Nick, int Sex, int Type)
        {
            this.Nick = Nick;
            this.Sex = Sex;
            this.Type = Type;
            this.ID = UUID.Get("user");
        }

        public override int Save()
        {
            int result = base.Save();
            if (result == 1)
            {
                this.tokenInfo = new TokenInfo(this.ID);
                tokenInfo.Save();
            }
            else
            {
                return 0;
            }
            return result;
        }

        public TokenInfo GetTokenInfo()
        {
            this.tokenInfo = new TokenInfo();
            this.tokenInfo.setId(this.ID);
            tokenInfo.Find();
            return this.tokenInfo;
        }
    }
}