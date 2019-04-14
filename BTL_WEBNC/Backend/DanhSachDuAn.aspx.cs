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
	public partial class DanhSachDuAn : System.Web.UI.Page
	{
		public string status = "";
		SqlConnection cnn = mylibrary.connectDatabase();
		protected void Page_Load(object sender, EventArgs e)
		{
			string quyen = Session["ma_quyen"].ToString();
			if (quyen == "1")
			{
				btnThemMoi.Visible = true;
				btnUpdateInfo.Visible = false;
				if (!Page.IsPostBack)
				{
					getdata();
				}
			}
			else
			{
				//Response.Write("<script> window.location='http://localhost:59209/Backend/KhongDuThamQuyen.aspx';</script>");
				Response.Redirect("KhongDuThamQuyen.aspx");
			}
		}

		protected void btnThemMoi_Click(object sender, EventArgs e)
		{
			string fileName = "~\\Images\\";
			string name = "duan_" + FileUpload1.FileName;
			string filePath = MapPath(fileName + name);
			FileUpload1.SaveAs(filePath);

			string matk = Session["ma_taikhoan"].ToString();
			SqlCommand cmd = new SqlCommand("IUD_DuAn", cnn);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@sTieuDe", TenDuAn.Text);
			cmd.Parameters.AddWithValue("@sMoTa", Mota.Text);
			cmd.Parameters.AddWithValue("@sNoiDung", sNoiDungDA.Text);
			cmd.Parameters.AddWithValue("@sQuyMo", sQuyMo.Text);
			cmd.Parameters.AddWithValue("@sDiaChiCC", sDiaChiCC.Text);
			cmd.Parameters.AddWithValue("@sCongTy", sCongTy.Text);
			cmd.Parameters.AddWithValue("@dNgayDang", DateTime.Now.ToString("yyyy-MM-dd"));
			cmd.Parameters.AddWithValue("@sImages", name);
			cmd.Parameters.AddWithValue("@FK_iTaikhoan", matk);
			cmd.Parameters.AddWithValue("@sDienTich", sDienTich.Text);
			cmd.Parameters.AddWithValue("@action", "insert");
			int check = cmd.ExecuteNonQuery();
			if (check > 0)
			{
				status = "showMessage('Thành công','Thêm bài viết thành công', 'warning', 'glyphicon-ok-sign');";
				Response.Redirect("DanhSachDuAn.aspx");
			}
			else
			{
				status = "showMessage('Thất bại','Thêm bài viết không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";

			}
			getdata();
		}
		protected void getdata()
		{
			SqlDataAdapter da = new SqlDataAdapter("IUD_DuAn", cnn);
			da.SelectCommand.CommandType = CommandType.StoredProcedure;
			da.SelectCommand.Parameters.AddWithValue("@action", "select_all");
			DataTable dt = new DataTable();
			da.Fill(dt);
			RepeaterDuAn.DataSource = dt;
			RepeaterDuAn.DataBind();
		}
		protected void btnSuaThongTin_Click(object sender, EventArgs e)
		{
			LinkButton btn = (LinkButton)sender;
			int maDA = Int32.Parse(btn.CommandArgument);
			SqlCommand cmd = new SqlCommand("IUD_DuAn", cnn);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@PK_iDuan", maDA);
			cmd.Parameters.AddWithValue("@action", "select_id");
			SqlDataReader rd = cmd.ExecuteReader();
			if (rd.HasRows)
			{
				while (rd.Read())
				{
					TenDuAn.Text = rd["sTieuDe"].ToString();
					btnUpdateInfo.CommandArgument = rd["PK_iDuan"].ToString();
					btnUpdateInfo.Visible = true;
				}
			}
			else
			{
				rd.Close();
				Response.Redirect("DanhNguoiDung.aspx");
			}
			rd.Close();
		}
		protected void btnUpdateInfo_Click(object sender, EventArgs e)
		{
			
		}
	}
}