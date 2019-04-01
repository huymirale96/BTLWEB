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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            String pass = password.Text.ToString();
            SqlDataAdapter da_dangnhap = new SqlDataAdapter("dangnhap", cnn);
            da_dangnhap.SelectCommand.CommandType = CommandType.StoredProcedure;
            da_dangnhap.SelectCommand.Parameters.AddWithValue("@username", user.Text);
            da_dangnhap.SelectCommand.Parameters.AddWithValue("@pass", pass);
            DataTable dt = new DataTable();
            da_dangnhap.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Application["Solan"] = Convert.ToInt32(Application["Solan"].ToString()) + 1;
                Session["ten_taikhoan"] = dt.Rows[0][1].ToString();
                Session["ma_quyen"] = dt.Rows[0][4].ToString();
                Session["ma_nhanvien"] = dt.Rows[0][2].ToString();
                Session["ma_khachang"] = dt.Rows[0][3].ToString();
                Response.Write("<script> var kt = confirm('Đăng nhập thanh cong'); " +
                   "if(kt==true)  window.location='http://localhost:59209/Backend/Welcome.aspx';</script>");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}