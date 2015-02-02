using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace cczjpx
{
    public class gTypeDAL
    {
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