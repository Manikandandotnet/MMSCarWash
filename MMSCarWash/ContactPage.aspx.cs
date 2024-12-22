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
    public partial class ContactPage : System.Web.UI.Page
    {

        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsend_Click(object sender, EventArgs e)
        {
            try
            {



                if (txtFullName.Value.ToString() != " " && txtphnumber.Value.ToString() != "" && txtEmailId.Value.ToString() != "" && txtmessage.Value.ToString() != "")
                {


                    SqlConnection conn = new SqlConnection(strcon);

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SP_contactTbl_INSERT", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@fullname", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = txtFullName.Value.ToString();



                    SqlParameter p2 = new SqlParameter("@phoneno", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = txtphnumber.Value.ToString();



                    SqlParameter p4 = new SqlParameter("@emailaddress", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = txtEmailId.Value.ToString();


                    SqlParameter p5 = new SqlParameter("@message", SqlDbType.VarChar);
                    cmd.Parameters.Add(p5).Value = txtmessage.Value.ToString();





                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("<script>alert('Data Send Successfully')<script>");

                        txtFullName.Value = "";
                        txtphnumber.Value = "";
                        txtEmailId.Value = "";
                        txtmessage.Value = "";


                    }
                    else
                    {
                        Response.Write("<script>alert('Data Send Failed')<script>");
                    }
                    conn.Close();


                }
                else
                {
                    Response.Write("<script>alert('All Data Should be Filled')<script>");
                }



            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }
    }
}