using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp
{
    public class Colmun :Attribute
    {
        public bool PrimaryKey;
        public bool Ignore;
        public String Type;
    }
}