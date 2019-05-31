using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp
{
    public class UserInfo : ORMSupport
    {
        public String nick = null;
        public int? sex = null;
        public int? type = null;
        private TokenInfo tokenInfo;

        public UserInfo()
        {

        }

        public UserInfo(String nick, int sex, int type)
        {
            this.nick = nick;
            this.sex = sex;
            this.type = type;
            this.id = UUID.Get("user");
        }

        public override int Save()
        {
            int result = base.Save();
            if (result == 1)
            {
                this.tokenInfo = new TokenInfo(this.id);
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
            this.tokenInfo.setId(this.id);
            tokenInfo.Find();
            return this.tokenInfo;
        }
    }
}