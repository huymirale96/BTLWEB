﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WEBNC.Backend
{
    public partial class DanhSachBaiViet : System.Web.UI.Page
    {
		public string status = "";
		SqlConnection cnn = mylibrary.connectDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
			Session["status"] = "";
			string quyen = Session["ma_quyen"].ToString();
			if (string.IsNullOrEmpty(quyen))
            {
                //Response.Write("<script> window.location='http://localhost:59209/Backend/KhongDuThamQuyen.aspx';</script>");
                Response.Redirect("KhongDuThamQuyen.aspx");
            }
            else
            {
                btnThemMoi.Visible = true;
                btnUpdateInfo.Visible = false;
                if (!Page.IsPostBack)
                {
					
					getdata();
                }
            }
        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
			string fileName = "~\\Images\\";
			string name = "baiviet_"+FileUpload1.FileName;
			string filePath = MapPath(fileName+name);
			FileUpload1.SaveAs(filePath);
			string matk = Session["ma_taikhoan"].ToString();
			SqlCommand cmd = new SqlCommand("IUD_BaiViet", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Tieude", sTieude.Text);          
            cmd.Parameters.AddWithValue("@Noidung",sNoidung.Text);
            cmd.Parameters.AddWithValue("@DiaChiCC", sDiaChiCC.Text);
            cmd.Parameters.AddWithValue("@sGiaban", sGiaban.Text);
			cmd.Parameters.AddWithValue("@sDienTich", sDienTich.Text);
			cmd.Parameters.AddWithValue("@sNgayDang", DateTime.Now.ToString("yyyy-MM-dd"));
			cmd.Parameters.AddWithValue("@sImages", name);
			cmd.Parameters.AddWithValue("@FK_iTaikhoan", matk);
            cmd.Parameters.AddWithValue("@FK_iDanhmuc", Danhmuc.SelectedValue);
            cmd.Parameters.AddWithValue("@action", "insert");
            int check = cmd.ExecuteNonQuery();
            if (check > 0)
            {
				status = "showMessage('Thành công','Thêm bài viết thành công', 'warning', 'glyphicon-ok-sign');";
				Response.Redirect("DanhSachbaiViet.aspx");
			}
            else
            {
				status = "showMessage('Thất bại','Thêm bài viết không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";
            }
            getdata();
        }
        protected void btnSuaThongTinBV_Click(object sender, EventArgs e)
        {
			LinkButton btn = (LinkButton)sender;
			string ss_mataikhoan = Session["ma_taikhoan"].ToString();
            string quyen = Session["ma_quyen"].ToString();
			int mabv = Int32.Parse(btn.CommandArgument);
			SqlCommand cmd = new SqlCommand("IUD_BaiViet", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iMaBV", mabv);
            cmd.Parameters.AddWithValue("@action", "select_id");
            SqlDataReader rd = cmd.ExecuteReader();
			
			if (rd.HasRows)
            {
                while (rd.Read())
                {
                    sTieude.Text = rd["sTieude"].ToString();
                    sNoidung.Text = rd["sNoidung"].ToString();
                    sDiaChiCC.Text = rd["sDiaChiCC"].ToString();
                    sGiaban.Text = rd["sGiaban"].ToString();
                    Danhmuc.SelectedValue = rd["FK_iDanhmuc"].ToString();
                    btnUpdateInfo.CommandArgument = rd["PK_iMaBV"].ToString();
					sDienTich.Text = rd["sDienTich"].ToString();
					UploadStatusLabel.Text = rd["sImages"].ToString();
					btnThemMoi.Visible = false;
                    btnNhapLai.Visible = false;
                    if (ss_mataikhoan == rd["FK_iTaikhoan"].ToString()|| quyen=="1")
                    {
                        btnUpdateInfo.Visible = true;
                    }
                }
            }
            else
            {
                rd.Close();
                Response.Redirect("DanhSachBaiViet.aspx", true);
            }
            rd.Close();
        }
        protected void btnUpdateInfo_Click(object sender, EventArgs e)
        {
			string matk = Session["ma_taikhoan"].ToString();
			Button btn = (Button)sender;
            string mabaiviet = btn.CommandArgument;
            SqlCommand cmd = new SqlCommand("IUD_BaiViet", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iMaBV", mabaiviet);
            cmd.Parameters.AddWithValue("@Tieude", sTieude.Text);
            cmd.Parameters.AddWithValue("@Noidung", sNoidung.Text);
            cmd.Parameters.AddWithValue("@DiaChiCC", sDiaChiCC.Text);
            cmd.Parameters.AddWithValue("@sGiaban", sGiaban.Text);
			if (FileUpload1.HasFile == false)
			{
				cmd.Parameters.AddWithValue("@sImages", UploadStatusLabel.Text);
			}
			else
			{
				string fileName = "~\\Images\\";
				string name = "baiviet_" + FileUpload1.FileName;
				string filePath = MapPath(fileName + name);
				FileUpload1.SaveAs(filePath);
				UploadStatusLabel.Text = name;
				cmd.Parameters.AddWithValue("@sImages", name);
			}
			cmd.Parameters.AddWithValue("@sNgayDang", DateTime.Now.ToString("yyyy-MM-dd"));
            cmd.Parameters.AddWithValue("@FK_iDanhmuc", Danhmuc.SelectedValue);
			cmd.Parameters.AddWithValue("@FK_iTaikhoan", matk);
			cmd.Parameters.AddWithValue("@action", "update");
            int check = cmd.ExecuteNonQuery();
            if (check > 0)
            {
				status = "showMessage('Thành công','Câp nhật bài viết thành công', 'warning', 'glyphicon-ok-sign');";
				Response.Redirect("DanhSachBaiViet.aspx", false);
				//Page_Load(sender, e);
				//Page.Response.Redirect(Page.Request.Url.ToString(), true);
			}
			else
            {
				status = "showMessage('Thất bại','Câp nhật bài viết không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";
            }
			
		}
        protected void btnXoaNhanVien_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string mabaiviet = btn.CommandArgument;
            SqlCommand cmd = new SqlCommand("IUD_BaiViet", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iMaBV", mabaiviet);
            cmd.Parameters.AddWithValue("@action", "delete");
            int check = cmd.ExecuteNonQuery();
            if (check > 0)
            {
				Session["status"] = "showMessage('Thành công','Xóa bài viết thành công', 'warning', 'glyphicon-ok-sign');";
            }
            else
            {
				Session["status"] = "showMessage('Thất bại','Xóa bài viết không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";
            }
            getdata();
        }
        protected void getdata()
        {
            SqlDataAdapter da = new SqlDataAdapter("IUD_BaiViet", cnn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@action", "select");
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            Danhmuc.Items.Clear();
            ListItem item = new ListItem();
            SqlCommand cmd = new SqlCommand("IUD_Danhmuc", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "select");
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    item = new ListItem();
                    item.Value = rd["PK_iDanhmuc"].ToString();
                    item.Text = rd["sTenDanhmuc"].ToString();
                    Danhmuc.Items.Add(item);
                }
            }
            rd.Close();
        }
    }
}