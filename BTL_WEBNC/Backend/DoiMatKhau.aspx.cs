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
    public partial class DoiMatKhau : System.Web.UI.Page
    {
        public string status = "";
        SqlConnection myCnn = mylibrary.connectDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            btnCapNhatMatKhau.CommandArgument = Session["ten_taikhoan"].ToString();
            TenTaiKhoan.Text = Session["ten_taikhoan"].ToString();
            if (String.IsNullOrEmpty(Session["ma_quyen"].ToString()))
            {
                Response.Redirect("KhongDuThamQuyen.aspx");
            }
        }

        protected void btnVeTrangChu_MatKhau_Click(object sender, EventArgs e)
        {
            Response.Write("Welcome.aspx");
        }

        protected void btnCapNhatMatKhau_Click(object sender, EventArgs e)
        {
            if (Session["ten_taikhoan"].ToString().Equals(btnCapNhatMatKhau.CommandArgument))
            {
                if (String.IsNullOrEmpty(MatKhauMoi.Text) || String.IsNullOrEmpty(NhapLaiMatKhauMoi.Text) || String.IsNullOrEmpty(MatKhauCu.Text))
                {
                    status = "showMessage('Thất bại','Mời nhập đầy đủ thông tin. Vui lòng kiểm tra lại', 'error', 'glyphicon-ok-sign');";
                }
                else
                {
                    if (MatKhauMoi.Text.Equals(NhapLaiMatKhauMoi.Text))
                    {
                        //string hash = mylibrary.HashSHA1(MatKhauMoi.Text);
                        SqlCommand cmd = new SqlCommand("IUD_TaiKhoan", myCnn);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@action", "update_tk");
                        cmd.Parameters.AddWithValue("@ten_taikhoan", Session["ten_taikhoan"].ToString());
                        cmd.Parameters.AddWithValue("@mat_khau", MatKhauMoi.Text);
                        int check = cmd.ExecuteNonQuery();
                        if (check > 0)
                        {
                            status = "showMessage('Thành công','Cập nhật mật khẩu thành công', 'warning', 'glyphicon-ok-sign');";
                        }
                        else
                        {
                            status = "showMessage('Thất bại','Cập nhật mật khẩu không thành công. Vui lòng kiểm tra lại', 'error', 'glyphicon-ok-sign');";
                        }

                    }
                    else
                    {
                        status = "showMessage('Thất bại','Mật khẩu mới không khớp nhau. Vui lòng kiểm tra lại', 'error', 'glyphicon-ok-sign');";
                    }

                }

            }
            else
            {
                Response.Redirect("KhongDuThamQuyen.aspx");
            }
        }
    }
}