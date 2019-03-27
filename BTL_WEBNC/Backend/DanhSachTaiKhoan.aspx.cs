using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WEBNC.Backend
{
    public partial class DanhSachTaiKhoan : System.Web.UI.Page
    {
        public string status = "";
        //SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        SqlConnection cnn = mylibrary.connectDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

            string quyen = Session["ma_quyen"].ToString();
            if (quyen =="1")
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
            //insert nhan vien moi
            //string manv = mylibrary.capma("tbl_nhanvien", "ma_nhanvien", "NV");
            
            SqlCommand cmd = new SqlCommand("IUD_NhanVien", cnn);
            //cnn.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@ma", manv);
            cmd.Parameters.AddWithValue("@hoten", HoVaTen.Text);
            cmd.Parameters.AddWithValue("@dienthoai", DienThoai.Text);
            cmd.Parameters.AddWithValue("@noisinh", sNoisinh.Text);
            cmd.Parameters.AddWithValue("@ngaysinh", sNgaysinh.Text);
            if (GioiTinhNam.Checked)
            {
                cmd.Parameters.AddWithValue("@gioitinh", "Nam");
            }
            else
            {
                cmd.Parameters.AddWithValue("@gioitinh", "Nữ");
            }            
           
            cmd.Parameters.AddWithValue("@action", "insert");
            int check = cmd.ExecuteNonQuery();

            int manv = mylibrary.capma("tbl_nhanvien", "PK_iMaNV");
            if (check > 0)
            {               
                //insert moi
                try
                {                    
                    cmd = new SqlCommand("IUD_TaiKhoan", cnn);                    
                    cmd.CommandType = CommandType.StoredProcedure;                    
                    cmd.Parameters.AddWithValue("@ten_taikhoan", TenTaiKhoan.Text);
                    cmd.Parameters.AddWithValue("@mat_khau", MatKhau.Text);
                    cmd.Parameters.AddWithValue("@manhanvien", manv);
                    cmd.Parameters.AddWithValue("@ma_quyen", 2);
                    cmd.Parameters.AddWithValue("@ma_khachhang", null);
                    cmd.Parameters.AddWithValue("@ma_status", 1);
                    cmd.Parameters.AddWithValue("@action", "insert_tk");
                    check = cmd.ExecuteNonQuery();
                    if (check > 0)
                    {
                        status = "showMessage('Thành công','Tạo tài khoản thành công', 'warning', 'glyphicon-ok-sign');";
                        cnn.Close();
                    }
                    else
                    {
                        status = "showMessage('Thất bại','Tạo tài khoản không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";
                        cnn.Close();
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
                
            }
            
            getdata();
            //cnn.Close();

            
        }
        protected void btnSuaThongTin_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            int manv = Int32.Parse(btn.CommandArgument);
            SqlCommand cmd = new SqlCommand("IUD_NhanVien", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ma_NV", manv);
            cmd.Parameters.AddWithValue("@action", "select_NV");
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    
                    TenTaiKhoan.Enabled = false;
                    TenTaiKhoan.Text = rd["sTenTK"].ToString();
                    MatKhau.Attributes["value"] = rd["sMatKhau"].ToString();
                    HoVaTen.Text = rd["sTenNV"].ToString();
                    DienThoai.Text = rd["iPhone"].ToString();
                    sNoisinh.Text = rd["sNoisinh"].ToString();
                    sNgaysinh.Text = rd["dNgaysinh"].ToString();
                    if (rd["sGioitinh"].ToString()=="Nam")
                    {
                        GioiTinhNam.Checked = true;
                    }
                    else
                    {
                        GioiTinhNu.Checked = true;
                    }                                   
                    btnUpdateInfo.CommandArgument = rd["PK_iMaNV"].ToString();
                    btnThemMoi.Visible = false;
                    btnUpdateInfo.Visible = true;
                }
            }
            else
            {
                rd.Close();
                Response.Redirect("DanhSachTaiKhoan.aspx");
            }
            rd.Close();
        }
        protected void btnUpdateInfo_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int manv = Int32.Parse(btn.CommandArgument);
            SqlCommand cmd = new SqlCommand("IUD_NhanVien", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ma_NV", manv);
            cmd.Parameters.AddWithValue("@hoten", HoVaTen.Text);
            cmd.Parameters.AddWithValue("@dienthoai", DienThoai.Text);
            cmd.Parameters.AddWithValue("@noisinh", sNoisinh.Text);
            cmd.Parameters.AddWithValue("@ngaysinh", sNgaysinh.Text);

            if (GioiTinhNam.Checked)
            {
                cmd.Parameters.AddWithValue("@gioitinh", "Nam");
            }
            else
            {
                cmd.Parameters.AddWithValue("@gioitinh", "Nữ");
            }
            
            cmd.Parameters.AddWithValue("@action", "update");
            int check = cmd.ExecuteNonQuery();
            if (check > 0)
            {
                status = "showMessage('Thành công','Câp nhật thông tin tài khoản, nhân viên thành công', 'warning', 'glyphicon-ok-sign');";
            }
            else
            {
                status = "showMessage('Thất bại','Câp nhật thông tin tài khoản, nhân viên không thành công. Vui lòng thử lại', 'warning', 'glyphicon-ok-sign');";
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
            Response.Redirect("DanhSachTaiKhoan.aspx");
        }
        protected void getdata()
        {
            
            
            SqlDataAdapter da = new SqlDataAdapter("IUD_TaiKhoan", cnn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@action", "select_TaikhoanNV");
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            //this.btnXoaNhanVien.Visible = false;
           

        }

        
    }
}