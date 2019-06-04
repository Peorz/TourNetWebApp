using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Collections;

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

        /**
         *模型属性转换成 sql 合法字符串
         */
        public static String ConvertSqlString(Object obj, FieldInfo field)
        {
            Object value = field.GetValue(obj);
            if (value == null)
            {
                return "null";
            }
            String sqlStr = value.ToString();
            switch (field.FieldType.FullName)
            {
                case "System.Decimal":
                    sqlStr = String.Format("'{0}'", field.GetValue(obj));
                    break;
                case "System.String":
                    field.SetValue(obj, value.ToString());
                    sqlStr = String.Format("'{0}'", field.GetValue(obj));
                    break;
                case "System.Char":
                    sqlStr = String.Format("'{0}'", field.GetValue(obj));
                    break;
                case "System.Guid":
                    //field.SetValue(obj, value);
                    break;
                case "System.Int16":
                    break;
                case "System.Int32":
                    break;
                case "System.Int64":
                    break;
                case "System.Byte[]":
                    break;
                case "System.Boolean":
                    break;
                case "System.Double":
                    break;
                case "System.DateTime":
                    sqlStr = String.Format("'{0}'", Convert.ToDateTime(value));
                    break;
                default:
                    throw new Exception("类型不匹配:" + field.GetType().FullName);
            }
            return sqlStr;
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

        /**
         * 反射设置属性值
         */
        public static void SetModelValue(Object obj, FieldInfo field, Object value)
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

        public static void GetColmunInfo(Object obj, out Hashtable fieldMap, out Hashtable colmunMap)
        {
            fieldMap = new Hashtable();
            colmunMap = new Hashtable();
            Type t = obj.GetType();
            FieldInfo[] fields = t.GetFields();
            foreach (FieldInfo f in fields)
            {
                Object[] attrs = f.GetCustomAttributes(false);
                foreach (Object attrItem in attrs)
                {
                    if (!(attrItem is Colmun))
                    {
                        continue;
                    }
                    Colmun colmun = attrItem as Colmun;
                    if (colmun.Ignore)
                    {
                        continue;
                    }
                    if (colmun.Type == null)
                    {
                        continue;
                    }
                    fieldMap.Add(f.Name, f);
                    colmunMap.Add(f.Name, attrItem);
                }
            }
        }

        public static FieldAttribute[] GetFieldAttributes(Object obj)
        {
            return null;
        }

        ///**
        // * 反射设置属性值
        // */
        //public static bool SetTValue(Object obj, String fieldName, String value)
        //{
        //    try
        //    {
        //        Type Ts = obj.GetType();
        //        object v = Convert.ChangeType(value, Ts.GetField(fieldName).FieldType);
        //        Ts.GetField(fieldName).SetValue(obj, v);
        //        return true;
        //    }
        //    catch
        //    {
        //        return false;
        //    }
        //}
    }
}