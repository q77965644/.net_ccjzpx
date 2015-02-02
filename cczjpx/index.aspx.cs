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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Pageload();
            }
        }

        protected void Pageload()
        {
            DataTable dt = new DataTable();
            str_code(dt);
        }

        /// <summary>
        /// 绑定新闻内容
        /// </summary>
        /// <param name="dt">数据源</param>
        /// <param name="strPage">页名称 例：newslist.aspx</param>
        /// <returns>拼接成的html代码</returns>
        protected string bind_news(DataTable dt, string strPage)
        {
            if (dt.Rows.Count > 0)
            {
                StringBuilder Html = new StringBuilder();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Html.Append("<li>");
                    Html.Append("<img src=\"images/arrow02.gif\">&nbsp;<a target=\"_blank\" href=\"" + strPage + "?id=" + "记录ID" + "\" title=\"" + "文章标题" + "\">" + "文章标题" + "</a>");
                    Html.Append("</li>");
                }
                return Html.ToString();
            }
            else
            {
                return "<li><img src=\"images/arrow02.gif\">&nbsp;<a href=\"#\" title=\"该栏目暂无内容\">该栏目暂无内容</a></li>";
            }
        }

        /// <summary>
        /// 绑定友情链接
        /// </summary>
        /// <param name="dt">数据源</param>
        protected void bind_Links(DataTable dt)
        {
            if (dt.Rows.Count > 0)
            {
                StringBuilder html = new StringBuilder();
                html.Append("<li>");
                html.Append("<a href=\"" + "链接" + "\"><img src=\"" + "图片地址" + "\" /></a>");
                html.Append("</li>");
                Links.InnerHtml = html.ToString();
            }
        }

        /// <summary>
        /// 绑定首页三个图片列表
        /// </summary>
        /// <param name="dt">数据源</param>
        protected void bind_index_img_list(DataTable dt)
        {
            if (dt.Rows.Count > 0)
            {
                StringBuilder html = new StringBuilder();
                html.Append("<td>");
                html.Append("<img src=\"" + "图片地址" + "\">");
                html.Append("</td>");
                index_img_list.InnerHtml = html.ToString();
            }
        }

        /// <summary>
        /// 全局变量 首页幻灯片列表
        /// </summary>
        public string code_imglist;

        /// <summary>
        /// 绑定首页幻灯片
        /// </summary>
        /// <param name="dt">数据源</param>
        public void str_code(DataTable dt)
        {
            if (dt.Rows.Count > 0)
            {
                StringBuilder code = new StringBuilder();
                code.Append("[");
                code.Append("{ \"img\": \"images/0510000052C4D8386714C0314E07D347.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/0510000052C4DA596714C0318D0856B8.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/0510000052B3F93E6714C031680C0ED1.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/05100000523FEFF56714C00E5C08C4C6.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/05100000528F28356714C0318609779F.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/0510000052B8F2896714C031F4094DE4.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/05100000529409176714C03134023DB3.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/0510000052B108766714C031B70E65E6.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/051000005258B54A6714C00F0903829E.jpg\", \"title\": \"\", \"url\": \"\" }");
                code.Append("]");
                code_imglist = code.ToString();
            }
            else
            {
                StringBuilder code = new StringBuilder();
                code.Append("[");
                code.Append("{ \"img\": \"images/0510000052C4D8386714C0314E07D347.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/0510000052C4DA596714C0318D0856B8.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/0510000052B3F93E6714C031680C0ED1.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/05100000523FEFF56714C00E5C08C4C6.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/05100000528F28356714C0318609779F.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/0510000052B8F2896714C031F4094DE4.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/05100000529409176714C03134023DB3.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/0510000052B108766714C031B70E65E6.jpg\", \"title\": \"\", \"url\": \"\" },");
                code.Append("{ \"img\": \"images/051000005258B54A6714C00F0903829E.jpg\", \"title\": \"\", \"url\": \"\" }");
                code.Append("]");
                code_imglist = code.ToString();
            }
        }

    }
}