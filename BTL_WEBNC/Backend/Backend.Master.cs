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
    public partial class Backend : System.Web.UI.MasterPage
    {
		SqlConnection cnn = mylibrary.connectDatabase();
		protected void Page_Load(object sender, EventArgs e)
        {
			string tentk = Session["ten_taikhoan"].ToString();
			SqlCommand cmd = new SqlCommand("IUD_TaiKhoan", cnn);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@ten_taikhoan", tentk);
			cmd.Parameters.AddWithValue("@action", "select_id");
			SqlDataReader rd = cmd.ExecuteReader();
			if (rd.HasRows)
			{
				while (rd.Read())
				{
					Label1.Text = rd["sTenTK"].ToString();
					Label2.Text = rd["sTenQuyen"].ToString();
				}
			}
			else
			{
				rd.Close();
			}
			rd.Close();
		}
    }
}