using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;

namespace TourWebApp
{
    public class FieldAttribute
    {
        private Object obj;
        public FieldInfo Field;
        public Colmun Colmun;
        public bool IsChar;
        public String Value;

        public FieldAttribute(Object obj, FieldInfo field)
        {
            this.obj = obj;
            this.Field = field;
        }

        public void GetAttribute()
        {
            GetColmun();
        }

        private void GetColmun()
        {
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
            }
        }
    }
}