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
    public partial class index : System.Web.UI.Page
    {

        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {



                if (name.Value.ToString() != "" && mobileno.Value.ToString() != "" && emailid.Value.ToString() != "" && Location.Value.ToString() != "" && BtnRadiocatagory.SelectedItem.ToString() != ""

                    && BtnRadioPackage.SelectedItem.ToString() != ""

                    )
                {


                    SqlConnection conn = new SqlConnection(strcon);

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SP_Request_tbl_insert", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@name", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = name.Value.ToString();



                    SqlParameter p2 = new SqlParameter("@mobileno", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = mobileno.Value.ToString();



                    SqlParameter p4 = new SqlParameter("@emailid", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = emailid.Value.ToString();


                    SqlParameter p5 = new SqlParameter("@location", SqlDbType.VarChar);
                    cmd.Parameters.Add(p5).Value = Location.Value.ToString();



                    SqlParameter p6 = new SqlParameter("@carcatagory", SqlDbType.VarChar);
                    cmd.Parameters.Add(p6).Value = BtnRadiocatagory.SelectedItem.ToString();


                    SqlParameter p7 = new SqlParameter("@package", SqlDbType.VarChar);
                    cmd.Parameters.Add(p7).Value = BtnRadioPackage.SelectedItem.ToString();




                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("Data Send Successfully");

                        name.Value = "";
                        mobileno.Value = "";
                        emailid.Value = "";
                        Location.Value = "";
                        BtnRadiocatagory.SelectedIndex = -1;
                        BtnRadioPackage.SelectedIndex = -1;

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

        protected void BtnRadiocatagory_SelectedIndexChanged(object sender, EventArgs e)
        {
            String string1 = BtnRadiocatagory.SelectedItem.Text;
        }

        protected void BtnRadioPackage_SelectedIndexChanged(object sender, EventArgs e)
        {
            String string2 = BtnRadioPackage.SelectedItem.Text;

        }
    }
}