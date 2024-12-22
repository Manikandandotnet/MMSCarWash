<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminBooking.aspx.cs" Inherits="MMSCarWash.AdminBooking" %>


<%-- <%@ Application Codebehind="Global.asax.cs" Inherits="MMSCarWash.Global" Language="C#" %>--%>

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

<title>Admin Booking Page!</title>
<link rel="icon" type="image/x-icon" class="rounded float-end" href="images\favicon.jpg" />
 
</head>
<body>
    <form id="form1" runat="server">
        
        
    
                  <div class="container text-center mt-5">

    <div class="container py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Admin Page</h6>
                <h1 class="mb-5">Welcome to Booking Page</h1>
            </div>
                            
        </div>
        </div>
</div>

       <%-- heading end --%>



        <%-- form Booking start --%>
       <div class="container">
  <div class="row">




    <div class="col">


        <div class="card">
  <div class="card-header">
   Booking
  </div>
  <div class="card-body">
    
        <div class="form-floating mb-3">
   
    <input type="text" runat="server" class="form-control" id="txtbookingid" aria-describedby="emailHelp" placeholder="Booing ID"/>
   <label for="floatingInput" class="form-label">Booing ID</label>
    
            <asp:Button ID="BtnBookingID" runat="server" class="btn btn-outline-success mt-2" Text="Click Me" OnClick="BtnBookingID_Click" />
  </div>

    

  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="yourname" aria-describedby="emailHelp" placeholder="Your Name"/>
   <label for="floatingInput" class="form-label">Your Name</label>
 
      </div>
  

           <div class="form-floating mb-3">
 
 <input type="email" runat="server" class="form-control" id="txtEmail" aria-describedby="emailHelp" placeholder="Email Address"/> 
<label for="floatingInput" class="form-label">Email Address</label>
 
     </div>




      
  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="txtphoneNumber" aria-describedby="emailHelp" placeholder="Your Phone Number"/>
   <label for="floatingInput" class="form-label">Your Phone Number</label>
 
      </div>
  


           <div class="form-floating mb-5">
         
         
         
             <div class="input-group-prepend">
               <label class="input-group-text" for="inputGroupSelect01">Select Your Car Catagory</label>
             </div>
             <div class="input-group-text">
      
                 <asp:DropDownList ID="Carcatagory" runat="server" class="custom-select mb-1">
                     <asp:ListItem Selected="True">Choose..</asp:ListItem>
                     <asp:ListItem>HatchBack</asp:ListItem>
                     <asp:ListItem>Sedan/SUV</asp:ListItem>
                     <asp:ListItem>MUV/Luxury</asp:ListItem>

                 </asp:DropDownList>

               
           </div>
               
               <br />
               

                    <div class="form-floating mb-5">
         
         
         
             <div class="input-group-prepend">
               <label class="input-group-text" for="inputGroupSelect01">Package</label>
             </div>
             <div class="input-group-text">
      
                 <asp:DropDownList ID="Package" runat="server" class="custom-select mb-1">
                     <asp:ListItem Selected="True">Choose..</asp:ListItem>
                     <asp:ListItem>BASIC</asp:ListItem>
                     <asp:ListItem>VALUE</asp:ListItem>
                     <asp:ListItem>PREMIUM</asp:ListItem>

                 </asp:DropDownList>

               
           </div>
               <br />
                        

                        <div class="mt-5">

                        
   <label for="floatingInput">Booking Date</label>    
                           <asp:Calendar ID="Calendar1" runat="server" VisibleDate="2024-11-06"  SelectedDate="<%# DateTime.Today %>"></asp:Calendar>
                        
                       
                        </div>







 <div class="mt-5">
     <asp:Button ID="btnBookingedit" runat="server" Text="UPDATE" class="btn btn-primary" OnClick="btnedit_Click"  />&nbsp &nbsp
     <asp:Button ID="btnBookingsave" runat="server" Text="SAVE" class="btn btn-success" OnClick="btnsave_Click"  />&nbsp &nbsp
     <asp:Button ID="btnBookingclear" runat="server" Text="CLEAR" class="btn btn-danger" OnClick="btnclear_Click" />

</div>

 
      </div>

               </div>
      </div>
            </div>


</div> <%--column1 end--%>
      <%-- form contact end --%>

  

     
  
      <%-- Admin view content start --%>

    <div class="col">
    
        
        

      
        
        
        <div class="text-center mb-5">
    <h1>Admin View</h1>
</div>

        <nav class="navbar bg-body-tertiary">
  <div class="container-fluid mt-2">

      <input class="form-control me-2 ser" id="txtsearch" runat="server" type="text" width="30%" placeholder="Search" aria-label="Search" />
    
        <asp:Button ID="btnBookingsearch" runat="server" Text="SEARCH" class="btn btn-outline-success mt-2" OnClick="btnsearch_Click" />
       &nbsp &nbsp &nbsp &nbsp 
        <asp:Button ID="btnBookingview" runat="server" Text="VIEW" class="btn btn-info mt-3" OnClick="btnview_Click" />
        
      </div>
      </nav>  

        



           <div class="mt-5">
          

 <asp:GridView ID="GridViewBooking" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" 
     CssClass="table table-bordered table-Condensed table-responsive table-hover"

     OnRowDataBound="GridViewBooking_RowDataBound" OnSelectedIndexChanged="GridViewBooking_SelectedIndexChanged" OnRowDeleting="GridViewBooking_RowDeleting"
     DataKeyNames="BookingID">
                     


       <Columns>
           <asp:ButtonField ButtonType="Button" CommandName="select" HeaderText="SelectedRow" ShowHeader="True" Text="EDIT">
           <ControlStyle BackColor="#33CCFF" />
           </asp:ButtonField>
           <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="DELETE" ShowHeader="True"

            Text="DELETE">
           <ControlStyle BackColor="Maroon" />
           </asp:ButtonField>

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
