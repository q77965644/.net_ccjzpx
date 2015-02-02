
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace IntegrationPlatform_WebApp.NewPage
{
    public partial class head : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void LoginOut_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.parent.location='login.aspx';</script>");
        }
    }
}