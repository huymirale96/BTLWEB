using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_WEBNC
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            //BundleConfig.RegisterBundles(BundleTable.Bundles);
            // Code that runs on application startup
            string path = Server.MapPath("~\\TextFile.txt");
            string[] testDataLineByLine = File.ReadAllLines(path);
            int SNTNTN = int.Parse(testDataLineByLine[0]);
            int tong = int.Parse(testDataLineByLine[1]);
            Application.Add("sn", SNTNTN);
            Application.Add("TN", tong);
            Application["Solan"] = 0;
        }
        void Session_Start(object sender, EventArgs e)
        {
            // Code that runs when a new session is started
            Session["ten_taikhoan"] = "";
            Session["ma_taikhoan"] = null;
            Session["ma_quyen"] = "";
            Session["ma_nhanvien"] = "";
            Session["ma_khachang"] = "";
            Session["matkhau"] = "";

            int so = int.Parse(Application.Get("sn").ToString());
            so++;
            int tong = int.Parse(Application.Get("TN").ToString());
            tong++;
            if (DateTime.Now.Hour.ToString() == "0" && DateTime.Now.Minute.ToString() == "0")
            {
                so = 0;

            }
            Application.Set("sn", so);
            Application.Set("TN", tong);
            string[] ghi = { Application.Get("sn").ToString(), Application.Get("TN").ToString() };
            string path = Server.MapPath("~\\TextFile.txt");
            File.WriteAllLines(path, ghi);
        }

        void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends. 
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer 
            // or SQLServer, the event is not raised.
            Session["ten_taikhoan"] = "";
            Session["ma_taikhoan"] = "";
            Session["ma_quyen"] = "";
            Session["ma_nhanvien"] = "";
            Session["ma_khachang"] = "";
        }
    }
}