using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.Data.SqlClient;

namespace TourWebApp
{
    public class ORMSupport
    {
        public String id;

        public ORMSupport()
        {
            id = UUID.Get("");
        }

        public virtual int Save()
        {
            Type t = this.GetType();
            StringBuilder field = new StringBuilder("(");
            StringBuilder value = new StringBuilder("values(");
            FieldInfo[] fields = t.GetFields();
            foreach (FieldInfo f in fields)
            {
                field.Append(f.Name);
                field.Append(" , ");
                value.Append(ConvertSqlString(f));
                value.Append(" , ");
            }
            field.Length = field.Length - 2;
            field.Append(")");
            value.Length = value.Length - 2;
            value.Append(")");
            String insert = String.Format("insert into {0} {1} {2}", GetTableName(), field.ToString(), value.ToString());
            SLog.Out.WriteLine(insert);
            return SqlHelper.ExecuteNonQuery(insert);
        }

        public int Delete()
        {
            if (id == null || id.Length == 0)
            {
                return 0;
            }
            String sql = String.Format("delete from {0} where id = '{1}'", GetTableName(), id);
            SLog.Out.WriteLine(sql);
            return SqlHelper.ExecuteNonQuery(sql);
        }

        public static void DelAll(Object obj)
        {
            Type t = obj.GetType();
            String sql = String.Format("delect from {0}", t.Name.ToLower());
            SLog.Out.WriteLine(sql);
        }

        public static int DelById(Object obj)
        {
            Type t = obj.GetType();
            Object uuid = t.GetField("id").GetValue(obj);
            if (uuid == null)
            {
                return 0;
            }
            String sql = String.Format("delect from {0} where id = '{1}'", t.Name.ToLower(), uuid.ToString());
            SLog.Out.WriteLine(sql);
            return SqlHelper.ExecuteNonQuery(sql);
        }

        public int Update()
        {
            if (id == null || id.Length == 0)
            {
                return 0;
            }
            Type t = this.GetType();
            StringBuilder sql = new StringBuilder();
            FieldInfo[] fields = t.GetFields();
            foreach (FieldInfo f in fields)
            {
                if (f.Name.Equals("id"))
                {
                    continue;
                }
                String sqlChild = ConvertSqlString(f);
                if (sqlChild.Equals("null"))
                {
                    continue;
                }
                sql.Append(f.Name);
                sql.Append(" = ");
                sql.Append(sqlChild);
                sql.Append(" , ");
            }
            sql.Length = sql.Length - 2;
            String update = String.Format("update {0} set {1} where id = '{2}'", GetTableName(), sql.ToString(), id);
            SLog.Out.WriteLine(update);
            return SqlHelper.ExecuteNonQuery(update);
        }

        public bool Find()
        {
            if (id == null || id.Length == 0)
            {
                return false;
            }
            String sql = String.Format("select * from {0} where id = '{1}'", GetTableName(), id);
            SLog.Out.WriteLine(sql);
            SqlDataReader dataReader = SqlHelper.ExecuteReader(sql);
            if (!dataReader.HasRows)
            {
                return false;
            }
            dataReader.Read();
            FieldInfo[] fields = this.GetType().GetFields();
            foreach (FieldInfo f in fields)
            {
                if (f.Name.Equals("id"))
                {
                    continue;
                }
                SetModelValue(this, f.Name, dataReader[f.Name].ToString());
            }
            return false;
        }

        public ORMSupport setId(String id)
        {
            this.id = id;
            return this;
        }

        /**
         *获得模型对应的表明
         */
        private String GetTableName()
        {
            return this.GetType().Name.ToLower();
        }

        /**
         *模型属性转换成 sql 合法字符串
         */
        private String ConvertSqlString(FieldInfo field)
        {
            Object obj = field.GetValue(this);
            if (obj == null)
            {
                return "null";
            }
            String sqlStr = obj.ToString();
            if (field.FieldType.Name.Equals("String") || field.FieldType.Name.Equals("DateTime"))
            {
                sqlStr = String.Format("'{0}'", field.GetValue(this));
            }
            return sqlStr;
        }

        /**
         * 反射设置属性值
         */
        private bool SetModelValue(Object obj, String fieldName, String value)
        {
            try
            {
                Type Ts = obj.GetType();
                object v = Convert.ChangeType(value, Ts.GetField(fieldName).FieldType);
                Ts.GetField(fieldName).SetValue(obj, v);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
