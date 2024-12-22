using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Reflection.Emit;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using iTextSharp.tool.xml;
using System.Net.Mail;
using System.Data;

namespace MMSCarWash
{
    public partial class AdminbillingPage2 : System.Web.UI.Page
    {

        string strcon = "Data Source=DESKTOP-CPULBN6\\SQLEXPRESS;Initial Catalog=MMScarwash;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label2.Text = Session["bookID"].ToString();
                Label4.Text = Session["Name"].ToString();
                Label6.Text = Session["phone"].ToString();


                Label8.Text = Session["serviceID"].ToString();
                Label10.Text = Session["serviceName"].ToString();
                Label12.Text = Session["price"].ToString();
                Label14.Text = Session["gst"].ToString();

                Label15.Text = Session["paymentID"].ToString();
                Label16.Text = Session["stotal"].ToString();
                Label17.Text = Session["gstamount"].ToString();
                Label18.Text = Session["totalamount"].ToString();
                Label19.Text = Session["date"].ToString();



            }
            else
            {
                Response.Write("<sceript>alert('no data')</script>");
            }


        }



         //protected void BtnExport_Click(object sender, EventArgs e)
         //{
         //   using (StringWriter sw = new StringWriter())
         //   using (HtmlTextWriter hw = new HtmlTextWriter(sw))
         //   {
               
         //       form1.RenderControl(hw);
         //       StringReader sr = new StringReader(sw.ToString());
         //       Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10, 0f);
         //       PdfWriter wrt = PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
         //       pdfdoc.Open();
         //       XMLWorkerHelper.GetInstance().ParseXHtml(wrt, pdfdoc, sr);
         //       pdfdoc.Close();
         //       Response.ContentType = "application/pdf";
         //       Response.AddHeader("content-disposition", "attachment;filename=OrderDetails.pdf");
         //       Response.Cache.SetCacheability(HttpCacheability.NoCache);
         //       Response.Write(pdfdoc);
         //       Response.End();

           
            
         //   }

         //}

        
        
    }
}
