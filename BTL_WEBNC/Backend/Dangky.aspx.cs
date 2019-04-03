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
    public partial class Dangky : System.Web.UI.Page
    {
        public string status = "";
        SqlConnection cnn = mylibrary.connectDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("IUD_KhachHang", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@hoten", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@diachi", diachi.Text);
            cmd.Parameters.AddWithValue("@dienthoai", txtDT.Text);
            cmd.Parameters.AddWithValue("@Ngaysinh", sNgaysinh.Text);
            cmd.Parameters.AddWithValue("@note", null);
            if (GioiTinhNam.Checked)
            {
                cmd.Parameters.AddWithValue("@gioitinh", "Nam");
            }
            else
            {
                cmd.Parameters.AddWithValue("@gioitinh", "Nữ");
            }

            cmd.Parameters.AddWithValue("@action", "insert_kh");
            int check = cmd.ExecuteNonQuery();
            int makh = mylibrary.capma("tbl_khachhang", "PK_iMaKH");
            if (check > 0)
            {
                //insert moi
                try
                {
                    cmd = new SqlCommand("IUD_TaiKhoan", cnn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ten_taikhoan", taikhoan.Text);
                    cmd.Parameters.AddWithValue("@mat_khau", txtPassword.Text);
                    cmd.Parameters.AddWithValue("@manhanvien", null);
                    cmd.Parameters.AddWithValue("@ma_quyen", 3);
                    cmd.Parameters.AddWithValue("@ma_khachhang", makh);
                    cmd.Parameters.AddWithValue("@ma_status", 1);
                    cmd.Parameters.AddWithValue("@action", "insert_tk");
                    check = cmd.ExecuteNonQuery();
                    if (check > 0)
                    {
                        status = "showMessage('Thành công','Tạo tài khoản thành công', 'warning', 'glyphicon-ok-sign');";
                        cnn.Close();
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        status = "showMessage('Thất bại','Tạo tài khoản không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";
                        cnn.Close();
                        Response.Redirect("Dangky.aspx");
                    }

                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception.Message);
                }
            }
            else
            {
                status = "showMessage('Thất bại','Không thể thêm được nhân viên. Vui lòng thử lại', 'error', 'glyphicon-ok-sign')";
                Response.Redirect("Dangky.aspx");
            }

        }
    }
}