using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

namespace BTL_WEBNC
{
    public class mylibrary
    {
        public static string HashSHA1(string stringToHash)
        {
            using (var sha1 = new SHA1Managed())
            {
                string output = BitConverter.ToString(sha1.ComputeHash(Encoding.UTF8.GetBytes(stringToHash))).Replace("-", "");
                output = output.ToLower();
                return output;
            }
        }
        public static string HashMD5(string stringToHash)
        {
            byte[] encodedPassword = new UTF8Encoding().GetBytes(stringToHash);
            byte[] hash = ((HashAlgorithm)CryptoConfig.CreateFromName("MD5")).ComputeHash(encodedPassword);
            string encoded = BitConverter.ToString(hash).Replace("-", string.Empty).ToLower();
            return encoded;
        }

        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }

        public static string Base64Decode(string base64EncodedData)
        {
            var base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData);
            return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
        }

        public static String HashSHA265(string value)
        {
            using (SHA256 hash = SHA256Managed.Create())
            {
                return String.Join("", hash.ComputeHash(Encoding.UTF8.GetBytes(value)).Select(item => item.ToString("x2")));
            }
        }

        public static bool checkNull(string s)
        {
            if (String.IsNullOrEmpty(s))
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public static bool checkRegex(string input, string regex)
        {
            var match = Regex.Match(input, regex, RegexOptions.IgnoreCase);

            if (!match.Success)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public static string strCon = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        public static SqlConnection connectDatabase()
        {
            SqlConnection cnn = new SqlConnection(strCon);
            cnn.Open();
            return cnn;
        }
        public static int capma(string bangmuonlay, string truongmuonlay)
        {
            string sql = "SELECT MAX(" + truongmuonlay + ") as [max] FROM " + bangmuonlay;
            SqlConnection myconn = connectDatabase();
            SqlCommand cmd = new SqlCommand(sql, myconn);
            SqlDataReader rd = cmd.ExecuteReader();
            int ma = 0;
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    if (!String.IsNullOrEmpty(rd["max"].ToString()))
                        ma = Int32.Parse(rd["max"].ToString());
                }
            }

            //kieu quy dinh
            //if (ma == 0)
            //{
            //    sql = quydinh + "00" + ma.ToString();
            //}
            //else
            //{
            //    switch (ma.ToString().Length)
            //    {
            //        case 1: sql = quydinh + "00" + ma.ToString(); break;
            //        case 2: sql = quydinh + "0" + ma.ToString(); break;
            //        default: sql = quydinh + "" + ma.ToString(); break;
            //    }
            //}
            return ma;
        }
    }
}