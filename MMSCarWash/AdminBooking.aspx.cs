using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Newtonsoft.Json.Linq;

namespace MMSCarWash
{
    public partial class AdminBooking : System.Web.UI.Page
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
                    && Carcatagory.SelectedValue.ToString() !="" && Package.SelectedValue.ToString() !=""
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
                        Package.SelectedIndex =-1;
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

        protected void btnedit_Click(object sender, EventArgs e)
        {

            try
            {




                    SqlConnection conn = new SqlConnection(strcon);

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SP_bookingTbl_UPDATE", conn);
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
                        Response.Write("Data Updated Successfully");

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
                        Response.Write("Data Updated Failed");
                    }
                    conn.Close();





            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void btnclear_Click(object sender, EventArgs e)
        {

            txtbookingid.Value = "";
            yourname.Value = "";
            txtEmail.Value = "";
            txtphoneNumber.Value = "";
            Carcatagory.SelectedIndex = -1;
            Package.SelectedIndex = -1;
            Calendar1.SelectedDate = DateTime.Now;



            //DateTime today = DateTime.Today;
            //Calendar1.TodaysDate = today;
            //Calendar1.SelectedDate = Calendar1.TodaysDate;


        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("SP_bookingTbl_SEARCH", conn);
                cmd.CommandType = CommandType.StoredProcedure;




                SqlParameter p2 = new SqlParameter("@searchdata", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = txtsearch.Value.ToString();



                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                ada.Fill(ds);


                GridViewBooking.DataSource = ds.Tables[0];


                GridViewBooking.DataBind();




                conn.Close();

            }

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();

                SqlCommand cmd = new SqlCommand("SP_bookingTbl_VIEW", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                da.Fill(ds);

                GridViewBooking.DataSource = ds.Tables[0];

                GridViewBooking.DataBind();
                conn.Close();



            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }

        protected void GridViewBooking_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            try
            {
                if (GridViewBooking.Rows.Count > 0 && e.RowIndex >= 0)
                {
                    string id = GridViewBooking.DataKeys[e.RowIndex].Value.ToString();

                    using (SqlConnection conn = new SqlConnection(strcon))
                    {
                        conn.Open();

                        SqlCommand cmd = new SqlCommand("SP_bookingTbl_DELETE", conn);


                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@BookingID", id);

                        int i = cmd.ExecuteNonQuery();

                        if (i > 0)
                        {
                            Response.Write("Data Deleted Successfully");



                        }
                        else
                        {
                            Response.Write("Data Deleted Failed");
                        }
                        conn.Close();

                    }
                }
                else
                {
                    Response.Write("Invalid operation");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }

        protected void GridViewBooking_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtbookingid.Value = GridViewBooking.SelectedRow.Cells[3].Text.ToString();
            yourname.Value = GridViewBooking.SelectedRow.Cells[4].Text.ToString();
            txtEmail.Value = GridViewBooking.SelectedRow.Cells[5].Text.ToString();
            txtphoneNumber.Value = GridViewBooking.SelectedRow.Cells[6].Text.ToString();


            Carcatagory.Text = GridViewBooking.SelectedRow.Cells[7].Text.ToString();
            Package.Text= GridViewBooking.SelectedRow.Cells[8].Text.ToString();
            // Calendar1. = GridViewBooking.SelectedRow.Cells[9].Text.ToString();

            Calendar1.SelectedDate = Convert.ToDateTime(GridViewBooking.SelectedRow.Cells[9].Text.ToString());
        }

        protected void GridViewBooking_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "ACTION";
                e.Row.Cells[1].Text = "DELETE";

                e.Row.Cells[2].Text = "S.NO";
                e.Row.Cells[3].Text = "BOOKING ID";

                e.Row.Cells[4].Text = "YOUR NAME";
                e.Row.Cells[5].Text = "E-MAIL ADDRESS";
                e.Row.Cells[6].Text = "PHONE NUMBER";
                e.Row.Cells[7].Text = "CAR CATAGORY";
                e.Row.Cells[8].Text = "PACKAGES";
                e.Row.Cells[9].Text = "BOOKING DATE";
                //e.Row.Cells[10].Text = "COURSE NAME";
                //e.Row.Cells[11].Text = "FEES";
                //e.Row.Cells[12].Text = "PAID STATUS";

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