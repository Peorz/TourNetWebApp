using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data.SqlClient;

namespace TourWebApp
{
    public class ORMFactory
    {
        public static String BuildCreateSql(Object obj)
        {
            StringBuilder create = new StringBuilder();
            create.Append(String.Format("create table {0} (", ORMUtils.GetTableName(obj)));
            List<FieldAttribute> attributes = ORMUtils.GetFieldAttributes(obj);
            foreach (FieldAttribute attribute in attributes)
            {
                String restrain = "";
                if (attribute.Colmun.PrimaryKey)
                {
                    restrain = "primary key";
                }
                String col = String.Format("{0} {1} {2}, ", attribute.Field.Name, attribute.Colmun.Type, restrain);
                create.Append(col);
            }
            create.Length = create.Length - 2;
            create.Append(")");
            return create.ToString();
        }

        public static String BuildInsertSql(Object obj, out SqlParameter[] parameters)
        {
            StringBuilder clomun = new StringBuilder("(");
            StringBuilder value = new StringBuilder("values(");
            List<FieldAttribute> attributes = ORMUtils.GetFieldAttributes(obj);
            parameters = new SqlParameter[attributes.Count];
            for (int i = 0; i < attributes.Count; i++)
            {
                FieldAttribute attribute = attributes[i];
                clomun.Append(String.Format("{0} , ", attribute.Field.Name));
                String paramName = String.Format("@{0}", attribute.Field.Name);
                value.Append(String.Format("{0} , ", paramName));
                parameters[i] = new SqlParameter(paramName, attribute.Value);
            }
            clomun.Length = clomun.Length - 2;
            clomun.Append(")");
            value.Length = value.Length - 2;
            value.Append(")");
            String insert = String.Format("insert into {0} {1} {2}", ORMUtils.GetTableName(obj),
                clomun.ToString(), value.ToString());
            return insert;
        }

        public static String BuildDeleteSql(Object obj, String ID, out SqlParameter parameter)
        {
            String paramName = "@ID";
            parameter = new SqlParameter(paramName, ID);
            return String.Format("delete from {0} where ID = {1}", ORMUtils.GetTableName(obj), paramName);
        }

        public static String BuildUpdateSql(Object obj, String ID, out SqlParameter[] parameters)
        {
            StringBuilder set = new StringBuilder();
            List<FieldAttribute> attributes = ORMUtils.GetFieldAttributes(obj);
            parameters = new SqlParameter[0];
            List<SqlParameter> listParam = parameters.ToList<SqlParameter>();
            for (int i = 0; i < attributes.Count; i++)
            {
                FieldAttribute attribute = attributes[i];
                if (attribute.Field.Name.Equals("ID"))
                {
                    continue;
                }
                if (ORMUtils.IsDefaultValue(obj, attribute.Field))
                {
                    continue;
                }
                String paramName = String.Format("@{0}", attribute.Field.Name);
                listParam.Add(new SqlParameter(paramName, attribute.Value));
                set.Append(String.Format("{0} = {1} , ", attribute.Field.Name, paramName));
            }
            set.Length = set.Length - 2;
            String whereParamName = "@ID";
            listParam.Add(new SqlParameter(whereParamName, ID));
            parameters = listParam.ToArray<SqlParameter>();
            return String.Format("update {0} set {1} where ID = {2}", ORMUtils.GetTableName(obj), set.ToString(), whereParamName); ;
        }

        public static String BuildFindSql(Object obj, String ID, out SqlParameter[] parameters)
        {
            String idParamName = "@ID";
            String find = String.Format("select * from {0} where ID = {1}", ORMUtils.GetTableName(obj), idParamName);
            parameters = new SqlParameter[] { new SqlParameter(idParamName, ID) };
            return find;
        }
    }
}