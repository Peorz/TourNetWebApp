using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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

