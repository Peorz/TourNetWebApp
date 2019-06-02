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

        public static SqlConnection GetIntance()
        {
            if (connect == null)
            {
                throw new Exception("未配置数据库连接字符串！");
            }
            if (sqlConnection == null)
            {
                sqlConnection = new SqlConnection(connect);
                sqlConnection.Open();
            }
            if (sqlConnection.State == ConnectionState.Closed)
            {
                sqlConnection.Open();
            }
            return sqlConnection;
        }

        /**
         * 多用于执行增加，删除，修改数据。返回受影响的行数。当select操作时，返回-1
         */
        public static int ExecuteNonQuery(String sql)
        {
            SqlCommand cmd = new SqlCommand(sql, GetIntance());
            return cmd.ExecuteNonQuery();
        }

        /**
        * 多用于得到的返回结果为一个值的情况(count函数、sun函数等)
        */
        public static Object ExecuteScalar(String sql)
        {
            SqlCommand cmd = new SqlCommand(sql, GetIntance());
            return cmd.ExecuteScalar();
        }

        /**
        * 返回类型为SqlDataReader
        */
        public static SqlDataReader ExecuteReader(String sql)
        {
            SqlCommand cmd = new SqlCommand(sql, GetIntance());
            return cmd.ExecuteReader();
        }

        public static bool ExistTable(String tableName)
        {
            int result = Convert.ToInt32(ExecuteScalar(String.Format("SELECT Count(*) FROM sysobjects WHERE name='{0}'", tableName)));
            return result == 0 ? false : true;
        }
    }
}