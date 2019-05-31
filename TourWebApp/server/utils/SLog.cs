using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Diagnostics;
using System.Reflection;
using System.Text;

namespace TourWebApp
{
    /**
     *封装日志输出类
     */
    public class SLog
    {
        public static SLogCore Out = new SLogMethod();

        public static void SetEnable(bool enable)
        {
            if (!enable)
            {
                Out = new SLogVirtualMethod();
            }
        }

        public class SLogMethod : SLogCore
        {
            private String BuildOutString(String msg)
            {
                return String.Format("【{0}】- {1}\n", DateTime.Now.ToLongTimeString(), msg);
            }

            public void WriteLine(string msg)
            {
                Debug.Write(BuildOutString(msg));
            }

            public void WriteLine(bool b)
            {
                Debug.Write(BuildOutString(b + ""));
            }

            public void WriteLine(Object obj)
            {
                Type t = obj.GetType();
                if (obj == null)
                {
                    Debug.Write(BuildOutString("this is null"));
                    return;
                }
                StringBuilder builder = new StringBuilder("[ ");
                FieldInfo[] fields = t.GetFields();
                foreach (FieldInfo f in fields)
                {
                    builder.Append(f.Name);
                    builder.Append(" = ");
                    Object val = f.GetValue(obj);
                    if (val == null)
                    {
                        builder.Append("null");
                    }
                    else
                    {
                        builder.Append(val.ToString());
                    }
                    builder.Append(" , ");
                }
                builder.Length = builder.Length - 2;
                builder.Append("]");
                Debug.Write(BuildOutString(builder.ToString()));
            }
        }

        public class SLogVirtualMethod : SLogCore
        {
            public void WriteLine(string msg)
            {
            }

            public void WriteLine(bool b)
            {
            }

            public void WriteLine(object obj)
            {
                throw new NotImplementedException();
            }
        }

        public interface SLogCore
        {
            void WriteLine(String msg);
            void WriteLine(bool b);
            void WriteLine(Object obj);
        }
    }
}