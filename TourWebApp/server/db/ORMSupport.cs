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
                value.Append(ORMUtils.ConvertSqlString(this, f));
                value.Append(" , ");
            }
            field.Length = field.Length - 2;
            field.Append(")");
            value.Length = value.Length - 2;
            value.Append(")");
            String insert = String.Format("insert into {0} {1} {2}", ORMUtils.GetTableName(this), field.ToString(), value.ToString());
            SLog.Out.WriteLine(insert);
            return SqlHelper.ExecuteNonQuery(insert);
        }

        public int Delete()
        {
            if (id == null || id.Length == 0)
            {
                return 0;
            }
            String sql = String.Format("delete from {0} where id = '{1}'", ORMUtils.GetTableName(this), id);
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
                if (ORMUtils.IsDefaultValue(this, f))
                {
                    continue;
                }
                String sqlChild = ORMUtils.ConvertSqlString(this, f);
                sql.Append(f.Name);
                sql.Append(" = ");
                sql.Append(sqlChild);
                sql.Append(" , ");
            }
            if (sql.Length == 0)
            {
                return 0;
            }
            sql.Length = sql.Length - 2;
            String update = String.Format("update {0} set {1} where id = '{2}'", ORMUtils.GetTableName(this), sql.ToString(), id);
            SLog.Out.WriteLine(update);
            return SqlHelper.ExecuteNonQuery(update);
        }

        public bool Find()
        {
            if (id == null || id.Length == 0)
            {
                return false;
            }
            String sql = String.Format("select * from {0} where id = '{1}'", ORMUtils.GetTableName(this), id);
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
                ORMUtils.SetModelValue(this, f, dataReader[f.Name]);
            }
            return false;
        }

        public ORMSupport setId(String id)
        {
            this.id = id;
            return this;
        }

        /**
         * 公用方法调用
         */
        public static void DelAll(Object obj)
        {
            Type t = obj.GetType();
            String sql = String.Format("delect from {0}", ORMUtils.GetTableName(obj));
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
            String sql = String.Format("delect from {0} where id = '{1}'", ORMUtils.GetTableName(obj), uuid.ToString());
            SLog.Out.WriteLine(sql);
            return SqlHelper.ExecuteNonQuery(sql);
        }

        public static List<T> Select<T>() where T : class, new()
        {
            String sql = String.Format("select * from {0}", ORMUtils.GetTableName(new T()));
            SqlDataReader dataReader = SqlHelper.ExecuteReader(sql);
            List<T> list = new List<T>();
            if (!dataReader.HasRows)
            {
                return list;
            }
            while (dataReader.Read())
            {
                T t = new T();
                FieldInfo[] fields = t.GetType().GetFields();
                foreach (FieldInfo f in fields)
                {
                    ORMUtils.SetModelValue(t, f, dataReader[f.Name]);
                }
                list.Add(t);
            }
            dataReader.Close();
            return list;
        }
    }
}
