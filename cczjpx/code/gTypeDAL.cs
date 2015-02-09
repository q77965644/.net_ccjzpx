using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;
namespace cczjpx
{
    public class gTypeDAL
    {
        public DataSet GetNewsList(int StartIndex,int PageSize)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ID,TypeName ");
            strSql.Append("   from gtype");
            strSql.Append("  where IsDelete='0' ");
            return DbHelperMySQL.Query(strSql.ToString(), StartIndex, PageSize);
        }

        public int GetCount()
        {
            int intCount=0;
            string sql = "select count(*) as co from gtype  where IsDelete='0' ";

            MySqlDataReader dr = DbHelperMySQL.ExecuteReader(sql);
            if (dr.Read())
                intCount = Int32.Parse(dr["co"].ToString());

            dr.Close();

            return intCount;
        }


        public DataTable GetList()
        {
            string sql = "select ID,TypeName  from gtype where IsDelete='0'";
            return DbHelperMySQL.Query(sql).Tables[0];
        }

        public DataTable GetList(string id)
        {
            string sql = "select ID,TypeName  from gtype where IsDelete='0' and id="+id+"";
            return DbHelperMySQL.Query(sql).Tables[0];
        }

        public int Add(gtype mod)
        {
            string sql = "insert into gtype(TypeName,IsDelete)value('" + mod.TypeName + "','0')";
            return DbHelperMySQL.ExecuteMySql(sql);
        }

        public int Update(gtype mod)
        {
            string sql = "update gtype set TypeName='"+mod.TypeName+"' where id="+mod.Id+"" ;
            return DbHelperMySQL.ExecuteMySql(sql);
        }

        public int Delete(int id)
        {
            string sql = "update gtype set IsDelete='1' where id=" + id + "";
            return DbHelperMySQL.ExecuteMySql(sql);
        }
    }
}