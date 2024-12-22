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
    public partial class AdminContact : System.Web.UI.Page
    {

        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            try
            {




                    SqlConnection conn = new SqlConnection(strcon);

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SP_contactTbl_UPDATE", conn);
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
                        Response.Write("Data Update Successfully");

                        txtFullName.Value = "";
                        txtphnumber.Value = "";
                        txtEmailId.Value = "";
                        txtmessage.Value = "";


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

        protected void btnsave_Click(object sender, EventArgs e)
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
                        Response.Write("Data Send Successfully");

                        txtFullName.Value = "";
                        txtphnumber.Value = "";
                        txtEmailId.Value = "";
                        txtmessage.Value = "";


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

        protected void btnclear_Click(object sender, EventArgs e)
        {

            txtFullName.Value = "";
            txtphnumber.Value = "";
            txtEmailId.Value = "";
            txtmessage.Value = "";

        }

        protected void GridViewContact_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtFullName.Value = GridViewContact.SelectedRow.Cells[3].Text.ToString();
            txtphnumber.Value = GridViewContact.SelectedRow.Cells[4].Text.ToString();
            txtEmailId.Value = GridViewContact.SelectedRow.Cells[5].Text.ToString();
            txtmessage.Value = GridViewContact.SelectedRow.Cells[6].Text.ToString();

        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();

                SqlCommand cmd = new SqlCommand("SP_contactTbl_VIEW", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                da.Fill(ds);

                GridViewContact.DataSource = ds.Tables[0];

                GridViewContact.DataBind();
                conn.Close();



            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void GridViewContact_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                if (GridViewContact.Rows.Count > 0 && e.RowIndex >= 0)
                {
                    string id = GridViewContact.DataKeys[e.RowIndex].Value.ToString();

                    using (SqlConnection conn = new SqlConnection(strcon))
                    {
                        conn.Open();

                        SqlCommand cmd = new SqlCommand("SP_contactTbl_DELETE", conn);


                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@emailaddress", id);

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

        protected void GridViewContact_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "ACTION";
                e.Row.Cells[1].Text = "DELETE";

                e.Row.Cells[2].Text = "S.NO";
                e.Row.Cells[3].Text = "FULL NAME";

                e.Row.Cells[4].Text = "MOBILE NUMBER";
                e.Row.Cells[5].Text = "E-MAIL ID";
                e.Row.Cells[6].Text = "MESSAGE";



            }


        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("SP_contactTbl_SEARCH", conn);
                cmd.CommandType = CommandType.StoredProcedure;




                SqlParameter p2 = new SqlParameter("@inputdata", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = search.Value.ToString();



                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                ada.Fill(ds);


                GridViewContact.DataSource = ds.Tables[0];


                GridViewContact.DataBind();




                conn.Close();

            }

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }
    }
}