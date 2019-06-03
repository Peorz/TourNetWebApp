using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web;

namespace TourWebApp
{
    public class Where
    {
        private List<Attr> orList = new List<Attr>();
        private List<Attr> andList = new List<Attr>();

        public void Or(Attr attr)
        {
            orList.Add(attr);
        }

        public void And(Attr attr)
        {
            andList.Add(attr);
        }

        public String Build()
        {
            StringBuilder where = new StringBuilder();
            if (orList.Count == 0 || andList.Count == 0)
            {
                return where.ToString();
            }
            where.Append("where ");
            foreach (Attr attr in andList)
            {
                where.Append(String.Format(" {0} = {1} and", attr.FieldInfo.Name, attr.Value));
            }
            where.Length = where.Length - 3;
            foreach (Attr attr in orList)
            {
                where.Append(String.Format(" {0} = {1} or", attr.FieldInfo.Name, attr.Value));
            }
            where.Length = where.Length - 3;
            SLog.Out.WriteLine(where.ToString());
            return where.ToString();
        }

        public class Attr
        {
            public FieldInfo FieldInfo;
            public String Value;

            public Attr(FieldInfo FieldInfo, String Value)
            {
                this.FieldInfo = FieldInfo;
                this.Value = Value;
            }
        }
    }
}