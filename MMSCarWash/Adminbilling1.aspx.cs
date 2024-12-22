using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;
using System.Net.Mail;
using System.Diagnostics;
using System.Web.Services.Description;
namespace MMSCarWash
{
    public partial class Adminbilling1 : System.Web.UI.Page
    {
        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if(txtbookingid.Value.ToString()!=""&& Serviceid.Value.ToString()!="" && paymentid.Value.ToString()!="")
            { 

            booking();
            Service();
            Payment();
            Response.Redirect("AdminbillingPage2.aspx");
            }
            else
            {
                Response.Write("<script>alert('All Data Should Be Filled ')</script>");
            }
        }



        private void booking()
        {
            using (SqlConnection conn2 = new SqlConnection(strcon))
            {
                conn2.Open();
                SqlCommand cmd2 = new SqlCommand("SP_bookingTbl_VIEWArg", conn2);
                cmd2.CommandType = CommandType.StoredProcedure;

                SqlParameter p1 = new SqlParameter("@BookingID", SqlDbType.VarChar, 100);
                cmd2.Parameters.Add(p1).Value = txtbookingid.Value.ToString();


                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);

                if (ds2.Tables[0].Rows.Count > 0)
                {
                    Session["bookID"] = ds2.Tables[0].Rows[0]["BookingID"].ToString();
                    Session["Name"] = ds2.Tables[0].Rows[0]["yourname"].ToString();
                    Session["phone"] = ds2.Tables[0].Rows[0]["phnumber"].ToString();

                }

            }


        }




        private void Service()
        {
            using (SqlConnection conn2 = new SqlConnection(strcon))
            {
                conn2.Open();
                SqlCommand cmd2 = new SqlCommand("SP_CarserviceTbl_VIEWArg", conn2);
                cmd2.CommandType = CommandType.StoredProcedure;

                SqlParameter p1 = new SqlParameter("@ServiceID", SqlDbType.VarChar, 100);
                cmd2.Parameters.Add(p1).Value = Serviceid.Value.ToString();


                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);

               
                if (ds2.Tables[0].Rows.Count > 0)
                {
                    Session["serviceID"] = ds2.Tables[0].Rows[0]["ServiceID"].ToString();
                    Session["serviceName"] = ds2.Tables[0].Rows[0]["Servicename"].ToString();
                    Session["price"] = ds2.Tables[0].Rows[0]["Price"].ToString();
                    Session["gst"] = ds2.Tables[0].Rows[0]["GST"].ToString();

                }

            }


        }



        private void Payment()
        {
            using (SqlConnection conn2 = new SqlConnection(strcon))
            {
                conn2.Open();
                SqlCommand cmd2 = new SqlCommand("SP_PaymentTbl_VIEW1Arg", conn2);
                cmd2.CommandType = CommandType.StoredProcedure;

                SqlParameter p1 = new SqlParameter("@PaymentID", SqlDbType.VarChar, 100);
                cmd2.Parameters.Add(p1).Value = paymentid.Value.ToString();


                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);
                

                if (ds2.Tables[0].Rows.Count > 0)
                {
                    Session["paymentID"] = ds2.Tables[0].Rows[0]["PaymentID"].ToString();
                    Session["stotal"] = ds2.Tables[0].Rows[0]["SubTotal"].ToString();
                    Session["gstamount"] = ds2.Tables[0].Rows[0]["TotalGST"].ToString();
                    Session["totalamount"] = ds2.Tables[0].Rows[0]["TOTAL"].ToString();
                    Session["date"] = ds2.Tables[0].Rows[0]["Paymentdate"].ToString();

               
                }

            }


        }








    }


}