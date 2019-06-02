using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.Data.SqlClient;
using System.Collections;

namespace TourWebApp
{
    public class ORMSupport
    {
        [Colmun(PrimaryKey = true, Type = "varchar(255)")]
        public String ID;

        public ORMSupport()
        {
            ID = UUID.Get("");
        }

        public int CreateTable()
        {
            if (SqlHelper.ExistTable(ORMUtils.GetTableName(this)))
            {
                return 0;
            }
            Type t = this.GetType();
            FieldInfo[] fields = t.GetFields();
            StringBuilder sql = new StringBuilder();
            Hashtable fieldMap;
            Hashtable colmunMap;
            ORMUtils.GetColmunInfo(this, out fieldMap, out colmunMap);
            foreach (String key in fieldMap.Keys)
            {
                FieldInfo field = fieldMap[key] as FieldInfo;
                Colmun colmun = colmunMap[key] as Colmun;
                String restrain = "";
                if (colmun.PrimaryKey)
                {
                    restrain = "primary key";
                }
                sql.Append(String.Format(" {0} {1} {2} ,", field.Name, colmun.Type, restrain));
            }
            sql.Length = sql.Length - 2;
            String create = String.Format("create table {0}({1})", ORMUtils.GetTableName(this), sql.ToString());
            SLog.Out.WriteLine(create);
            return SqlHelper.ExecuteNonQuery(create);
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
            if (ID == null || ID.Length == 0)
            {
                return 0;
            }
            String sql = String.Format("delete from {0} where ID = '{1}'", ORMUtils.GetTableName(this), ID);
            SLog.Out.WriteLine(sql);
            return SqlHelper.ExecuteNonQuery(sql);
        }

        public int Update()
        {
            if (ID == null || ID.Length == 0)
            {
                return 0;
            }
            Type t = this.GetType();
            StringBuilder sql = new StringBuilder();
            FieldInfo[] fields = t.GetFields();
            foreach (FieldInfo f in fields)
            {
                if (f.Name.Equals("ID"))
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
            String update = String.Format("update {0} set {1} where ID = '{2}'", ORMUtils.GetTableName(this), sql.ToString(), ID);
            SLog.Out.WriteLine(update);
            return SqlHelper.ExecuteNonQuery(update);
        }

        public bool Find()
        {
            if (ID == null || ID.Length == 0)
            {
                return false;
            }
            String sql = String.Format("select * from {0} where ID = '{1}'", ORMUtils.GetTableName(this), ID);
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
                if (f.Name.Equals("ID"))
                {
                    continue;
                }
                ORMUtils.SetModelValue(this, f, dataReader[f.Name]);
            }
            return false;
        }

        public ORMSupport setId(String ID)
        {
            this.ID = ID;
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
            Object uuid = t.GetField("ID").GetValue(obj);
            if (uuid == null)
            {
                return 0;
            }
            String sql = String.Format("delect from {0} where ID = '{1}'", ORMUtils.GetTableName(obj), uuid.ToString());
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
