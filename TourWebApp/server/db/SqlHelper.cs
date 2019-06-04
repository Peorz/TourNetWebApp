using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace TourWebApp
{
    public class SqlHelper
    {
        private static String connect = null;
        private static SqlConnection sqlConnection = null;

        public static void Config(String str)
        {
            connect = str;
        }

        public static void Config(String server, String dataBase)
        {
            connect = String.Format("Data Source={0};Initial Catalog={1};Integrated Security=True", server, dataBase);
        }

        public static bool Verify()
        {
            if (connect == null)
            {
                SLog.Out.WriteLine("未配置数据库连接字符串！");
                return false;
            }
            if (sqlConnection == null)
            {
                return false;
            }
            if (sqlConnection.State != ConnectionState.Open)
            {
                return false;
            }
            return true;
        }

        public static SqlConnection GetIntance()
        {
            if (!Verify())
            {
                return null;
            }
            try
            {
                if (sqlConnection == null)
                {
                    sqlConnection = new SqlConnection(connect);
                    sqlConnection.Open();
                }
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
            }
            catch (Exception ex)
            {
                SLog.Out.WriteLine(ex.Message);
                return null;
            }
            return sqlConnection;
        }

        /**
         * 多用于执行增加，删除，修改数据。返回受影响的行数。当select操作时，返回-1
         */
        public static int ExecuteNonQuery(String sql)
        {
            if (!Verify())
            {
                return 0;
            }
            SqlCommand cmd = new SqlCommand(sql, GetIntance());
            return cmd.ExecuteNonQuery();
        }

        /**
        * 多用于得到的返回结果为一个值的情况(count函数、sun函数等)
        */
        public static Object ExecuteScalar(String sql)
        {
            if (!Verify())
            {
                return 0;
            }
            SqlCommand cmd = new SqlCommand(sql, GetIntance());
            return cmd.ExecuteScalar();
        }

        /**
        * 返回类型为SqlDataReader
        */
        public static SqlDataReader ExecuteReader(String sql)
        {
            if (!Verify())
            {
                return null;
            }
            SqlCommand cmd = new SqlCommand(sql, GetIntance());
            return cmd.ExecuteReader();
        }

        public static bool ExistTable(String tableName)
        {
            if (!Verify())
            {
                return false;
            }
            int result = Convert.ToInt32(ExecuteScalar(String.Format("SELECT Count(*) FROM sysobjects WHERE name='{0}'", tableName)));
            return result == 0 ? false : true;
        }
    }
}