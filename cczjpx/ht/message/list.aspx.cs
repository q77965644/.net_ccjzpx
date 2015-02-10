using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Collections;
using System.Data;

namespace cczjpx.ht.message
{
    public partial class list : System.Web.UI.Page
    {
        messageDAL dal = new messageDAL();
        ArrayList Al_PageNum;
        int PageSize;//每页显示数    
        int RecordCount;//总记录数
        int PageCount;//总页数
        int CurrentPage;//当前页
        protected void Page_Load(object sender, EventArgs e)
        {
            PageSize = 15;
            if (!Page.IsPostBack)
            {
                //绑定
                page();
                ListBind();
            }
        }


        public void ListBind()// GridView绑定
        {
            int StartIndex;
            StartIndex = CurrentPage * PageSize;


            rptList1.DataSource = dal.GetNewsList(StartIndex, PageSize,"");
            rptList1.DataBind();
            lbnNextPage.Enabled = true;
            lbnPrevPage.Enabled = true;
            BtnFirst.Enabled = true;
            BtnLast.Enabled = true;
            if (PageCount == 0)
            {
                lblCurrentPage.Text = "0";
                lbnNextPage.Enabled = false;
                lbnPrevPage.Enabled = false;
                BtnFirst.Enabled = false;
                BtnLast.Enabled = false;
            }
            else
            {
                if (CurrentPage == (PageCount - 1)) lbnNextPage.Enabled = false;
                if (CurrentPage == 0) lbnPrevPage.Enabled = false;
                lblCurrentPage.Text = (CurrentPage + 1).ToString();
            }
            Ddl_PageNumber.Text = lblCurrentPage.Text;
        }

        private void page()
        {

            RecordCount = dal.GetCount(""); ;
            PageCount = RecordCount / PageSize; //计算总共有多少页
            if (RecordCount % PageSize > 0)     //取整 
                PageCount = PageCount + 1;
            lblPageCount.Text = PageCount.ToString();
            lblRecordCount.Text = RecordCount.ToString();
            ViewState["PageCount"] = PageCount;
            CurrentPage = 0;
            ViewState["PageIndex"] = 0;

            Al_PageNum = new ArrayList();//绑定DROPDOWNLIST
            for (int i = 1; i <= PageCount; i++)   //从1开始循环，为了不出现0页码
                Al_PageNum.Add(i.ToString());
            if (Al_PageNum.Count == 0)
                Al_PageNum.Add("0");
            Ddl_PageNumber.DataSource = Al_PageNum;
            Ddl_PageNumber.DataBind();
        }

        public void Page_OnClick(Object sender, CommandEventArgs e)
        {
            CurrentPage = (int)ViewState["PageIndex"];
            PageCount = (int)ViewState["PageCount"];
            string cmd = e.CommandName;                 //判断cmd，以判定翻页方向

            switch (cmd)
            {
                case "next":
                    if (CurrentPage < (PageCount - 1)) CurrentPage++;
                    break;
                case "prev":
                    if (CurrentPage > 0) CurrentPage--;
                    break;
                case "Last":
                    CurrentPage = (PageCount - 1);
                    break;
                default:
                    CurrentPage = 0;
                    break;
            }

            ViewState["PageIndex"] = CurrentPage;
            ListBind();
        }

        public void PageNum_SelectIndexChanged(object sender, System.EventArgs e)
        {
            ViewState["PageIndex"] = int.Parse(Ddl_PageNumber.SelectedItem.Value) - 1;//保持不出现0页码
            PageSize = 15;
            CurrentPage = (int)ViewState["PageIndex"];
            PageCount = (int)ViewState["PageCount"];
            ListBind();
        }

        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent()
        {
            this.Load += new System.EventHandler(this.Page_Load);
            this.Ddl_PageNumber.SelectedIndexChanged += new System.EventHandler(this.PageNum_SelectIndexChanged);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect(Utils.CombUrlTxt("list.aspx", "keywords={0}",
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
                    string news_id = ((HiddenField)rptList1.Items[a].FindControl("hidId")).Value.ToString();
                    CheckBox cb = (CheckBox)rptList1.Items[a].FindControl("chkId");
                    if (cb.Checked)
                    {
                        dal.Delete(news_id);
                    }
                }
                ScriptHandler.AlertAndRedirect("批量删除成功", "list.aspx");
            }
            else
            {
                ScriptHandler.AlertAndRedirect("请至少选中一条记录", "list.aspx");
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
                    Response.Redirect("edit.aspx?id=" + _id + "");
                }
                else
                {
                    ScriptHandler.AlertAndRedirect("请选中一条记录", "list.aspx");
                }
            }
            else
            {
                ScriptHandler.AlertAndRedirect("请选中一条记录", "list.aspx");
            }
        }

        protected void btnTop_Click(object sender, EventArgs e)
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
                    if(dal.UpdateTop("1",_id)>0)
                    ScriptHandler.AlertAndRedirect("置顶成功", "list.aspx");
                    else
                     ScriptHandler.AlertAndRedirect("置顶失败", "list.aspx");
                }
                else
                {
                    ScriptHandler.AlertAndRedirect("请选中一条记录", "list.aspx");
                }
            }
            else
            {
                ScriptHandler.AlertAndRedirect("请选中一条记录", "list.aspx");
            }
        }
    }
}