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

        public ORMSupport setId(String ID)
        {
            this.ID = ID;
            return this;
        }

        public int CreateTable()
        {
            if (SqlHelper.ExistTable(ORMUtils.GetTableName(this)))
            {
                return 0;
            }
            String create = ORMFactory.BuildCreateSql(this);
            return SqlHelper.ExecuteNonQuery(create);
        }

        public virtual int Save()
        {
            SqlParameter[] parameters;
            String insert = ORMFactory.BuildInsertSql(this, out parameters);
            return SqlHelper.ExecuteNonQuery(insert, parameters);
        }

        public int Delete()
        {
            if (ID.Length == 0)
            {
                return 0;
            }
            SqlParameter parameter;
            String delete = ORMFactory.BuildDeleteSql(this, ID, out parameter);
            return SqlHelper.ExecuteNonQuery(delete, new SqlParameter[] { parameter });
        }

        public int Update()
        {
            if (ID.Length == 0)
            {
                return 0;
            }
            SqlParameter[] parameters;
            String update = ORMFactory.BuildUpdateSql(this, ID, out parameters);
            return SqlHelper.ExecuteNonQuery(update, parameters);
        }

        public bool Find()
        {
            if (ID.Length == 0)
            {
                return false;
            }
            SqlParameter[] parameters;
            String find = ORMFactory.BuildFindSql(this, ID, out parameters);
            SqlDataReader dataReader = SqlHelper.ExecuteReader(find, parameters);
            return ORMUtils.SetModelValue(dataReader, this);
        }

        public static List<T> Select<T>(Where where) where T : class, new()
        {
            String whereStr = "";
            SqlParameter[] parameters = null;
            if (where != null)
            {
                whereStr = where.Build(out parameters);
            }
            String select = String.Format("select * from {0} {1}", ORMUtils.GetTableName(typeof(T)), whereStr);
            SqlDataReader dataReader = SqlHelper.ExecuteReader(select, parameters);
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
                    ORMUtils.SetFieldValue(t, f, dataReader[f.Name]);
                }
                list.Add(t);
            }
            dataReader.Close();
            return list;
        }
    }
}
