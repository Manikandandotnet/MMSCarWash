<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminbilling1.aspx.cs" Inherits="MMSCarWash.Adminbilling1" %>

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

<title>Admin  Billing-1 Page!</title>
<link rel="icon" type="image/x-icon" class="rounded float-end" href="images\favicon.jpg" />
 
</head>
<body>
    <form id="form1" runat="server">

                <!-- Nav Bar Start-->

    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark mb-5">
      <div class="container-fluid">

<img src="images\CarLogo.png" class="navbar-brand" style="width: 5%;height: 5%;" alt="" />
      
        

<ul class="nav nav-tabs">
            
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="index.aspx">Home</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="AboutUs.aspx">ABOUT US</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="ContactPage.aspx">CONTACT</a>
            </li>



            <li class="nav-item dropdown">
              <a class="nav-link  dropdown-toggle" data-bs-toggle="dropdown" href="ProductPage.aspx" role="button" aria-expanded="false">PRODUCTS</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="ProductPage.aspx">Hatchback</a></li>
                <li><a class="dropdown-item" href="ProductPage.aspx">Sedan</a></li>
                <li><a class="dropdown-item" href="ProductPage.aspx">SUV</a></li>
                <li><hr class="dropdown-divider" /></li>
                <li><a class="dropdown-item" href="product.aspx">7-Str/Luxary</a></li>
              </ul>
            </li>


            <li class="nav-item">
              <a class="nav-link" href="ServicePage.aspx">SERVICES</a>
            </li>
            

            
            <li class="nav-item">
              <a class="nav-link" href="BookingPage.aspx">BOOK NOW</a>
            </li>
        

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false"><i class="bi bi-person-circle"></i>STAFF</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="LoginPage.aspx">LOGIN</a></li>
                <li><hr class="dropdown-divider" /></li>
                <li><a class="dropdown-item" href="RegisterPage.aspx">REGISTER</a></li>
              </ul>
            </li>




          </ul>
      
        </div>



 
    </nav>

<!--Nav Bar End-->
 







                          <div class="container text-center mt-5 mb-5">

    <div class="container py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Staff Page</h6>
                <h1 class="mb-5">Welcome to Billing-1 Page</h1>
            </div>
                            
        </div>
        </div>
</div>










        <center>        
        <div class="card mt-5" style="width:25rem">
  <div class="card-header">
   Billing -1
  </div>
  <div class="card-body">
    
        <div class="form-floating mb-3">
   
    <input type="text" runat="server" class="form-control" id="txtbookingid" aria-describedby="emailHelp" placeholder="Booing ID"/>
   <label for="floatingInput" class="form-label">Booing ID</label>
     </div>

    

  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="Serviceid" aria-describedby="emailHelp" placeholder="Service ID"/>
   <label for="floatingInput" class="form-label">Service ID</label>
 
      </div>
  

           <div class="form-floating mb-3">
 
 <input type="text" runat="server" class="form-control" id="paymentid" aria-describedby="emailHelp" placeholder="Payment ID"/> 
<label for="floatingInput" class="form-label">Payment ID</label>
 
     </div>


 <div class="mt-5">
     <asp:Button ID="btnSend" runat="server" Text="Search" class="btn btn-primary" OnClick="btnSend_Click"  />&nbsp &nbsp
  
</div>

 
      </div>

               </div>
      
            </center>



    </form>
</body>
</html>
