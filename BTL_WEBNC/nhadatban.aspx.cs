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
	public partial class nhadatban : System.Web.UI.Page
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
			SqlDataAdapter top4 = new SqlDataAdapter("IUD_BaiViet_Order", cnn);
			top4.SelectCommand.CommandType = CommandType.StoredProcedure;
			top4.SelectCommand.Parameters.AddWithValue("@action", "select_nhadatban");
			DataTable dt4 = new DataTable();
			top4.Fill(dt4);
			ListView1.DataSource = dt4;
			ListView1.DataBind();

			SqlDataAdapter da = new SqlDataAdapter("IUD_BaiViet_Order", cnn);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@action", "select_offset_ban");
			DataTable dt = new DataTable();
			da.Fill(dt);
			ListView2.DataSource = dt;
			ListView2.DataBind();
		}
		protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
		{
			SqlDataAdapter da = new SqlDataAdapter("IUD_BaiViet_Order", cnn);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			if (DropDownList1.SelectedItem.Text == "Cũ nhất")
			{
				da.SelectCommand.Parameters.AddWithValue("@action", "select_all_ban_asc");
				DataTable dt = new DataTable();
				da.Fill(dt);
				ListView1.DataSource = dt;
				ListView1.DataBind();

				ListView2.Items.Clear();
				ListView2.DataSource = null;
				ListView2.DataBind();
			}
			if (DropDownList1.SelectedItem.Text == "Mới nhất")
			{
				da.SelectCommand.Parameters.AddWithValue("@action", "select_all_ban_desc");
				DataTable dt = new DataTable();
				da.Fill(dt);
				ListView1.DataSource = dt;
				ListView1.DataBind();

				ListView2.Items.Clear();
				ListView2.DataSource = null;
				ListView2.DataBind();
			}
			if (DropDownList1.SelectedItem.Text == "Mặc định")
			{
				getdata();
			}
		}
		protected void Chon_Click(object sender, EventArgs e)
		{
			int smin = Int32.Parse(sMin.Text);
			int smax = Int32.Parse(sMax.Text);
			SqlDataAdapter da = new SqlDataAdapter("IUD_BaiViet_Order", cnn);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@giamin", smin);
			da.SelectCommand.Parameters.AddWithValue("@giamax", smax);
			da.SelectCommand.Parameters.AddWithValue("@action", "select_gia_ban");
			DataTable dt = new DataTable();
			da.Fill(dt);
			ListView1.DataSource = dt;
			ListView1.DataBind();

			ListView2.Items.Clear();
			ListView2.DataSource = null;
			ListView2.DataBind();
		}
	}
}