using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;

namespace TourWebApp
{
    public class FieldAttribute
    {
        public FieldInfo Field;
        public Colmun Colmun;
        public Object Value;

        public FieldAttribute(Object obj, FieldInfo field)
        {
            this.Field = field;
            Object[] cols = Field.GetCustomAttributes(false);
            foreach (Object item in cols)
            {
                if (!(item is Colmun))
                {
                    continue;
                }
                Colmun colmun = item as Colmun;
                if (colmun.Ignore)
                {
                    continue;
                }
                if (colmun.Type == null)
                {
                    continue;
                }
                this.Colmun = colmun;
                this.Value = Field.GetValue(obj);
            }
        }
    }
}