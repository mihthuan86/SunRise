using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunRise.admin
{
    public partial class index : System.Web.UI.Page
    {
        Data data = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string sql_select = "select * from Admin_KS where _username = N'" + txt_username.Text + "' and _password = N'" + txt_password.Text+"'";
            var dong = data.ExecuteReader(sql_select);
            if (dong.HasRows)
            {
                Session["user"] = txt_username.Text;
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write(" < script type = 'text/javascript' > alert('Sai username hoặc password') </ script > ");
            }
        }
    }
}