using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SunRise.admin
{
    public class Data
    {
        public SqlConnection GetConnection()
        {
            string path = HttpContext.Current.Server.MapPath("App_Data/hotel_db.mdf");
            return new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB; 
            AttachDbFilename=" + path + "; Integrated Security=True");
        }
        public int ExcuteNonQuery(string sql)
        {
            SqlConnection conn = GetConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            int i= cmd.ExecuteNonQuery();
            conn.Close();
            cmd.Dispose();
            return i;
        }
        public SqlDataReader ExecuteReader(string sql)
        {
            SqlConnection conn = GetConnection();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
        public DataTable DataGV(string sql)
        {
            SqlConnection conn = GetConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            return dt;
        }
        public object Scalar(string sql)
        {
            SqlConnection conn = GetConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            object kq = cmd.ExecuteScalar();
            conn.Close();
            return kq;
        }
    }
}