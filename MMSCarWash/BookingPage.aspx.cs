using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMSCarWash
{
    public partial class BookingPage : System.Web.UI.Page
    {
        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {

            try
            {



                if (txtbookingid.Value.ToString() != " " && yourname.Value.ToString() != "" && txtEmail.Value.ToString() != "" && txtphoneNumber.Value.ToString() != ""
                    && Carcatagory.SelectedValue.ToString() != "" && Package.SelectedValue.ToString() != ""
                    && Calendar1.SelectedDate.ToString() != ""
                    )
                {


                    SqlConnection conn = new SqlConnection(strcon);

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SP_bookingTbl_INSERT", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@BookingID", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = txtbookingid.Value.ToString();



                    SqlParameter p2 = new SqlParameter("@yourname", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = yourname.Value.ToString();



                    SqlParameter p4 = new SqlParameter("@emailaddress", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = txtEmail.Value.ToString();


                    SqlParameter p5 = new SqlParameter("@phnumber", SqlDbType.VarChar);
                    cmd.Parameters.Add(p5).Value = txtphoneNumber.Value.ToString();





                    SqlParameter p6 = new SqlParameter("@category", SqlDbType.VarChar);
                    cmd.Parameters.Add(p6).Value = Carcatagory.SelectedValue.ToString();


                    SqlParameter p7 = new SqlParameter("@package", SqlDbType.VarChar);
                    cmd.Parameters.Add(p7).Value = Package.SelectedValue.ToString();



                    SqlParameter p8 = new SqlParameter("@BookingDate", SqlDbType.DateTime);
                    cmd.Parameters.Add(p8).Value = Calendar1.SelectedDate.ToString();





                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("Data Send Successfully");

                        txtbookingid.Value = "";
                        yourname.Value = "";
                        txtEmail.Value = "";
                        txtphoneNumber.Value = "";
                        Carcatagory.SelectedIndex = -1;
                        Package.SelectedIndex = -1;
                        Calendar1.SelectedDate = DateTime.Now;
                    }
                    else
                    {
                        Response.Write("Data Send Failed");
                    }
                    conn.Close();


                }
                else
                {
                    Response.Write("All Data Should be Filled");
                }



            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void BtnBookingID_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("SP_bookingTbl_BOOKINGID", conn);
                cmd.CommandType = CommandType.StoredProcedure;



                var maxid = cmd.ExecuteScalar() as String;

                if (maxid == null)
                {
                    txtbookingid.Value = "MMB-000001";


                }
                else
                {
                    int intval = int.Parse(maxid.Substring(4, 6));
                    intval++;
                    txtbookingid.Value = String.Format("MMB-{000:000000}", intval);

                }

                conn.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }
    }
}