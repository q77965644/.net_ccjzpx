﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace cczjpx.ht.gType
{
    public partial class edit : System.Web.UI.Page
    {
        gtype mod = new gtype();
        gTypeDAL dal = new gTypeDAL();
        private string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = DTRequest.GetQueryString("id");

            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(id))
                {
                    GetShow();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(id))
            {
                if (update() > 0)
                    ScriptHandler.AlertAndRedirect("提交成功", "list.aspx");
                else
                    ScriptHandler.AlertAndRedirect("提交过程中发生错误", "edit.aspx");
            }

            else
            {
                if (add() > 0)
                    ScriptHandler.AlertAndRedirect("提交成功", "list.aspx");
                else
                    ScriptHandler.AlertAndRedirect("提交过程中发生错误", "edit.aspx");
            }
        }

        private void GetShow()
        {
            DataTable dt = dal.GetList(id);
            if (dt != null)
            {
                txt_title.Text = dt.Rows[0]["TypeName"].ToString();
            }
        }

        private int update()
        {
            mod.Id = Convert.ToInt32(id);
            mod.TypeName = txt_title.Text;
            return dal.Update(mod);
        }

        private int add()
        {
            mod.TypeName = txt_title.Text;
            return dal.Add(mod);
        }


    }
}