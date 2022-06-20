using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunRise.admin
{
    public partial class home : System.Web.UI.Page
    {
        public Data data;
        public string user;
        public DataTable tb_phongmoi;
        public DataTable tb_phongxl;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                user = Session["user"].ToString();
                data = new Data();              
                tb_phongmoi = data.DataGV("select * from DatPhong where TrangThai='CXL'"); //chưa xử lí
                tb_phongxl = data.DataGV("select * from DatPhong where TrangThai='DXL'"); //đã thanh toán
            }
        }
        
    }
}