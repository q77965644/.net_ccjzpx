using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
namespace cczjpx
{
    public class gTypeDAL
    {

        /// <summary>
        /// 获取新闻列表
        /// </summary>
        public DataSet GetNewsList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select a.NewsID,a.NewsTitle,a.NewsContent,a.CreateTime,a.UpdateTime,a.clicknum,");
            strSql.Append("b.UserLastName as creater,c.UserLastName as updater");
            strSql.Append("  from T_B_NewsInfo a,T_U_UserInfo b,T_U_UserInfo c");
            strSql.Append("  where a.Creator=b.UserID and a.UpdateUserID=c.UserID and a.isdelete='0' ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" " + strWhere);
            }
            recordCount = Convert.ToInt32(DbHelperMySQL.GetSingle(PagingHelper.CreateCountingSql(strSql.ToString())));
            return DbHelperMySQL.Query(PagingHelper.CreatePagingSql(recordCount, pageSize, pageIndex, strSql.ToString(), filedOrder));
        }

        public DataTable GetList()
        {
            string sql = "select ID,TypeName  from gtype where IsDelete='0'";
            return DbHelperMySQL.Query(sql).Tables[0];
        }

        public int Add(gtype mod)
        {
            string sql = "insert into gtype(TypeName)value('"+mod.TypeName+"')";
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