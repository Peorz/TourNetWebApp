using NetDB.Core;
using NetDB.Core.SqlAttribute;
using System;

namespace TourWebApp
{
    public class DevTest : ORMSupport
    {
        [Colmun(Type = "varchar(255)")]
        public String Name;

        [Colmun(Type = "int")]
        public int Age;
    }
}

