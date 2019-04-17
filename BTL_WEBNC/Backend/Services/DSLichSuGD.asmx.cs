using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace BTL_WEBNC.Backend.Services
{
    /// <summary>
    /// Summary description for DSLichSuGD
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class DSLichSuGD : System.Web.Services.WebService
    {

        [WebMethod]
        public List<DSLichSuGD1> GetDanhSach(string namgd)
        {
            List<DSLichSuGD1> DsGiaodichs = new List<DSLichSuGD1>();

            SqlConnection cnn = mylibrary.connectDatabase();
            SqlCommand cmd = new SqlCommand("IUD_ChitietGiaoDich", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@namgd", namgd);
            cmd.Parameters.AddWithValue("@action", "select");
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                
                DSLichSuGD1 gd = new DSLichSuGD1();
                gd.sTenHoaDon = rd["sTenHoaDon"].ToString();
                gd.sNoiDungsua = rd["sNoiDungsua"].ToString();
                gd.dNgayLapHD = rd["dNgayLapHD"].ToString();
                gd.dNgaySuaHD = rd["dNgaySuaHD"].ToString();
                gd.sTenTK = rd["sTenTK"].ToString();
                DsGiaodichs.Add(gd);
            }
            
            return DsGiaodichs;
        }
    }
}
