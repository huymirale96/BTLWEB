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
	public partial class Duan : System.Web.UI.Page
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
			SqlDataAdapter topDA4 = new SqlDataAdapter("IUD_DuAn", cnn);
			topDA4.SelectCommand.CommandType = CommandType.StoredProcedure;
			topDA4.SelectCommand.Parameters.AddWithValue("@action", "select_top4");
			DataTable dtDA4 = new DataTable();
			topDA4.Fill(dtDA4);
			ListView3.DataSource = dtDA4;
			ListView3.DataBind();

			SqlDataAdapter select_offset = new SqlDataAdapter("IUD_DuAn", cnn);
			select_offset.SelectCommand.CommandType = CommandType.StoredProcedure;
			select_offset.SelectCommand.Parameters.AddWithValue("@action", "select_offset");
			DataTable dt = new DataTable();
			select_offset.Fill(dt);
			ListView1.DataSource = dt;
			ListView1.DataBind();
		}
	}
}