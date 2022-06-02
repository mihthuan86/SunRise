using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunRise.admin
{
    public partial class room_detail : System.Web.UI.Page
    {
        public string room;
        protected void Page_Load(object sender, EventArgs e)
        {
            room = Request.QueryString["rid"].ToString();
        }

    }
}