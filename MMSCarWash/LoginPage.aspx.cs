using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Antlr.Runtime.Misc;

namespace MMSCarWash
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistersave_Click(object sender, EventArgs e)
        {


            try
            {
                if (Adminid.Value.ToString() != " " && nameid.Value.ToString() != "" && roleid.Value.ToString() != "" && cpwdid.Text.ToString() != "")
                {



                    SqlConnection conn = new SqlConnection(strcon);

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SP_LOGINCHECK", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@AdminID", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = Adminid.Value.ToString();



                    SqlParameter p2 = new SqlParameter("@Name", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = nameid.Value.ToString();



                    SqlParameter p4 = new SqlParameter("@Role", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = roleid.Value.ToString();



                   

                    SqlParameter p7 = new SqlParameter("@ConfirmPassword", SqlDbType.VarChar);
                    cmd.Parameters.Add(p7).Value = cpwdid.Text.ToString();




                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();


                    da.Fill(ds);
                    DataTable dt = new DataTable();
                    int i = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());


                    if(i > 0)
                    {

                        Response.Write("<script>alert('Login succesfully Done')</script>");

                        if (roleid.Value.ToString()== "Admin")
                        {


                            Response.Redirect("AdminPage.aspx");






                            Adminid.Value = "";
                            nameid.Value = "";
                            roleid.Value = "";
                            cpwdid.Text = "";



                        }
                        else if (roleid.Value.ToString() == "Manager")
                        {





                            Adminid.Value = "";
                            nameid.Value = "";
                            roleid.Value = "";
                            cpwdid.Text = "";


                        }
                        else if (roleid.Value.ToString() == "Staff")
                        {



                            Response.Redirect("Adminbilling1.aspx");



                            Adminid.Value = "";
                            nameid.Value = "";
                            roleid.Value = "";
                            cpwdid.Text = "";




                        }
                        else
                        {

                            Response.Write("<script>alert('You Should Contact Admin!')</script>");



                            Adminid.Value = "";
                            nameid.Value = "";
                            roleid.Value = "";
                            cpwdid.Text = "";


                        }

                    }
                    else
                    {
                        Response.Write("<script>alert('Login Failure')</script>");
                    }





                }
                else
                {
                    Response.Write("<script>alert('All Data Should be Filled')</script>");
                }





            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }






        }
    }
}