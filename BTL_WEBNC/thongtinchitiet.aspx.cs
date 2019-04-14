using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace BTL_WEBNC
{
	public partial class thongtinchitiet : System.Web.UI.Page
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
			SqlDataAdapter da = new SqlDataAdapter("IUD_BaiViet", cnn);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@PK_iMaBV", Request.QueryString["id"]);
			da.SelectCommand.Parameters.AddWithValue("@action", "select_id");
			DataTable dt = new DataTable();
			da.Fill(dt);
			if (dt.Rows.Count > 0)
			{
				Image1.ImageUrl = "Images/" + dt.Rows[0][7].ToString();
				sTieude.Text = (dt.Rows[0][1].ToString());
				DiaDiem.Text = dt.Rows[0][4].ToString();
				Gia.Text = dt.Rows[0][3].ToString();
				DienTich.Text = dt.Rows[0][6].ToString();
				NoiDung.Text = dt.Rows[0][2].ToString();
				string a = dt.Rows[0][5].ToString();
				DateTime oDate = Convert.ToDateTime(a);
				NgayDang.Text = oDate.ToString("dd/M/yyyy", CultureInfo.InvariantCulture); ;
			}
		}
	}
}