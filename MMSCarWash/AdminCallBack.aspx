<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCallBack.aspx.cs" Inherits="MMSCarWash.AdminCallBack" %>

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

 <title>Admin CallBack Page!</title>
 <link rel="icon" type="image/x-icon" class="rounded float-end" href="images\favicon.jpg" />
 <style>
     .fa {
         color: gold;
     }
 </style>

</head>
<body>
    <form id="form1" runat="server">




          <div class="container text-center mt-5">

    <div class="container py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Admin Page</h6>
                <h1 class="mb-5">Welcome to Call Back Request Page</h1>
            </div>
                            
        </div>
        </div>
</div>



   <div class="container">
  <div class="row">
    <div class="col">
  
        
    <div class="card text-bg-primary mb-3" style="max-width: 20rem;">
  <div class="card-header">Call BAck Request</div>
  <div class="card-body">

<div class="mb-5">
 

         
          <div class="form-floating mb-3">
   <label for="floatingInput" class="form-label">Name</label>
   <input type="text" class="form-control inp" id="name" aria-describedby="emailHelp" runat="server" placeholder="Enter Your Name"/>
 </div>
   

         
          <div class="form-floating mb-3">
   <label for="exampleInputEmail1" class="form-label">Mobile Number</label>
   <input type="text" class="form-control inp" id="mobileno"  runat="server" placeholder="Enter Mobile Number"/>
          </div>
 
  <div class="form-floating mb-3">
   <label for="exampleInputEmail1" class="form-label">E-mail ID</label>
   <input type="text" class="form-control inp" id="emailid" aria-describedby="emailHelp" runat="server" placeholder="Enter Email ID"/>
  </div>
 


  <div class="form-floating mb-3">
 <label for="exampleInputEmail1" class="form-label">Location</label>
 <input type="text" class="form-control inp" id="Location" aria-describedby="emailHelp" runat="server" placeholder="Enter Location"/>
 
</div>
 
   
        
        <div class="mb-3">          
   <label for="">Select Car Catogery </label>
         <asp:RadioButtonList ID="BtnRadiocatagory" runat="server" OnSelectedIndexChanged="BtnRadiocatagory_SelectedIndexChanged" AutoPostBack = "true">
                <asp:ListItem>Hatchback </asp:ListItem>
                <asp:ListItem>Sedan/SUV</asp:ListItem>
                <asp:ListItem>MUV/Luxury</asp:ListItem>
            </asp:RadioButtonList>
        </div>


              <div class="mb-3">
         <label for="">Select Package </label>

         <asp:RadioButtonList ID="BtnRadioPackage" runat="server" OnSelectedIndexChanged="BtnRadioPackage_SelectedIndexChanged" AutoPostBack = "true">
                <asp:ListItem>Basic </asp:ListItem>
                <asp:ListItem>Value</asp:ListItem>
                <asp:ListItem>Premium</asp:ListItem>
            </asp:RadioButtonList>
                        <div class="mb-3">

                </div>



         
<%-- <div class="d-grid gap-2 d-md-block">--%>
                  <div class="mt-5">
     <asp:Button ID="btnedit" runat="server" Text="UPDATE" class="btn btn-primary" OnClick="btnedit_Click"  />&nbsp &nbsp
     <asp:Button ID="btnsave" runat="server" Text="SAVE" class="btn btn-success" OnClick="btnsave_Click"  />&nbsp &nbsp
     <asp:Button ID="btnclear" runat="server" Text="CLEAR" class="btn btn-danger" OnClick="btnclear_Click" />

</div>

    </div>



  </div>
</div>
    
    
    </div>

    </div> <%--column1 end--%>





    <div class="col">
    


        <div class="card">

<div class="text-center mb-5">
    <h1>Admin View</h1>
</div>

        <nav class="navbar bg-body-tertiary">
  <div class="container-fluid mt-2">

      <input class="form-control me-2 ser" id="search" runat="server" type="search" width="30%" placeholder="Search" aria-label="Search" />
    
        <asp:Button ID="btnsearch" runat="server" Text="SEARCH" class="btn btn-outline-success mt-2" OnClick="btnsearch_Click" />
       &nbsp &nbsp &nbsp &nbsp 
        <asp:Button ID="btnview" runat="server" Text="VIEW" class="btn btn-info mt-3" OnClick="btnview_Click" />
        
      </div>
      </nav>  
      

  <div class="card-body">
   
    <div class="mt-5">
           

  <asp:GridView ID="GridViewCallBack" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" 
      CssClass="table table-bordered table-Condensed table-responsive table-hover"

      OnRowDataBound="GridViewCallBack_RowDataBound" OnSelectedIndexChanged="GridViewCallBack_SelectedIndexChanged" OnRowDeleting="GridViewCallBack_RowDeleting"
      DataKeyNames="emailid">
                      


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

  </div>
</div>



        
      
    
    
  </div> <%--column2 end--%>

     <div>
        </div>
    
    
  </div> <%--row end--%>
  
</div>  <%--container end--%>








    
    </form>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!--  Javascript file -->
    <script src="js/main.js"></script>





</body>
</html>
