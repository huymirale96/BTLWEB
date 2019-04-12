using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WEBNC.Backend
{
	public partial class Logout : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Session["ten_taikhoan"] = null;
			Session["ma_taikhoan"] = null;
			Session["ma_quyen"] = null;
			Session["ma_nhanvien"] = null;
			Session["ma_khachang"] = null;
			Response.Redirect("http://localhost:59209/");
		}
	}
}