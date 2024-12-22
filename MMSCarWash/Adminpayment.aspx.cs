using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace MMSCarWash
{
    public partial class Adminpayment : System.Web.UI.Page
    {

        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnServiceID_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("SP_PaymentTbl_VIEWID", conn);
                cmd.CommandType = CommandType.StoredProcedure;



                var maxid = cmd.ExecuteScalar() as String;

                if (maxid == null)
                {
                    Paymentid.Value = "MMP-000001";


                }
                else
                {
                    int intval = int.Parse(maxid.Substring(4, 6));
                    intval++;
                    Paymentid.Value = String.Format("MMP-{000:000000}", intval);

                }

                conn.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }



        }

        protected void btnPaymentedit_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("SP_PaymentTbl_UPDATE1", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter p1 = new SqlParameter("@PaymentID", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = Paymentid.Value.ToString();



                SqlParameter p2 = new SqlParameter("@ServiceID", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = Serviceid.Value.ToString();



                SqlParameter p4 = new SqlParameter("@BookingID", SqlDbType.VarChar);
                cmd.Parameters.Add(p4).Value = Bookingid.Value.ToString();



                SqlParameter p41 = new SqlParameter("@Paymentmethod", SqlDbType.VarChar);
                cmd.Parameters.Add(p41).Value = PaymentMethod.Value.ToString();



                SqlParameter p5 = new SqlParameter("@SubTotal", SqlDbType.VarChar);
                cmd.Parameters.Add(p5).Value = Subtotal.Value.ToString();





                SqlParameter p6 = new SqlParameter("@TotalGST", SqlDbType.VarChar);
                cmd.Parameters.Add(p6).Value = TotalGst.Value.ToString();


                SqlParameter p7 = new SqlParameter("@TOTAL", SqlDbType.VarChar);
                cmd.Parameters.Add(p7).Value = Totalid.Value.ToString();



                SqlParameter p8 = new SqlParameter("@Paymentdate", SqlDbType.DateTime);
                cmd.Parameters.Add(p8).Value = Calendar1.SelectedDate.ToString();





                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("Data Send Successfully");

                    Paymentid.Value = "";
                    Serviceid.Value = "";
                    Bookingid.Value = "";
                    PaymentMethod.Value = "";
                    Subtotal.Value = "";
                    TotalGst.Value = "";
                    Totalid.Value = "";
                    Calendar1.SelectedDate = DateTime.Now;
                }
                else
                {
                    Response.Write("Data Send Failed");
                }
                conn.Close();





            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }



        }

        protected void btnPaymentsave_Click(object sender, EventArgs e)
        {

            try
            {



                if (Paymentid.Value.ToString() != " " && Serviceid.Value.ToString() != "" && Bookingid.Value.ToString() != "" && PaymentMethod.Value.ToString() != ""
                    && Subtotal.Value.ToString() != "" && TotalGst.Value.ToString() != ""
             && Totalid.Value.ToString() != "" && Calendar1.SelectedDate.ToString() != ""
                    )
                {


                    SqlConnection conn = new SqlConnection(strcon);

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SP_PaymentTbl_INSERT1", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@PaymentID", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = Paymentid.Value.ToString();



                    SqlParameter p2 = new SqlParameter("@ServiceID", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = Serviceid.Value.ToString();



                    SqlParameter p4 = new SqlParameter("@BookingID", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = Bookingid.Value.ToString();



                    SqlParameter p41 = new SqlParameter("@Paymentmethod", SqlDbType.VarChar);
                    cmd.Parameters.Add(p41).Value = PaymentMethod.Value.ToString();



                    SqlParameter p5 = new SqlParameter("@SubTotal", SqlDbType.VarChar);
                    cmd.Parameters.Add(p5).Value = Subtotal.Value.ToString();





                    SqlParameter p6 = new SqlParameter("@TotalGST", SqlDbType.VarChar);
                    cmd.Parameters.Add(p6).Value = TotalGst.Value.ToString();


                    SqlParameter p7 = new SqlParameter("@TOTAL", SqlDbType.VarChar);
                    cmd.Parameters.Add(p7).Value = Totalid.Value.ToString();



                    SqlParameter p8 = new SqlParameter("@Paymentdate", SqlDbType.DateTime);
                    cmd.Parameters.Add(p8).Value = Calendar1.SelectedDate.ToString();





                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("Data Send Successfully");

                        Paymentid.Value = "";
                        Serviceid.Value = "";
                        Bookingid.Value = "";
                        PaymentMethod.Value = "";
                        Subtotal.Value = "";
                        TotalGst.Value = "";
                        Totalid.Value = "";
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

        protected void btnPaymentclear_Click(object sender, EventArgs e)
        {
            Paymentid.Value = "";
            Serviceid.Value = "";
            PaymentMethod.Value = "";
            Subtotal.Value = "";
            TotalGst.Value = "";
            Totalid.Value = "";
            Calendar1.SelectedDate = DateTime.Now;

        }

        protected void btnPaymentsearch_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("SP_PaymentTbl_SEARCH1", conn);
                cmd.CommandType = CommandType.StoredProcedure;




                SqlParameter p2 = new SqlParameter("@searchdata", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = txtsearch.Value.ToString();



                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                ada.Fill(ds);


                GridViewPayment.DataSource = ds.Tables[0];


                GridViewPayment.DataBind();




                conn.Close();

            }

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }

        protected void btnPaymentview_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();

                SqlCommand cmd = new SqlCommand("SP_PaymentTbl_VIEW1", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                da.Fill(ds);

                GridViewPayment.DataSource = ds.Tables[0];

                GridViewPayment.DataBind();
                conn.Close();



            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }

        protected void GridViewPayment_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            try
            {
                if (GridViewPayment.Rows.Count > 0 && e.RowIndex >= 0)
                {
                    string id = GridViewPayment.DataKeys[e.RowIndex].Value.ToString();

                    using (SqlConnection conn = new SqlConnection(strcon))
                    {
                        conn.Open();

                        SqlCommand cmd = new SqlCommand("SP_PaymentTbl_DELETE1", conn);


                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PaymentID", id);

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

        protected void GridViewPayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            Paymentid.Value = GridViewPayment.SelectedRow.Cells[3].Text.ToString();
            Serviceid.Value = GridViewPayment.SelectedRow.Cells[4].Text.ToString();
            Bookingid.Value = GridViewPayment.SelectedRow.Cells[5].Text.ToString();
            PaymentMethod.Value = GridViewPayment.SelectedRow.Cells[6].Text.ToString();

            Subtotal.Value = GridViewPayment.SelectedRow.Cells[7].Text.ToString();
            TotalGst.Value = GridViewPayment.SelectedRow.Cells[8].Text.ToString();
            Totalid.Value = GridViewPayment.SelectedRow.Cells[9].Text.ToString();

            Calendar1.SelectedDate = Convert.ToDateTime(GridViewPayment.SelectedRow.Cells[10].Text.ToString());


        }


 
        protected void BtnTotalamount_Click(object sender, EventArgs e)
        {

            if (Subtotal.Value.ToString() != "" && TotalGst.Value.ToString() != "")
            {
                Totalid.Value = Convert.ToString(Convert.ToInt32(Subtotal.Value) + Convert.ToInt32(TotalGst.Value));
            }
            else
            {
                Response.Write("<script>alert(' You Should be Filled Sub Total  Amount and Total GST Amount!')</script>");
            }
 

        }
    }
}