using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMSCarWash
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminRegister.aspx");
        }

        protected void BtnCallBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCallBack.aspx");

        }

        protected void BtnContactDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminContact.aspx");

        }

        protected void BtnBookingDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBooking.aspx");

        }

        protected void BtnServiceDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCarService.aspx");

        }

        protected void BtnPaymentDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminpayment.aspx");

        }
    }
}