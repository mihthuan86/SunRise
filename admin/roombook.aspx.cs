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
        protected void Page_Load(object sender, EventArgs e)
        {

            data = new Data();
            user = Session["user"].ToString();
            string rbid = Request.QueryString["rbid"].ToString();
            tb_booking = data.DataGV("select * from DatPhong where ID_Dat=N'" + rbid + "'");
            string Hoten,LoaiPhong, An;
            Hoten = tb_booking.Rows[0]["Ho"] + " " + tb_booking.Rows[0]["Ten"];
            switch (tb_booking.Rows[0]["ID_LoaiP"].ToString())
            {
                case "De": {
                        LoaiPhong = "Deluxe";
                        break;
                    }
                case "Do":
                    {
                        LoaiPhong = "Double";
                        break;
                    }
                case "L":
                    {
                        LoaiPhong = "Lexury";
                        break;
                    }
                case "S":
                    {
                        LoaiPhong = "Single";
                        break;
                    }
                    default: { LoaiPhong = "Null";break; }
            }
            switch (tb_booking.Rows[0]["DoAn"].ToString())
            {
                case "khong":
                    {
                        An = "Khong";
                        break;
                    }
                case "AS":
                    {
                        An = "Ăn Sáng";
                        break;
                    }
                case "Buffer":
                    {
                        An = "Buffer";
                        break;
                    }
                default: { An = "Null"; break; }
            }
            DateTime d_in, d_out;
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
                 "<th>" + LoaiPhong + " </th>" +
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
                 "<th> Ăn Uống </th>" +
                 "<th>" + An + " </th>" +
                 "</tr> " +
                 "<tr>" +
                 "<th> Yêu Cầu Thêm </th>" +
                 "<th>" + tb_booking.Rows[0]["YeuCauThem"] + " </th>" +
                 "</tr> " +
                 "<tr>";               
        }
    }
}