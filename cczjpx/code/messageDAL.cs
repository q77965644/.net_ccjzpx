using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace cczjpx
{
    public class messageDAL
    {
        public DataTable GetListByTop(int topNum,string top)
        {
             string sql ="";
            if(top !="")
                sql = "select top" + topNum + " ID,Title,CreatTime,gtype.TypeName,message.IsDelet  from message,gtype where message.TypeID=gtype.Id and IsDelete='0' and message.top='"+top+"'";
            else
                sql = "select top" + topNum + " ID,Title,CreatTime,gtype.TypeName,message.IsDelet  from message,gtype where message.TypeID=gtype.Id and IsDelete='0' ";
            

            return DbHelperMySQL.Query(sql).Tables[0];
        }

        public int Add(message mod)
        {
            string sql = "insert into message(ID,Title,CreatTime,content)value('" + Guid.NewGuid().ToString() + "','" + mod.Title +"','" + mod.DateTime + "','" + mod.Content+"')";
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