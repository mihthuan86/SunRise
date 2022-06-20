using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunRise.admin
{
    public partial class reservation : System.Web.UI.Page
    {
        Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = data.DataGV("select * from LoaiPhong");
            ddl_troom.DataSource = dt;
            ddl_troom.DataTextField = "TenLoai";
            ddl_troom.DataValueField = "ID_LoaiP";
            ddl_troom.DataBind();
        }

        protected void btn_DatPhong_Click(object sender, EventArgs e)
        {           
            string sql_insert = "insert into DatPhong (ID_LoaiP,Ho,Ten,Sdt,DinhDanh,Email,NgayDen,NgayTra,SoLuong,Giuong,YeuCauThem,TrangThai) values(N'"+ddl_troom.SelectedValue+"',N'"+txt_ho.Text+
                "',N'"+txt_ten.Text+"',"+txt_sodt.Text+",N'"+txt_id.Text+"',N'"+txt_email.Text+"','"+Convert.ToDateTime(txt_dayin.Text).ToShortDateString()+ "','" + Convert.ToDateTime(txt_dayout.Text).ToShortDateString()+"',"+
                int.Parse(txt_soluong.Text)+ ",N'" + ddl_loaigiuong.SelectedValue + "',N'" + txt_yeucau.Text + "','CXL')";//chưa xử lí
            Response.Write(sql_insert);
           int dong = data.ExcuteNonQuery(sql_insert);
            if(dong > 0)
            {
                Response.Write("<script type='text/javascript'> alert('Đặt phòng thành công, chúng tôi sẽ sớm liên hệ với bạn')</script>");
            }
            else
            {
            Response.Write("<script type='text/javascript'> alert('Loi')</script>");
            }
           
        }
    }
}