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
	public partial class thongtinduan : System.Web.UI.Page
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
			SqlDataAdapter da = new SqlDataAdapter("IUD_DuAn", cnn);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@PK_iDuan", Request.QueryString["id"]);
			da.SelectCommand.Parameters.AddWithValue("@action", "select_id");
			DataTable dt = new DataTable();
			da.Fill(dt);
			if (dt.Rows.Count > 0)
			{
				sTieude.Text = (dt.Rows[0][1].ToString());
				sMoTa.Text = dt.Rows[0][2].ToString();
				sNoiDung.Text = dt.Rows[0][3].ToString();
				sQuyMo.Text = dt.Rows[0][4].ToString();
				sDiaDiem.Text = dt.Rows[0][5].ToString();
				sDienTich.Text = dt.Rows[0][7].ToString();
				Image1.ImageUrl = "Images/" + dt.Rows[0][8].ToString();
				sCongTy.Text = dt.Rows[0][9].ToString();
				string a = dt.Rows[0][6].ToString();
				DateTime oDate = Convert.ToDateTime(a);
				NgayDang.Text = oDate.ToString("dd/M/yyyy", CultureInfo.InvariantCulture); ;
			}
		}
	}
}