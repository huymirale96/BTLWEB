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
    public partial class _Default : Page
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
			SqlDataAdapter top4 = new SqlDataAdapter("IUD_BaiViet", cnn);
			top4.SelectCommand.CommandType = CommandType.StoredProcedure;
			top4.SelectCommand.Parameters.AddWithValue("@action", "select_new");
			DataTable dt4 = new DataTable();
			top4.Fill(dt4);
			ListView1.DataSource = dt4;
			ListView1.DataBind();

			SqlDataAdapter topTT4 = new SqlDataAdapter("IUD_BaiViet", cnn);
			topTT4.SelectCommand.CommandType = CommandType.StoredProcedure;
			topTT4.SelectCommand.Parameters.AddWithValue("@action", "select_new");
			DataTable dtTT4 = new DataTable();
			topTT4.Fill(dtTT4);
			ListView2.DataSource = dtTT4;
			ListView2.DataBind();

			SqlDataAdapter topDA4 = new SqlDataAdapter("IUD_DuAn", cnn);
			topDA4.SelectCommand.CommandType = CommandType.StoredProcedure;
			topDA4.SelectCommand.Parameters.AddWithValue("@action", "select_top4");
			DataTable dtDA4 = new DataTable();
			topDA4.Fill(dtDA4);
			ListView3.DataSource = dtDA4;
			ListView3.DataBind();
		}
	}
}