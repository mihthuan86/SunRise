using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunRise.admin
{

    public partial class roombook : System.Web.UI.Page
    {
        public string user;
        public Data data;
        public DataTable tb_booking;
        public string s;
        public DateTime d_in, d_out;
        protected void Page_Load(object sender, EventArgs e)
        {

            data = new Data();
            //user = Session["user"].ToString();
            //string rbid = Request.QueryString["rbid"].ToString();
            string rbid = "9";

            tb_booking = data.DataGV("select * from DatPhong where ID_Dat=N'" + rbid + "'");
            string Hoten;
            Hoten = tb_booking.Rows[0]["Ho"] + " " + tb_booking.Rows[0]["Ten"];
            
            
            d_in = DateTime.ParseExact(tb_booking.Rows[0]["NgayDen"].ToString(), "MM/dd/yyyy hh:mm:ss tt", null);
            d_out = DateTime.ParseExact(tb_booking.Rows[0]["NgayTra"].ToString(), "MM/dd/yyyy hh:mm:ss tt", null);

            double luutru = (d_out-d_in).TotalDays;

            s = "<tr>" +
                 "<th> Mã đặt phòng </th>" +
                 "<th>" + tb_booking.Rows[0]["ID_Dat"] + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> Tên </th>" +
                 "<th>" + Hoten + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> SĐT </th>" +
                 "<th>" + tb_booking.Rows[0]["Sdt"] + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> CMND/CCCD </th>" +
                 "<th>" + tb_booking.Rows[0]["DinhDanh"] + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> Email </th>" +
                 "<th>" + tb_booking.Rows[0]["Email"] + " </th>" +
                 "</tr> " +
                 "<th> Loại Phòng </th>" +
                 "<th>" + tb_booking.Rows[0]["ID_LoaiP"].ToString() + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> NgayDen </th>" +
                 "<th>" + tb_booking.Rows[0]["NgayDen"] + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> NgayTra </th>" +
                 "<th>" + tb_booking.Rows[0]["NgayTra"] + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> SoNgayLuuTru </th>" +
                 "<th>" + luutru + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> So Luong  </th>" +
                 "<th>" + tb_booking.Rows[0]["Soluong"] + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> Giuong </th>" +
                 "<th>" + tb_booking.Rows[0]["Giuong"] + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> Yêu Cầu Thêm </th>" +
                 "<th>" + tb_booking.Rows[0]["YeuCauThem"] + " </th>" +
                 "</tr> " +
                 "<tr>";               
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string chonphong = "select ID_Phong from Phong where LoaiP='" + tb_booking.Rows[0]["ID_LoaiP"].ToString() +"'";
            DataTable tb_phong = data.DataGV(chonphong);
            string chon="";
            string select_phong = "";
            for (int i = 0; i < tb_phong.Rows.Count; i++)
            {
                select_phong = "select DatPhong.ID_Dat, DatPhong.NgayDen, DatPhong.NgayTra, XacNhan.PhongXN " +
                "from DatPhong, XacNhan where DatPhong.ID_Dat = XacNhan.ID_Dat and XacNhan.PhongXN = '"+ tb_phong.Rows[i]["ID_Phong"]+ "' and" +
                  "'"+tb_booking.Rows[0]["NgayDen"]+"' < DatPhong.NgayTra and DatPhong.NgayDen < '"+ tb_booking.Rows[0]["NgayTra"] + "'";
               /* DataTable tb_chon = data.DataGV(select_phong);
                if(tb_chon.Rows.Count <= 0)
                {
                    chon = tb_phong.Rows[i]["ID_Phong"].ToString();
                }*/
            }
            if (chon == "")
            {
                //Response.Write("<script type='text/javascript'> alert('Khong co phong nao thoai man')</script>");
                Response.Write("<script type='text/javascript'> alert('"+select_phong+"')</script>");

            }
            else
            {
                Response.Write("<script type='text/javascript'> alert('Phong thoai man: "+chon+"')</script>");

            }

        }
    }
}