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
			btnUpdateInfo.Visible = false;
			if (quyen == "1")
			{
				if (!Page.IsPostBack)
				{
					getdata();
				}
			}
			else
			{
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
		protected void btnSuaThongTin_Click(object sender, EventArgs e)
		{
			LinkButton btn = (LinkButton)sender;
			string ss_mataikhoan = Session["ma_taikhoan"].ToString();
			string quyen = Session["ma_quyen"].ToString();
			int mada = Int32.Parse(btn.CommandArgument);
			SqlCommand cmd = new SqlCommand("IUD_DuAn", cnn);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@PK_iDuan", mada);
			cmd.Parameters.AddWithValue("@action", "select_id");
			SqlDataReader rd = cmd.ExecuteReader();
			if (rd.HasRows)
			{
				while (rd.Read())
				{
					TenDuAn.Text = rd["sTieude"].ToString();
					Mota.Text = rd["sMoTa"].ToString();
					sQuyMo.Text = rd["sQuyMo"].ToString();
					sDiaChiCC.Text = rd["sDiaChiCC"].ToString();
					sDienTich.Text = rd["sDienTich"].ToString();
					sCongTy.Text = rd["sCongTy"].ToString();
					sNoiDungDA.Text = rd["sNoiDung"].ToString();
					UploadStatusLabel.Text = rd["sImages"].ToString();
					btnUpdateInfo.CommandArgument = rd["PK_iDuan"].ToString();
					btnThemMoi.Visible = false;
					btnNhapLai.Visible = false;
					if (ss_mataikhoan == rd["FK_iTaikhoan"].ToString() || quyen == "1")
					{
						btnUpdateInfo.Visible = true;
					}
				}
			}
			else
			{
				rd.Close();
				Response.Redirect("DanhSachDuAn.aspx");
			}
			rd.Close();
		}
		protected void getdata()
		{
			SqlDataAdapter da1 = new SqlDataAdapter("IUD_DuAn", cnn);
			da1.SelectCommand.CommandType = CommandType.StoredProcedure;
			da1.SelectCommand.Parameters.AddWithValue("@action", "select_all");
			DataTable dt1 = new DataTable();
			da1.Fill(dt1);
			Repeater2.DataSource = dt1;
			Repeater2.DataBind();
		}

		protected void btnUpdateInfo_Click(object sender, EventArgs e)
		{
			string matk = Session["ma_taikhoan"].ToString();
			Button btn = (Button)sender;
			SqlCommand cmd = new SqlCommand("IUD_DuAn", cnn);
			string mada = btn.CommandArgument;
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@PK_iDuan", mada);
			cmd.Parameters.AddWithValue("@sTieuDe", TenDuAn.Text);
			cmd.Parameters.AddWithValue("@sMoTa", Mota.Text);
			cmd.Parameters.AddWithValue("@sNoiDung", sNoiDungDA.Text);
			cmd.Parameters.AddWithValue("@sQuyMo", sQuyMo.Text);
			cmd.Parameters.AddWithValue("@sDiaChiCC", sDiaChiCC.Text);
			cmd.Parameters.AddWithValue("@sCongTy", sCongTy.Text);
			cmd.Parameters.AddWithValue("@dNgayDang", DateTime.Now.ToString("yyyy-MM-dd"));
			cmd.Parameters.AddWithValue("@FK_iTaikhoan", matk);
			cmd.Parameters.AddWithValue("@sDienTich", sDienTich.Text);
			if (FileUpload1.HasFile == false)
			{
				cmd.Parameters.AddWithValue("@sImages", UploadStatusLabel.Text);
			}
			else
			{
				string fileName = "~\\Images\\";
				string name = "duan_" + FileUpload1.FileName;
				string filePath = MapPath(fileName + name);
				FileUpload1.SaveAs(filePath);
				UploadStatusLabel.Text = name;
				cmd.Parameters.AddWithValue("@sImages", name);
			}
			cmd.Parameters.AddWithValue("@action", "update");
			int check = cmd.ExecuteNonQuery();
			if (check > 0)
			{
				status = "showMessage('Thành công','Câp nhật bài viết thành công', 'warning', 'glyphicon-ok-sign');";
			}
			else
			{
				status = "showMessage('Thất bại','Câp nhật bài viết không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";
			}
			Response.Redirect("DanhSachDuAn.aspx");
		}
		protected void btnXoaNhanVien_Click(object sender, EventArgs e)
		{
			LinkButton btn = (LinkButton)sender;
			int maduan = Int32.Parse(btn.CommandArgument);
			SqlCommand cmd = new SqlCommand("IUD_DuAn", cnn);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@PK_iDuan", maduan);
			cmd.Parameters.AddWithValue("@action", "delete");
			int check = cmd.ExecuteNonQuery();
			if (check > 0)
			{
				status = "showMessage('Thành công','Xóa bài viết thành công', 'warning', 'glyphicon-ok-sign');";
			}
			else
			{
				status = "showMessage('Thất bại','Xóa bài viết không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";
			}
			getdata();
		}
	}
}