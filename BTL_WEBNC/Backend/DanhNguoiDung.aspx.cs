using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WEBNC.Backend
{
    public partial class DanhNguoiDung : System.Web.UI.Page
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
        protected void btnSuaThongTin_Click(object sender, EventArgs e)
        {
			LinkButton btn = (LinkButton)sender;
            int makh = Int32.Parse(btn.CommandArgument);
            SqlCommand cmd = new SqlCommand("IUD_KhachHang", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ma_kh", makh);
            cmd.Parameters.AddWithValue("@action", "select_id");
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                while (rd.Read())
                {

                    TenTaiKhoan.Enabled = false;
                    TenTaiKhoan.Text = rd["sTenTK"].ToString();
                    MatKhau.Attributes["value"] = rd["sMatKhau"].ToString();
                    HoVaTen.Text = rd["sTenKH"].ToString();
                    DienThoai.Text = rd["iPhone"].ToString();
                    sDiachi.Text = rd["sDiachi"].ToString();
                    sEmail.Text = rd["sEmail"].ToString();
                    sNgaysinh.Text = rd["dNgaysinh"].ToString();
                    if (rd["sGioitinh"].ToString() == "Nam")
                    {
                        GioiTinhNam.Checked = true;
                    }
                    else
                    {
                        GioiTinhNu.Checked = true;
                    }
                    btnUpdateInfo.CommandArgument = rd["PK_iMaKH"].ToString();
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
        protected void getdata()
        {
            SqlDataAdapter da = new SqlDataAdapter("IUD_TaiKhoan", cnn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@action", "select_kh");
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void btnUpdateInfo_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int makh = Int32.Parse(btn.CommandArgument);
            SqlCommand cmd = new SqlCommand("IUD_KhachHang", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ma_kh", makh);
            cmd.Parameters.AddWithValue("@hoten", HoVaTen.Text);
            cmd.Parameters.AddWithValue("@dienthoai", DienThoai.Text);
            cmd.Parameters.AddWithValue("@diachi", sDiachi.Text);
            cmd.Parameters.AddWithValue("@email", sEmail.Text);
            cmd.Parameters.AddWithValue("@ngaysinh", sNgaysinh.Text);
            cmd.Parameters.AddWithValue("@note", null);
            if (GioiTinhNam.Checked)
            {
                cmd.Parameters.AddWithValue("@gioitinh", "Nam");
            }
            else
            {
                cmd.Parameters.AddWithValue("@gioitinh", "Nữ");
            }

            cmd.Parameters.AddWithValue("@action", "update_kh");
            int check = cmd.ExecuteNonQuery();
            if (check > 0)
            {
                status = "showMessage('Thành công','Câp nhật thông tin tài khoản, khách hàng thành công', 'warning', 'glyphicon-ok-sign');";
            }
            else
            {
                status = "showMessage('Thất bại','Câp nhật thông tin tài khoản, khách hàng không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";
            }

            //update tai khoan
            cmd = new SqlCommand("[IUD_TaiKhoan]", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            if (MatKhau.Text.Length >= 4)
            {
                cmd.Parameters.AddWithValue("@mat_khau", MatKhau.Text);
            }
            else
            {
                status = "showMessage('Thất bại','Mật khẩu từ 4 ký tự trở lên. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";
            }

            cmd.Parameters.AddWithValue("@ten_taikhoan", TenTaiKhoan.Text);
            cmd.Parameters.AddWithValue("@action", "update_tk");
            cmd.ExecuteNonQuery();

            //getdata();
            Response.Redirect("DanhNguoiDung.aspx");
        }
    }
}