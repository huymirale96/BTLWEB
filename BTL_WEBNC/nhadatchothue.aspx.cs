using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BTL_WEBNC
{
	public partial class nhadatchothue : System.Web.UI.Page
	{
		SqlConnection cnn = mylibrary.connectDatabase();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				getdata();
			}
		}
		protected void getdata()
		{
			SqlDataAdapter da = new SqlDataAdapter("IUD_BaiViet_Order", cnn);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@action", "select_offset_thue");
			DataTable dt = new DataTable();
			da.Fill(dt);
			ListViewthue.DataSource = dt;
			ListViewthue.DataBind();

			SqlDataAdapter top4 = new SqlDataAdapter("IUD_BaiViet_Order", cnn);
			top4.SelectCommand.CommandType = CommandType.StoredProcedure;
			top4.SelectCommand.Parameters.AddWithValue("@action", "select_nhadatchothue");
			DataTable dt4 = new DataTable();
			top4.Fill(dt4);
			ListView1.DataSource = dt4;
			ListView1.DataBind();
		}
	}
}