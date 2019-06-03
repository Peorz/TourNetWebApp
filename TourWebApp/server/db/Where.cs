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
        private List<Attr> OrList = new List<Attr>();
        private List<Attr> AndList = new List<Attr>();

        public void Or(String FieldName, String Value)
        {
            OrList.Add(new Attr(FieldName, String.Format("'{0}'", Value)));
        }

        public void Or(String FieldName, double Value)
        {
            OrList.Add(new Attr(FieldName, Value + ""));
        }

        public void And(String FieldName, String Value)
        {
            AndList.Add(new Attr(FieldName, String.Format("'{0}'", Value)));
        }

        public void And(String FieldName, double Value)
        {
            AndList.Add(new Attr(FieldName, Value + ""));
        }

        public String Build()
        {
            StringBuilder where = new StringBuilder();
            if (OrList.Count == 0 || AndList.Count == 0)
            {
                return where.ToString();
            }
            where.Append("where");
            foreach (Attr attr in AndList)
            {
                where.Append(String.Format(" {0} = {1} and", attr.FieldName, attr.Value));
            }
            foreach (Attr attr in OrList)
            {
                where.Append(String.Format(" {0} = {1} or", attr.FieldName, attr.Value));
            }
            where.Length = where.Length - 3;
            return where.ToString();
        }

        public class Attr
        {
            public String FieldName;
            public String Value;

            public Attr(String FieldName, String Value)
            {
                this.FieldName = FieldName;
                this.Value = Value;
            }
        }
    }
}