using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMSCarWash
{
    public partial class ServicePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingPage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("BookingPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("BookingPage.aspx");
        }
    }
}