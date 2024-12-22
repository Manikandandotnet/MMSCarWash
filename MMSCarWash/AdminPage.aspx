<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="MMSCarWash.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <!-- Google Website Fonts link -->
 <link rel="preconnect" href="https://fonts.googleapis.com" />
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
 <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet" />

 <!-- Icon Font  link -->
 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

 <!-- Libraries link -->
 <link href="lib/animate/animate.min.css" rel="stylesheet" />
 <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

 <!--  Bootstrap file link -->
 <link href="css/bootstrap.min.css" rel="stylesheet" />

 <!-- Css File -->
 <link href="css/style.css" rel="stylesheet" />




    <title></title>
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
                <li><hr class="dropdown-divider"></li>
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
              <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false"><i class="bi bi-person-circle"></i>ADMIN</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="LoginPage.aspx">LOGIN</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item nav-link active" href="RegisterPage.aspx">REGISTER</a></li>
              </ul>
            </li>




          </ul>
      
        </div>



 
    </nav>

<!--Nav Bar End-->
 




    <div class="container-xxl py-5 mt-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Admin Page</h6>
                <h1 class="mb-5">welcome to Admin Control Page</h1>
            </div>
                            
                        </div>
        </div>
    






     <div class="container mb-5">
  <div class="row">
    
      
      <div class="col">
     <div class="card text-dark bg-warning mb-3" style="width: 18rem;">
  <%--<img src="img/Register.jpg" class="card-img-top" alt="..." />--%>
  <div class="card-body">
    <h5 class="card-title">Registeration</h5>
      
      <asp:Button ID="BtnRegister" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnRegister_Click" />
      
  </div>
</div>

    </div>
    
      
      
      <div class="col">
      <div class="card text-dark bg-warning mb-3" style="width: 18rem;">
  <%--<img src="img/neetstudent.jpg" class="card-img-top" alt="..." />--%>
  <div class="card-body">
    <h5 class="card-title">Call Back Request</h5>
    
      
      <asp:Button ID="BtnCallBack" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnCallBack_Click" />
      
  </div>
</div>
    </div>
    
      
      
      <div class="col">
      <div class="card text-dark bg-warning mb-3" style="width: 18rem;">
  <%--<img src="img/jeestudent.jpg" class="card-img-top" alt="..." />--%>
  <div class="card-body">
    <h5 class="card-title">Contact Details</h5>
    
      <asp:Button ID="BtnContactDetails" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnContactDetails_Click" />
      
  </div>
</div>
    </div>
  </div>
</div>













     <div class="container mb-5">
  <div class="row">
    
      
      <div class="col">
     <div class="card text-dark bg-warning mb-3" style="width: 18rem;">
  <%--<img src="img/neetexam.jpg" class="card-img-top" alt="..." />--%>
  <div class="card-body">
    <h5 class="card-title">Booking Details</h5>
    
      
      <asp:Button ID="BtnBookingDetails" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnBookingDetails_Click" />
      
  </div>
</div>

    </div>
    
      
      
      <div class="col">
      <div class="card text-dark bg-warning mb-3" style="width: 18rem;">
  <%--<img src="img/neetclock2.jpg" class="card-img-top" alt="..." />--%>
  <div class="card-body">
    <h5 class="card-title">Service Details</h5>
    
      
      <asp:Button ID="BtnServiceDetails" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnServiceDetails_Click" />
      
  </div>
</div>
    </div>
    
      
      
      <div class="col">
      <div class="card text-dark bg-warning mb-3" style="width: 18rem;">
  <%--<img src="img/neetmeterial2.jpg" class="card-img-top" alt="..." />--%>
  <div class="card-body">
    <h5 class="card-title">Payment Details</h5>
    
      <asp:Button ID="BtnPaymentDetails" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnPaymentDetails_Click" />
      
  </div>
</div>
    </div>
  </div>
</div>







             <%--<div class="container mb-5">
  <div class="row">
    
      
      <div class="col">
     <div class="card" style="width: 18rem;">
  <img src="img/jeeexam.jpg" class="card-img-top" alt="..." />
  <div class="card-body">
    <h5 class="card-title">Jee-Examination</h5>
    
      
      <asp:Button ID="BtnJeeExamination" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnJeeExamination_Click" />
      
  </div>
</div>

    </div>
    
      
      
      <div class="col">
      <div class="card" style="width: 18rem;">
  <img src="img/clock1.jpg" class="card-img-top" alt="..." />
  <div class="card-body">
    <h5 class="card-title">Set Exam Time</h5>
      
      <asp:Button ID="BtnJeeTimeSet" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnJeeTimeSet_Click" />
      
  </div>
</div>
    </div>
    
      
      
      <div class="col">
      <div class="card" style="width: 18rem;">
  <img src="img/jeemeterials.jpg" class="card-img-top" alt="..." />
  <div class="card-body">
    <h5 class="card-title">Jee-Meterials</h5>
    
      <asp:Button ID="BtnJeeMeterials" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnJeeMeterials_Click" />
      
  </div>
</div>
    </div>
  </div>
</div>









     <div class="container mb-5">
  <div class="row">
    
      
      <div class="col">
     <div class="card" style="width: 18rem;">
  <img src="img/contact.jpg" class="card-img-top" alt="..." />
  <div class="card-body">
    <h5 class="card-title">Contact Infirmation</h5>
      
      <asp:Button ID="BtnContact" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnContact_Click" />
      
  </div>
</div>

    </div>
    
      
      
      <div class="col">
      <div class="card" style="width: 18rem;">
  <img src="img/subscribeinfo.jpg" class="card-img-top" alt="..." />
  <div class="card-body">
    <h5 class="card-title">Subcription-Info</h5>
    
      
      <asp:Button ID="Btnsubcription" runat="server" Text="Click Here" class="btn btn-primary" OnClick="Btnsubcription_Click" />
      
  </div>
</div>
    </div>
    
      
      
    <div class="col">
      <div class="card" style="width: 18rem;">
  <img src="img/newsletter.jpg" class="card-img-top" alt="..." />
  <div class="card-body">
    <h5 class="card-title">Send News Letter</h5>
    
      <asp:Button ID="BtnNewsLetter" runat="server" Text="Click Here" class="btn btn-primary" OnClick="BtnNewsLetter_Click" />
      
  </div>
</div>
    </div>--%>
  </div>
</div>

    
    
    
    </form>
</body>
</html>
