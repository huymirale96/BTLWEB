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
    public partial class Thongtincanhan : System.Web.UI.Page
    {
        public string status = "";
        SqlConnection cnn = mylibrary.connectDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            string makh = (String)(Session["ma_khachang"]);
            if (!Page.IsPostBack)
            {
                if (String.IsNullOrEmpty(makh))
                {
                    Response.Redirect("Login.aspx");

                }
                else
                {
                    getdata();
                }
                
            }
        }
        protected void getdata()
        {

            string makh = (String)(Session["ma_khachang"]);
            //int ma = Int32.Parse(makh);
            int ma = Convert.ToInt32(makh);
            SqlCommand cmd = new SqlCommand("IUD_KhachHang", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ma_kh", ma);
            cmd.Parameters.AddWithValue("@action", "select_id");
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    HoVaTen.Text = rd["sTenKH"].ToString();
                    DienThoai.Text = rd["iPhone"].ToString();
                    Diachi.Text = rd["sDiachi"].ToString();
                    Email.Text = rd["sEmail"].ToString();
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
                //Response.Redirect("KhongDuThamQuyen.aspx");
            }
            rd.Close();
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
            cmd.Parameters.AddWithValue("@diachi", Diachi.Text);
            cmd.Parameters.AddWithValue("@email", Email.Text);
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
            Response.Redirect("Thongtincanhan.aspx");
        }
    }
}