using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;

namespace cczjpx
{
    public class messageDAL
    {
        public DataSet GetNewsList(int StartIndex, int PageSize, string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select message.ID,message.Title,message.CreatTime,gtype.TypeName,message.IsDelete ");
            strSql.Append("   from message,gType");
            strSql.Append("  where message.IsDelete='0' and gType.Id=message.TypeID " + strWhere + " ");
            return DbHelperMySQL.Query(strSql.ToString(), StartIndex, PageSize);
        }

        public int GetCount(string strWhere)
        {
            int intCount = 0;
            string sql = "select count(*) as co from message,gType  where message.IsDelete='0' and gType.Id=message.TypeID " + strWhere + "";

            MySqlDataReader dr = DbHelperMySQL.ExecuteReader(sql);
            if (dr.Read())
                intCount = Int32.Parse(dr["co"].ToString());

            dr.Close();

            return intCount;
        }


        public DataTable GetList()
        {
            string sql = "selectID,Title,CreatTime,gtype.TypeName,message.IsDelete  from message where IsDelete='0'";
            return DbHelperMySQL.Query(sql).Tables[0];
        }

        public DataTable GetList(string id)
        {
            string sql = "select ID,Title,CreatTime,gtype.TypeName,message.IsDelete  from message where IsDelete='0' and id=" + id + "";
            return DbHelperMySQL.Query(sql).Tables[0];
        }

        public DataTable GetListByTop(int topNum,string top)
        {
             string sql ="";
            if(top !="")
                sql = "select  ID,Title,CreatTime,gtype.TypeName,message.IsDelete  from message,gtype where message.TypeID=gtype.Id and IsDelete='0' and message.top='" + top + "'  by afield limit 0, " + topNum + " ";
            else
                sql = "select  ID,Title,CreatTime,gtype.TypeName,message.IsDelete  from message,gtype where message.TypeID=gtype.Id and IsDelete='0'  by afield limit 2, " + topNum + "";
            

            return DbHelperMySQL.Query(sql).Tables[0];
        }

        public int Add(message mod)
        {
            string sql = "insert into message(ID,Title,CreatTime,content,IsDelete)value('" + Guid.NewGuid().ToString() + "','" + mod.Title + "','" + mod.DateTime + "','" + mod.Content + "','0')";
            return DbHelperMySQL.ExecuteMySql(sql);
        }

        public int Update(message mod)
        {
            string sql = "update message set Title='" + mod.Title + "',content='" + mod.Content + "' where id=" + mod.Id + "";
            return DbHelperMySQL.ExecuteMySql(sql);
        }

        public int UpdateTop(string top,string id)
        {
            string sql = "update message set Top='" + top + "' where id=" + id + "";
            return DbHelperMySQL.ExecuteMySql(sql);
        }

        public int Delete(int id)
        {
            string sql = "update message set IsDelete='1' where id=" + id + "";
            return DbHelperMySQL.ExecuteMySql(sql);
        }
    }
}