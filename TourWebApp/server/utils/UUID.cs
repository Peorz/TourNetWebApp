using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp
{
    public class UUID
    {
        public static String Get(String prefix)
        {
            String uuid =  System.Guid.NewGuid().ToString("N");
            return prefix+uuid.Substring(prefix.Length);
        }
    }
}