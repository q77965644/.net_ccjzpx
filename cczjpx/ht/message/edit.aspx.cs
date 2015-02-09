using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace cczjpx
{
    public partial class edit : System.Web.UI.Page
    {
        gTypeDAL gtypedal = new gTypeDAL();
        messageDAL dal = new messageDAL();
        message mod = new message();
        private string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = DTRequest.GetQueryString("id");
            DownList();
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(id))
                {
                    GetShow();
                }
            }
        }

        private void DownList()
        {
            ddlType.DataSource = gtypedal.GetList();
            ddlType.DataValueField = "id";
            ddlType.DataTextField = "TypeName";
            ddlType.DataBind();
            ddlType.Items.Add("--请选择--");
            ddlType.Items[this.ddlType.Items.Count - 1].Value = "";
            ddlType.SelectedIndex = this.ddlType.Items.Count - 1;
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
                txt_title.Text = dt.Rows[0]["Title"].ToString();
                txtContent.Value = dt.Rows[0]["Content"].ToString();
                ddlTop.SelectedValue = dt.Rows[0]["Top"].ToString();
                ddlType.SelectedValue = dt.Rows[0]["TypeID"].ToString();
            }
        }

        private int update()
        {
            mod.Id = id;
            mod.Title = txt_title.Text;
            mod.Content = txtContent.Value;
            mod.Type = ddlType.SelectedValue;
            mod.Top = ddlTop.SelectedValue;
            return dal.Update(mod);
        }

        private int add()
        {
            mod.Id = Guid.NewGuid().ToString();
            mod.Title = txt_title.Text;
            mod.Content = txtContent.Value;
            mod.Type = ddlType.SelectedValue;
            mod.Top = ddlTop.SelectedValue;
            return dal.Add(mod);
        }


    }
}
 