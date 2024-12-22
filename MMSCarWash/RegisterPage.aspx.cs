using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;
using System.Text.RegularExpressions;

namespace MMSCarWash
{


    public partial class RegisterPage : System.Web.UI.Page
    {



        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistersave_Click(object sender, EventArgs e)
        {
            try
            {



                if (Adminid.Value.ToString() != " " && nameid.Value.ToString() != "" && roleid.Value.ToString() != "" && emailid.Value.ToString() != ""
                    && phnoid.Value.ToString() != "" && passwordid.Value.ToString() != ""
             && cpwdid.Value.ToString() != "")
                {


                    //E-mail Validations
                    string gemail = emailid.Value;
                    Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
                    Match match = regex.Match(gemail);
                    if (match.Success)
                    {


 





                        if (phnoid.Value.ToString().Length == 10 || phnoid.Value.ToString().Length == 12)
                        {

                            //Password validation
                            if (passwordid.Value.ToString().Length >= 8)
                            {


                                //Password And Conform Password Match Validation

                                if (passwordid.Value.ToString() == cpwdid.Value.ToString())
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
                                    Response.Write("Password And Conform Password Not Matched");
                                }

                            }
                            else
                            {
                                Response.Write("Password should be 8 character");
                            }

                        }
                        else
                        {
                            Response.Write("Mobile Number Should be 10 Or 12 Digits Only");
                        }



                    }
                    else
                    {
                        Response.Write("E-mail Formate Should be Like xyz@gmail.com");
                    }

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
    }
}