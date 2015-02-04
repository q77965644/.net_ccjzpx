using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cczjpx.ht.gType
{
    public partial class list : System.Web.UI.Page
    {
        protected string keywords = string.Empty;
        protected int page;
        protected int pageSize;
        protected int totalCount;
        protected string menuId = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.keywords = DTRequest.GetQueryString("keywords");
            this.menuId = DTRequest.GetQueryString("menuId");
            this.pageSize = GetPageSize(15); //每页数量
            if (!Page.IsPostBack)
            {
                Session["SelectedStudentItem"] = null;
                getPower();
                RptBind(CombSqlTxt(this.keywords), " CreateTime desc");
            }
        }

        private void getPower()
        {
            Com.Qinhan.Library.IntegrationPlatform_Mod.user_data user = Session["user"] as Com.Qinhan.Library.IntegrationPlatform_Mod.user_data;
            if (user != null)
            {
                T_F_userRole model = helper.iuser_bll().GetRoleIdByUserId(user.UserID);
                int? role_id = model.roleId;
                var menu = helper.iuser_bll().GetMenuId(5, Convert.ToInt32(role_id));
                foreach (var item in menu)
                {
                    if (item.nodeId == 1)
                    {
                        btnAdd.Visible = true;
                    }
                    else if (item.nodeId == 3)
                    {
                        btnEdit.Visible = true;
                    }
                    else if (item.nodeId == 4)
                    {
                        btnDelete.Visible = true;
                    }
                }
            }
        }

        private void RptBind(string _strWhere, string _orderby)
        {

            this.page = DTRequest.GetQueryInt("page", 1);
            this.txtKeywords.Text = this.keywords;
            rptList1.DataSource = helper.inews_bll().GetNewsList(this.pageSize, this.page, _strWhere, _orderby, out this.totalCount);
            rptList1.DataBind();
            txtPageNum.Text = this.pageSize.ToString();
            string pageUrl = Utils.CombUrlTxt("news_list.aspx", "keywords={0}&page={1}",
                   this.keywords, "__id__");
            PageContent.InnerHtml = Utils.OutPageList(this.pageSize, this.page, this.totalCount, pageUrl, 8);
        }

        protected string CombSqlTxt(string _keywords)
        {
            StringBuilder strTemp = new StringBuilder();
            _keywords = _keywords.Replace("'", "");
            if (!string.IsNullOrEmpty(_keywords))
            {
                strTemp.Append(" and a.NewsTitle  like '%" + _keywords + "%'");
            }
            return strTemp.ToString();
        }

        private int GetPageSize(int _default_size)
        {
            int _pagesize;
            if (int.TryParse(Utils.GetCookie("news_page_size"), out _pagesize))
            {
                if (_pagesize > 0)
                {
                    return _pagesize;
                }
            }
            return _default_size;
        }

        protected void txtPageNum_TextChanged(object sender, EventArgs e)
        {
            int _pagesize;
            if (int.TryParse(txtPageNum.Text.Trim(), out _pagesize))
            {
                if (_pagesize > 0)
                {
                    Utils.WriteCookie("news_page_size", _pagesize.ToString(), 43200);
                }
            }
            Response.Redirect(Utils.CombUrlTxt("news_list.aspx", "keywords={0}",
                   this.keywords));
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect(Utils.CombUrlTxt("news_list.aspx", "keywords={0}",
                          this.txtKeywords.Text));
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int i = 0;
            string _id = string.Empty;
            foreach (RepeaterItem rpti in rptList1.Items)
            {
                CheckBox ckb = rpti.FindControl("chkId") as CheckBox;
                if (ckb.Checked)
                {
                    HiddenField hid = rpti.FindControl("hidId") as HiddenField;
                    _id = hid.Value.ToString() + "," + _id;
                    i++;
                }
            }
            if (i > 0)
            {
                if (_id.Length > 0)
                {
                    _id = _id.Remove(_id.LastIndexOf(","));
                }
                for (int a = 0; a < rptList1.Items.Count; a++)
                {
                    DateTime dt = Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                    string news_id = ((HiddenField)rptList1.Items[a].FindControl("hidId")).Value.ToString();
                    CheckBox cb = (CheckBox)rptList1.Items[a].FindControl("chkId");
                    if (cb.Checked)
                    {
                        helper.inews_bll().UpdateIsdelete(news_id, "1", dt);
                    }
                }
                ScriptHandler.AlertAndRedirect("批量删除成功", Utils.CombUrlTxt("news_list.aspx", "keywords={0}",
                    this.keywords));
            }
            else
            {
                ScriptHandler.AlertAndRedirect("请至少选中一条记录", "news_list.aspx");
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            int i = 0;
            string _id = string.Empty;
            foreach (RepeaterItem rpti in rptList1.Items)
            {
                CheckBox ckb = rpti.FindControl("chkId") as CheckBox;
                if (ckb.Checked)
                {
                    HiddenField hid = rpti.FindControl("hidId") as HiddenField;
                    _id = hid.Value.ToString() + "," + _id;
                    i++;
                }
            }
            if (i > 0)
            {
                if (_id.Length > 0)
                {
                    _id = _id.Remove(_id.LastIndexOf(","));
                }
                if (_id.Split(',').Length == 1)
                {
                    Response.Redirect("news_edit.aspx?action=" + Com.Qinhan.Library.Web.Handler.DTEnums.OperationEnum.Edit + "&newsid=" + _id + "");
                }
                else
                {
                    ScriptHandler.AlertAndRedirect("请选中一条记录", "news_list.aspx");
                }
            }
            else
            {
                ScriptHandler.AlertAndRedirect("请选中一条记录", "news_list.aspx");
            }
        }
    }
}