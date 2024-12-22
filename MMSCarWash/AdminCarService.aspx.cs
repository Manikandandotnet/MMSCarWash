using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMSCarWash
{
    public partial class AdminCarService : System.Web.UI.Page
    {
        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnServicesave_Click(object sender, EventArgs e)
        {
            
       if(FileUpload1.HasFile)
       { 
            try
            {

                    string extenstion = Path.GetExtension(FileUpload1.FileName);

             if (extenstion == ".jpg" || extenstion == ".png" || extenstion == ".jpeg")
             { 
                //Extract Image File Name.
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                //Set the Image File Path.
                string filePath = "~/ServerProfile/" + fileName;

                //Save the Image File in Folder.
                FileUpload1.PostedFile.SaveAs(Server.MapPath(filePath));


              //  string filePath = Server.MapPath("~/ServerProfile/" + fileName);
                //FileUpload1.PostedFile.SaveAs(filePath);



                if (serviceid.Value.ToString() != " " && Servicename.Value.ToString() != "" && description.Value.ToString() != "" && price.Value.ToString() != ""
                    && gst.Value.ToString() != "" && Duration.Value.ToString() != ""
                    //&& btnUpload.Value.ToString() != ""
                    )
                {


                    SqlConnection conn = new SqlConnection(strcon);

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SP_CarserviceTbl_INSERT", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@ServiceID", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = serviceid.Value.ToString();



                    SqlParameter p2 = new SqlParameter("@Servicename", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = Servicename.Value.ToString();



                    SqlParameter p4 = new SqlParameter("@Description", SqlDbType.VarChar);
                    cmd.Parameters.Add(p4).Value = description.Value.ToString();


                    SqlParameter p5 = new SqlParameter("@Price", SqlDbType.Float);
                    cmd.Parameters.Add(p5).Value = price.Value.ToString();





                    SqlParameter p6 = new SqlParameter("@GST", SqlDbType.Float);
                    cmd.Parameters.Add(p6).Value = gst.Value.ToString();


                    SqlParameter p7 = new SqlParameter("@Duration", SqlDbType.VarChar);
                    cmd.Parameters.Add(p7).Value = Duration.Value.ToString();



                    SqlParameter p8 = new SqlParameter("@ImagePath", SqlDbType.VarChar);
                    cmd.Parameters.Add(p8).Value = filePath.ToString();





                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("Data Send Successfully");

                        serviceid.Value = "";
                        Servicename.Value = "";
                        description.Value = "";
                        price.Value = "";
                        gst.Value = "";
                        Duration.Value = "";


                        Response.Redirect(Request.Url.AbsoluteUri);

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

             else
             {
               Response.Write("Only accepted jpg, jpeg and png Images ! ");
             }

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            }



        }

        protected void btnServiceedit_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {

            
            try
            {


                    string extenstion = Path.GetExtension(FileUpload1.FileName);

                    if (extenstion == ".jpg" || extenstion == ".png" || extenstion == ".jpeg")
                    {



                        //Extract Image File Name.
                        string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                        //Set the Image File Path.
                        string filePath = "~/ServerProfile/" + fileName;

                        //Save the Image File in Folder.
                        FileUpload1.PostedFile.SaveAs(Server.MapPath(filePath));







                        SqlConnection conn = new SqlConnection(strcon);

                        conn.Open();
                        SqlCommand cmd = new SqlCommand("SP_CarserviceTbl_UPDATE", conn);
                        cmd.CommandType = CommandType.StoredProcedure;

                        SqlParameter p1 = new SqlParameter("@ServiceID", SqlDbType.VarChar);
                        cmd.Parameters.Add(p1).Value = serviceid.Value.ToString();



                        SqlParameter p2 = new SqlParameter("@Servicename", SqlDbType.VarChar);
                        cmd.Parameters.Add(p2).Value = Servicename.Value.ToString();



                        SqlParameter p4 = new SqlParameter("@Description", SqlDbType.VarChar);
                        cmd.Parameters.Add(p4).Value = description.Value.ToString();


                        SqlParameter p5 = new SqlParameter("@Price", SqlDbType.Float);
                        cmd.Parameters.Add(p5).Value = price.Value.ToString();





                        SqlParameter p6 = new SqlParameter("@GST", SqlDbType.Float);
                        cmd.Parameters.Add(p6).Value = gst.Value.ToString();


                        SqlParameter p7 = new SqlParameter("@Duration", SqlDbType.VarChar);
                        cmd.Parameters.Add(p7).Value = Duration.Value.ToString();



                        SqlParameter p8 = new SqlParameter("@ImagePath", SqlDbType.VarChar);
                        cmd.Parameters.Add(p8).Value = FileUpload1.ToString();





                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            Response.Write("Data Updated Successfully");

                            serviceid.Value = "";
                            Servicename.Value = "";
                            description.Value = "";
                            price.Value = "";
                            gst.Value = "";
                            Duration.Value = "";


                        }
                        else
                        {
                            Response.Write("Data Updated Failed");
                        }
                        conn.Close();

                    }
                    else
                    {
                        Response.Write("Only accepted jpg, jpeg and png Images ! ");

                    }



                }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            }
        }

        protected void btnServiceclear_Click(object sender, EventArgs e)
        {


            serviceid.Value = "";
            Servicename.Value = "";
            description.Value = "";
            price.Value = "";
            gst.Value = "";
            Duration.Value = "";


        }

        protected void btnServicesearch_Click(object sender, EventArgs e)
        {



            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("SP_CarserviceTbl_SEARCH", conn);
                cmd.CommandType = CommandType.StoredProcedure;




                SqlParameter p2 = new SqlParameter("@searchdata", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = txtsearch.Value.ToString();



                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                ada.Fill(ds);


                GridViewService.DataSource = ds.Tables[0];


                GridViewService.DataBind();




                conn.Close();

            }

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }









        }

        protected void btnServiceview_Click(object sender, EventArgs e)
        {
 
            try
            {

                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();

                SqlCommand cmd = new SqlCommand("SP_CarserviceTbl_VIEW", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                da.Fill(ds);

                GridViewService.DataSource = ds.Tables[0];

                GridViewService.DataBind();
                conn.Close();



            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            
        }

        protected void BtnServiceID_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                conn.Open();
                SqlCommand cmd = new SqlCommand("SP_CarserviceTbl_VIEWID", conn);
                cmd.CommandType = CommandType.StoredProcedure;



                var maxid = cmd.ExecuteScalar() as String;

                if (maxid == null)
                {
                    serviceid.Value = "MMS-000001";


                }
                else
                {
                    int intval = int.Parse(maxid.Substring(4, 6));
                    intval++;
                    serviceid.Value = String.Format("MMS-{000:000000}", intval);

                }

                conn.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void Upload(object sender, EventArgs e)
        {
            //Extract Image File Name.
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

            //Set the Image File Path.
            string filePath = "~/Uploads/" + fileName;

            //Save the Image File in Folder.
            FileUpload1.PostedFile.SaveAs(Server.MapPath(filePath));

            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                string sql = "INSERT INTO Files VALUES(@Name, @Path)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", fileName);
                    cmd.Parameters.AddWithValue("@Path", filePath);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            Response.Redirect(Request.Url.AbsoluteUri);

        }

        protected void GridViewService_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                if (GridViewService.Rows.Count > 0 && e.RowIndex >= 0)
                {
                    string id = GridViewService.DataKeys[e.RowIndex].Value.ToString();

                    using (SqlConnection conn = new SqlConnection(strcon))
                    {
                        conn.Open();

                        SqlCommand cmd = new SqlCommand("SP_CarserviceTbl_DELETE", conn);


                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ServiceID", id);

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

        protected void GridViewService_SelectedIndexChanged(object sender, EventArgs e)
        {
            serviceid.Value = GridViewService.SelectedRow.Cells[3].Text.ToString();
            Servicename.Value = GridViewService.SelectedRow.Cells[4].Text.ToString();
            description.Value = GridViewService.SelectedRow.Cells[5].Text.ToString();
            price.Value = GridViewService.SelectedRow.Cells[6].Text.ToString();


            gst.Value = GridViewService.SelectedRow.Cells[7].Text.ToString();
            Duration.Value = GridViewService.SelectedRow.Cells[8].Text.ToString();

           



        }

        //protected void GridViewService_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    //if (e.Row.RowType == DataControlRowType.Header)
        //    //{
        //    //    e.Row.Cells[0].Text = "ACTION";
        //    //    e.Row.Cells[1].Text = "DELETE";

        //    //    e.Row.Cells[2].Text = "S.NO";
        //    //    e.Row.Cells[3].Text = "SERVICE ID";

        //    //    e.Row.Cells[4].Text = "SERVICE NAME";
        //    //    e.Row.Cells[5].Text = "DESCRIPTION";
        //    //    e.Row.Cells[6].Text = "PRICE";
        //    //    e.Row.Cells[7].Text = "GST";
        //    //    e.Row.Cells[8].Text = "DURATION";
        //    //   // e.Row.Cells[9]. = "IMAGE PATH";

        //       // e.Row.Cells[10].Text = "IMAGE";
        //        //e.Row.Cells[11].Text = "FEES";
        //        //e.Row.Cells[12].Text = "PAID STATUS";

        //   // }
        //}
    }
}