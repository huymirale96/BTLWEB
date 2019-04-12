using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BTL_WEBNC.Backend
{
	public partial class GiaoDich : System.Web.UI.Page
	{
		public string status = "";
		SqlConnection cnn = mylibrary.connectDatabase();
		protected void Page_Load(object sender, EventArgs e)
		{
			string quyen = Session["ma_quyen"].ToString();
			if (string.IsNullOrEmpty(quyen))
			{
				Response.Redirect("KhongDuThamQuyen.aspx");
			}
			else
			{
				btnUpdateInfoGD.Visible = false;
				if (!Page.IsPostBack)
				{
					getdata();
				}
			}
		}
		protected void btnThemMoiGD_Click(object sender, EventArgs e)
		{
			string matk = Session["ma_taikhoan"].ToString();
			SqlCommand cmd = new SqlCommand("IUD_ThongTinGiaoDich", cnn);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@sTenHoaDon", sTenHoaDon.Text);
			cmd.Parameters.AddWithValue("@sNoidungGD", sNoidungGD.Text);
			cmd.Parameters.AddWithValue("@sTongTien", sTongTien.Text);
			cmd.Parameters.AddWithValue("@dNgayLapHD", DateTime.Now.ToString("yyyy-MM-dd"));
			cmd.Parameters.AddWithValue("@FK_iTaikhoan", matk);
			cmd.Parameters.AddWithValue("@action", "insert");
			int check = cmd.ExecuteNonQuery();
			if (check > 0)
			{
				status = "showMessage('Thành công','Thêm bài viết thành công', 'warning', 'glyphicon-ok-sign');";
				Response.Redirect("GiaoDich.aspx");
			}
			else
			{
				status = "showMessage('Thất bại','Thêm bài viết không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";

			}
			getdata();
		}
		protected void btnUpdateInfoGD_Click(object sender, EventArgs e)
		{
			Button btn = (Button)sender;
			string mabaiviet = btn.CommandArgument;
			
		}
		protected void btnSuaThongTinGD_Click(object sender, EventArgs e)
		{
			
		}
		protected void getdata()
		{
			SqlDataAdapter da = new SqlDataAdapter("IUD_ThongTinGiaoDich", cnn);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@action", "select");
			DataTable dt = new DataTable();
			da.Fill(dt);
			Repeater1.DataSource = dt;
			Repeater1.DataBind();
		}
	}
}