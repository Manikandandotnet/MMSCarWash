<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminpayment.aspx.cs" Inherits="MMSCarWash.Adminpayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

<!--FONT Awasom CDN-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
<!-- Icon Font  link -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

<title>Admin Payment Page!</title>
<link rel="icon" type="image/x-icon" class="rounded float-end" href="images\favicon.jpg" />

</head>
<body>
    <form id="form1" runat="server">
        
       

  <div class="container text-center mt-5">

    <div class="container py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Admin Page</h6>
                <h1 class="mb-5">Welcome to Payment Page</h1>
            </div>
                            
        </div>
        </div>
</div>

       <%-- heading end --%>



        <%-- form Car service start --%>
       <div class="container">
  <div class="row">




    <div class="col">


        <div class="card">
  <div class="card-header text-center">
   Payment
  </div>
  <div class="card-body">
    
        <div class="form-floating mb-3 mt-5">
   
    <input type="text" runat="server" class="form-control" id="Paymentid" aria-describedby="emailHelp" placeholder="Booing ID"/>
   <label for="floatingInput" class="form-label">Payment ID</label>
    
      <asp:Button ID="BtnPaymentID" runat="server" class="btn btn-outline-success mt-2" Text="Click Me" OnClick="BtnServiceID_Click" />
        </div>

    

  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="Serviceid" aria-describedby="emailHelp" placeholder="Your Name"/>
   <label for="floatingInput" class="form-label">Service ID</label>
 
      </div>
  

           <div class="form-floating mb-3">
 
 <input type="text" runat="server" class="form-control" id="Bookingid" aria-describedby="emailHelp" placeholder="Email Address"/> 
<label for="floatingInput" class="form-label">Booking ID</label>
 
     </div>




      
  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="PaymentMethod" aria-describedby="emailHelp" placeholder="Your Phone Number"/>
   <label for="floatingInput" class="form-label">Payment Method</label>
 
      </div>
  



      
  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="Subtotal" aria-describedby="emailHelp" placeholder="Your Phone Number"/>
   <label for="floatingInput" class="form-label">Sub Total</label>
 
      </div>
  

      
  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="TotalGst" aria-describedby="emailHelp" placeholder="Your Phone Number"/>
   <label for="floatingInput" class="form-label">Total GST</label>
 
      </div>
  

       
      <div class="form-floating mb-3">
 
    <input type="text" runat="server" class="form-control" id="Totalid" aria-describedby="emailHelp" placeholder="Your Phone Number"/>
  <label for="floatingInput" class="form-label">Total Amount</label>
     <asp:Button ID="BtnTotalamount" runat="server" class="btn btn-outline-success mt-2" Text="Click Me" OnClick="BtnTotalamount_Click" />
  
  </div>

         
         
        
      <div class="mt-5">
 
     <label for="floatingInput">Payment Date</label>    
 <asp:Calendar ID="Calendar1" runat="server" VisibleDate="2024-11-06"  SelectedDate="<%# DateTime.Today %>"></asp:Calendar>
 
  </div> 






 <div class="mt-5">
     <asp:Button ID="btnPaymentedit" runat="server" Text="UPDATE" class="btn btn-primary" OnClick="btnPaymentedit_Click"  />&nbsp &nbsp
     <asp:Button ID="btnPaymentsave" runat="server" Text="SAVE" class="btn btn-success" OnClick="btnPaymentsave_Click"  />&nbsp &nbsp
     <asp:Button ID="btnPaymentclear" runat="server" Text="CLEAR" class="btn btn-danger" OnClick="btnPaymentclear_Click" />

</div>

 
      </div>

               </div>
      <%--</div>--%>
            <%--</div> rowwwwwwwwwwwwwww--%>


</div> <%--column1 end--%>
      <%-- form Car service end --%>

  

     
  
      <%-- Admin view content start --%>

    <div class="col">
    
        
        

      
        
        
        <div class="text-center mb-5">
    <h1>Admin View</h1>
</div>

        <nav class="navbar bg-body-tertiary">
  <div class="container-fluid mt-2">

      <input class="form-control me-2 ser" id="txtsearch" runat="server" type="text" width="30%" placeholder="Search" aria-label="Search" />
    
        <asp:Button ID="btnPaymentsearch" runat="server" Text="SEARCH" class="btn btn-outline-success mt-2" OnClick="btnPaymentsearch_Click" />
       &nbsp &nbsp &nbsp &nbsp 
        <asp:Button ID="btnPaymentview" runat="server" Text="VIEW" class="btn btn-info mt-3" OnClick="btnPaymentview_Click" />
        
      </div>
      </nav>  

        



           <div class="mt-5">
          

 <asp:GridView ID="GridViewPayment" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" 
     CssClass="table table-bordered table-Condensed table-responsive table-hover" OnSelectedIndexChanged="GridViewPayment_SelectedIndexChanged" OnRowDeleting="GridViewPayment_RowDeleting"
     DataKeyNames="PaymentID"
     AutoGenerateColumns="false" 
     >
                     


       <Columns>
           <asp:ButtonField ButtonType="Button" CommandName="select" HeaderText="ACTION" ShowHeader="True" Text="EDIT">
           <ControlStyle BackColor="#33CCFF" />
           </asp:ButtonField>
           <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="DELETE" ShowHeader="True"

            Text="DELETE">
           <ControlStyle BackColor="Maroon" />
           </asp:ButtonField>
           
          <%-- <asp:ImageField DataImageUrlField="Path" HeaderText="Image" />--%>
           <asp:BoundField DataField="id" HeaderText="S.NO" />
            <asp:BoundField DataField="PaymentID" HeaderText="PAYMENT ID" />
 <asp:BoundField DataField="ServiceID" HeaderText="SERVICE ID" />
 <asp:BoundField DataField="BookingID" HeaderText="BOOKING ID" />
 <asp:BoundField DataField="Paymentmethod" HeaderText="PAYMENT METHOD" />
 <asp:BoundField DataField="SubTotal" HeaderText="SUB TOTAL AMOUNT" />

 <asp:BoundField DataField="TotalGST" HeaderText="TOTAL GST AMOUNT" />
 <asp:BoundField DataField="TOTAL" HeaderText="TOTAL AMOUNT" />
 <asp:BoundField DataField="Paymentdate" HeaderText="PAYMENT DATE" />



<%--           <asp:ImageField DataImageUrlField="ImagePath" HeaderText="Image" ControlStyle-Height="100" ControlStyle-Width="100" />--%>

   </Columns>








       <FooterStyle BackColor="White" ForeColor="#333333" />
       <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
       <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
       <RowStyle BackColor="White" ForeColor="#333333" />
       <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
       <SortedAscendingCellStyle BackColor="#F7F7F7" />
       <SortedAscendingHeaderStyle BackColor="#487575" />
       <SortedDescendingCellStyle BackColor="#E5E5E5" />
       <SortedDescendingHeaderStyle BackColor="#275353" />
   </asp:GridView> 

       </div>

    
    </div>  <%--column2 end--%>
   
      
  
  



<%-- Admin view content end --%>
            
        
     
           </div>   <%--row end--%>
          </div>  <%--container end--%>
 




    </form>
</body>
</html>
