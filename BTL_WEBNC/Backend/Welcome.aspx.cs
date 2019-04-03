using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WEBNC.Backend
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string quyen = Session["ma_quyen"].ToString();
            if (String.IsNullOrEmpty(quyen))
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}