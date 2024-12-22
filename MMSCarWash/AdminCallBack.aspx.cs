using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMSCarWash
{
    public partial class AdminCallBack : System.Web.UI.Page
    {

        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnsave_Click(object sender, EventArgs e)
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
                        BtnRadiocatagory.SelectedIndex =-1;
                        BtnRadioPackage.SelectedIndex =-1;
                    
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
                SqlCommand cmd = new SqlCommand("SP_Request_tbl_UPDATE", conn);
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
                    Response.Write("Data Update Successfully");

                    name.Value = "";
                    mobileno.Value = "";
                    emailid.Value = "";
                    Location.Value = "";
                    BtnRadiocatagory.SelectedIndex = -1;
                    BtnRadioPackage.SelectedIndex = -1;

                }
                else
                {
                    Response.Write("Data Update Failed");
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
            name.Value = "";
            mobileno.Value = "";
            emailid.Value = "";
            Location.Value = "";
            BtnRadiocatagory.SelectedIndex = -1;
            BtnRadioPackage.SelectedIndex = -1;

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("SP_Request_tbl_SEARCH", conn);
                cmd.CommandType = CommandType.StoredProcedure;




                SqlParameter p2 = new SqlParameter("@inputdata", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = search.Value.ToString();



                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                ada.Fill(ds);


                GridViewCallBack.DataSource = ds.Tables[0];


                GridViewCallBack.DataBind();




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

                SqlCommand cmd = new SqlCommand("SP_Request_tbl_View", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                da.Fill(ds);

                GridViewCallBack.DataSource = ds.Tables[0];

                GridViewCallBack.DataBind();
                conn.Close();



            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }

        protected void GridViewCallBack_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.IsPostBack) 
            { 
            name.Value = GridViewCallBack.SelectedRow.Cells[3].Text.ToString();
           mobileno.Value = GridViewCallBack.SelectedRow.Cells[4].Text.ToString();
            emailid.Value = GridViewCallBack.SelectedRow.Cells[5].Text.ToString();
            Location.Value = GridViewCallBack.SelectedRow.Cells[6].Text.ToString();
            BtnRadiocatagory.Text= GridViewCallBack.SelectedRow.Cells[7].Text.ToString();
            BtnRadioPackage.Text = GridViewCallBack.SelectedRow.Cells[8].Text.ToString();
            }
        }

        protected void GridViewCallBack_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                if (GridViewCallBack.Rows.Count > 0 && e.RowIndex >= 0)
                {
                    string id = GridViewCallBack.DataKeys[e.RowIndex].Value.ToString();

                    using (SqlConnection conn = new SqlConnection(strcon))
                    {
                        conn.Open();

                        SqlCommand cmd = new SqlCommand("SP_Request_tbl_DELETE", conn);


                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@emailid", id);

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

        protected void BtnRadiocatagory_SelectedIndexChanged(object sender, EventArgs e)
        {
            String string1 = BtnRadiocatagory.SelectedItem.Text;
        }

        protected void BtnRadioPackage_SelectedIndexChanged(object sender, EventArgs e)
        {
            String string2 = BtnRadioPackage.SelectedItem.Text;
        }

        protected void GridViewCallBack_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "ACTION";
                e.Row.Cells[1].Text = "DELETE";

                e.Row.Cells[2].Text = "S.NO";
                e.Row.Cells[3].Text = "NAME";

                e.Row.Cells[4].Text = "MOBILE NUMBER";
                e.Row.Cells[5].Text = "E-MAIL ID";
                e.Row.Cells[6].Text = "LOCATION";
                e.Row.Cells[7].Text = "CAR CATAGORY";
                e.Row.Cells[8].Text = "PACKAGES";
                //e.Row.Cells[9].Text = "ADDRESS";
                //e.Row.Cells[10].Text = "COURSE NAME";
                //e.Row.Cells[11].Text = "FEES";
                //e.Row.Cells[12].Text = "PAID STATUS";



            }

        }
    }
}