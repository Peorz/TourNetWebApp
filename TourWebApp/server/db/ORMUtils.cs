using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Collections;
using System.Data.SqlClient;

namespace TourWebApp
{
    public class ORMUtils
    {
        /**
         *获得模型对应的表明
         */
        public static String GetTableName(Object obj)
        {
            return obj.GetType().Name;
        }

        public static String GetTableName(Type type)
        {
            return type.Name;
        }

        public static bool IsDefaultValue(Object obj, FieldInfo field)
        {
            bool result = false;
            Object value = field.GetValue(obj);
            if (value == null)
            {
                return true;
            }
            String type = value.ToString();
            SLog.Out.WriteLine(field.FieldType.FullName);
            switch (field.FieldType.FullName)
            {
                case "System.Decimal":
                    result = type.Equals("0");
                    break;
                case "System.String":
                    result = type.Equals("null");
                    break;
                case "System.Char":
                    result = type.Equals("'\0'");
                    break;
                case "System.Guid":
                    break;
                case "System.Int16":
                    result = type.Equals("0");
                    break;
                case "System.Int32":
                    result = type.Equals("0");
                    break;
                case "System.Int64":
                    result = type.Equals("0");
                    break;
                case "System.Byte":
                    result = type.Equals("0");
                    break;
                case "System.Byte[]":
                    result = type.Equals("null");
                    break;
                case "System.Boolean":
                    result = type.Equals("False");
                    break;
                case "System.Double":
                    result = type.Equals("0");
                    break;
                case "System.DateTime":
                    result = type.Equals("0001/1/1 0:00:00");
                    break;
                default:
                    throw new Exception("类型不匹配:" + field.GetType().FullName);
            }
            return result;
        }

        public static bool SetModelValue(SqlDataReader dataReader,Object obj)
        {
            if (!dataReader.HasRows)
            {
                return false;
            }
            dataReader.Read();
            FieldInfo[] fields = obj.GetType().GetFields();
            foreach (FieldInfo field in fields)
            {
                if (field.Name.Equals("ID"))
                {
                    continue;
                }
                SetFieldValue(obj, field,dataReader[field.Name]);
            }
            dataReader.Close();
            return true;
        }

        public static void SetFieldValue(Object obj, FieldInfo field,Object value)
        {
            switch (field.FieldType.FullName)
            {
                case "System.Decimal":
                    field.SetValue(obj, decimal.Parse(value.ToString()));
                    break;
                case "System.String":
                    field.SetValue(obj, value.ToString());
                    break;
                case "System.Char":
                    field.SetValue(obj, Convert.ToChar(value));
                    break;
                case "System.Guid":
                    field.SetValue(obj, value);
                    break;
                case "System.Int16":
                    field.SetValue(obj, Convert.ToInt16(value));
                    break;
                case "System.Int32":
                    field.SetValue(obj, int.Parse(value.ToString()));
                    break;
                case "System.Int64":
                    field.SetValue(obj, Convert.ToInt64(value));
                    break;
                case "System.Byte[]":
                    field.SetValue(obj, Convert.ToByte(value));
                    break;
                case "System.Boolean":
                    field.SetValue(obj, Convert.ToBoolean(value));
                    break;
                case "System.Double":
                    field.SetValue(obj, Convert.ToDouble(value.ToString()));
                    break;
                case "System.DateTime":
                    field.SetValue(obj, value ?? Convert.ToDateTime(value));
                    break;
                default:
                    throw new Exception("类型不匹配:" + field.GetType().FullName);
            }
        }

        public static List<FieldAttribute> GetFieldAttributes(Object obj)
        {
            List<FieldAttribute> attributes = new List<FieldAttribute>();
            Type t = obj.GetType();
            FieldInfo[] fields = t.GetFields();
            foreach (FieldInfo item in fields)
            {
                FieldAttribute attribute = new FieldAttribute(obj, item);
                if (attribute != null)
                {
                    attributes.Add(attribute);
                }
            }
            return attributes;
        }
    }
}