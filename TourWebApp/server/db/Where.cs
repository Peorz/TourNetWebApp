using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web;
using System.Data.SqlClient;

namespace TourWebApp
{
    public class Where
    {
        private List<Attr> OrList = new List<Attr>();
        private List<Attr> AndList = new List<Attr>();

        public void Or(String FieldName, Object Value)
        {
            OrList.Add(new Attr(FieldName, Value));
        }

        public void And(String FieldName, String Value)
        {
            AndList.Add(new Attr(FieldName, Value));
        }

        public int Count()
        {
            return OrList.Count + AndList.Count;
        }

        public String Build(out SqlParameter[] parameters)
        {
            StringBuilder where = new StringBuilder();
            parameters = new SqlParameter[] { };
            List<SqlParameter> paramList = parameters.ToList<SqlParameter>();
            if (OrList.Count == 0 && AndList.Count == 0)
            {
                return where.ToString();
            }
            where.Append("where");
            foreach (Attr attr in AndList)
            {
                String paramName = String.Format("@{0}", attr.FieldName);
                where.Append(String.Format(" {0} = {1} and", attr.FieldName, paramName));
                paramList.Add(new SqlParameter(paramName, attr.Value));
            }
            foreach (Attr attr in OrList)
            {
                String paramName = String.Format("@{0}", attr.FieldName);
                where.Append(String.Format(" {0} = {1} or", attr.FieldName, paramName));
                paramList.Add(new SqlParameter(paramName, attr.Value));
            }
            parameters = paramList.ToArray<SqlParameter>();
            where.Length = where.Length - 3;
            return where.ToString();
        }

        public class Attr
        {
            public String FieldName;
            public Object Value;

            public Attr(String FieldName, Object Value)
            {
                this.FieldName = FieldName;
                this.Value = Value;
            }
        }
    }
}