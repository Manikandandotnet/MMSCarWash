using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Web.Services.Description;

namespace MMSCarWash
{
    public partial class AdminRegister : System.Web.UI.Page
    {


        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdminID_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("RegisterAdmin_VIEWID", conn);
                cmd.CommandType = CommandType.StoredProcedure;



                var maxid = cmd.ExecuteScalar() as String;

                if (maxid == null)
                {
                    Adminid.Value = "MME-000001";


                }
                else
                {
                    int intval = int.Parse(maxid.Substring(4, 6));
                    intval++;
                    Adminid.Value = String.Format("MME-{000:000000}", intval);

                }

                conn.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }

        protected void btnRegisteredit_Click(object sender, EventArgs e)
        {
            try
            {



                    SqlConnection conn = new SqlConnection(strcon);

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("RegisterAdminUPDATE", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@AdminID", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = Adminid.Value.ToString();



                    SqlParameter p2 = new SqlParameter("@Name", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = nameid.Value.ToString();



                    SqlParameter p4 = new SqlParameter("@Role", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = roleid.Value.ToString();



                    SqlParameter p41 = new SqlParameter("@Email", SqlDbType.VarChar);
                    cmd.Parameters.Add(p41).Value = emailid.Value.ToString();



                    SqlParameter p5 = new SqlParameter("@PhoneNo", SqlDbType.VarChar);
                    cmd.Parameters.Add(p5).Value = phnoid.Value.ToString();





                    SqlParameter p6 = new SqlParameter("@Password", SqlDbType.VarChar);
                    cmd.Parameters.Add(p6).Value = passwordid.Value.ToString();


                    SqlParameter p7 = new SqlParameter("@ConfirmPassword", SqlDbType.VarChar);
                    cmd.Parameters.Add(p7).Value = cpwdid.Value.ToString();






                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("Data Updated Successfully");

                        Adminid.Value = "";
                        nameid.Value = "";
                        roleid.Value = "";
                        emailid.Value = "";
                        phnoid.Value = "";
                        passwordid.Value = "";
                        cpwdid.Value = "";

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

        protected void btnRegistersave_Click(object sender, EventArgs e)
        {
            try
            {



                if (Adminid.Value.ToString() != " " && nameid.Value.ToString() != "" && roleid.Value.ToString() != "" && emailid.Value.ToString() != ""
                    && phnoid.Value.ToString() != "" && passwordid.Value.ToString() != ""
             && cpwdid.Value.ToString() != "")
                {


                    SqlConnection conn = new SqlConnection(strcon);

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("RegisterAdmin_Insert", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@AdminID", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = Adminid.Value.ToString();



                    SqlParameter p2 = new SqlParameter("@Name", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = nameid.Value.ToString();



                    SqlParameter p4 = new SqlParameter("@Role", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = roleid.Value.ToString();



                    SqlParameter p41 = new SqlParameter("@Email", SqlDbType.VarChar);
                    cmd.Parameters.Add(p41).Value = emailid.Value.ToString();



                    SqlParameter p5 = new SqlParameter("@PhoneNo", SqlDbType.VarChar);
                    cmd.Parameters.Add(p5).Value = phnoid.Value.ToString();





                    SqlParameter p6 = new SqlParameter("@Password", SqlDbType.VarChar);
                    cmd.Parameters.Add(p6).Value = passwordid.Value.ToString();


                    SqlParameter p7 = new SqlParameter("@ConfirmPassword", SqlDbType.VarChar);
                    cmd.Parameters.Add(p7).Value = cpwdid.Value.ToString();






                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("Data Send Successfully");

                        Adminid.Value = "";
                        nameid.Value = "";
                        roleid.Value = "";
                        emailid.Value = "";
                        phnoid.Value = "";
                        passwordid.Value = "";
                        cpwdid.Value = "";
                        
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

        protected void btnRegisterclear_Click(object sender, EventArgs e)
        {

            Adminid.Value = "";
            nameid.Value = "";
            roleid.Value = "";
            emailid.Value = "";
            phnoid.Value = "";
            passwordid.Value = "";
            cpwdid.Value = "";


        }

        protected void btnRegistersearch_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("RegisterAdmin_SEARCH", conn);
                cmd.CommandType = CommandType.StoredProcedure;




                SqlParameter p2 = new SqlParameter("@inputdata", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = txtsearch.Value.ToString();



                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                ada.Fill(ds);


                GridViewRegister.DataSource = ds.Tables[0];


                GridViewRegister.DataBind();




                conn.Close();

            }

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void btnRegisterview_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();

                SqlCommand cmd = new SqlCommand("RegisterAdmin_VIEW", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                da.Fill(ds);

                GridViewRegister.DataSource = ds.Tables[0];

                GridViewRegister.DataBind();
                conn.Close();



            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void GridViewRegister_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            try
            {
                if (GridViewRegister.Rows.Count > 0 && e.RowIndex >= 0)
                {
                    string id = GridViewRegister.DataKeys[e.RowIndex].Value.ToString();

                    using (SqlConnection conn = new SqlConnection(strcon))
                    {
                        conn.Open();

                        SqlCommand cmd = new SqlCommand("RegisterAdmin_DELETE", conn);


                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@AdminID", id);

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

        protected void GridViewRegister_SelectedIndexChanged(object sender, EventArgs e)
        {
            Adminid.Value = GridViewRegister.SelectedRow.Cells[3].Text.ToString();
            nameid.Value = GridViewRegister.SelectedRow.Cells[4].Text.ToString();
            roleid.Value = GridViewRegister.SelectedRow.Cells[5].Text.ToString();
            emailid.Value = GridViewRegister.SelectedRow.Cells[6].Text.ToString();

            phnoid.Value = GridViewRegister.SelectedRow.Cells[7].Text.ToString();
            passwordid.Value = GridViewRegister.SelectedRow.Cells[8].Text.ToString();
         cpwdid.Value = GridViewRegister.SelectedRow.Cells[9].Text.ToString();


        }
    }
}