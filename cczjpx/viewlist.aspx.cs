using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace cczjpx
{
    public partial class viewlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PageLoad();
            }
        }

        protected void PageLoad()
        {

        }

        protected void bind_list(DataTable dt)
        {
            if (dt.Rows.Count > 0)
            {
                StringBuilder html = new StringBuilder();
                html.Append("<li>");
                html.Append("<img src=\"images/arrow02.gif\" />");
                html.Append("<div class=\"list_title\">");
                html.Append("<a href=\"#\">新闻标题</a></div>");
                html.Append("<div class=\"list_time\">");
                html.Append("2015-01-01</div>");
                html.Append("</li>");
                list.InnerHtml = html.ToString();
            }
            else
                list.InnerHtml = "<li><img src=\"images/arrow02.gif\" /><div class=\"list_title\"><a href=\"#\">暂无内容</a></div><div class=\"list_time\">0000-00-00</div></li>";
        }
    }
}