using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cczjpx
{
    public partial class viewnews : System.Web.UI.Page
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
            con_title.InnerHtml = "";
            content.InnerHtml = "";
        }
    }
}