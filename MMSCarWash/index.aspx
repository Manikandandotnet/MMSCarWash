<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MMSCarWash.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <!-- Required meta tags -->
 <meta charset="utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1" />

 <!-- Bootstrap CSS -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

 <!--FONT Awasom CDN-->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
 <!-- Icon Font  link -->
 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

 <title>Home Page!</title>
 <link rel="icon" type="image/x-icon" class="rounded float-end" href="images\favicon.jpg" />
 <style>
     .fa {
         color: gold;
     }
 </style>

</head>
<body>
    <form id="form1" runat="server">
     
    
        
        
        
        
    <!-- Nav Bar Start-->

    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
        <div class="container-fluid">

<img src="images\CarLogo.png" class="navbar-brand" style="width: 5%;height: 5%;" alt="" />
        
<ul class="nav nav-tabs">
              
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="AboutUs.aspx">ABOUT US</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="ContactPage.aspx">CONTACT</a>
              </li>


              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">PRODUCTS</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="ProductPage.aspx">Hatchback</a></li>
                  <li><a class="dropdown-item" href="ProductPage.aspx">Sedan</a></li>
                  <li><a class="dropdown-item" href="ProductPage.aspx">SUV</a></li>
                  <li><hr class="dropdown-divider" /></li>
                  <li><a class="dropdown-item" href="ProductPage.aspx">7-Str/Luxary</a></li>
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
                  <li><hr class="dropdown-divider" /></li>
                  <li><a class="dropdown-item" href="RegisterPage.aspx">REGISTER</a></li>
                </ul>
              </li>

            </ul>
        
          </div>

      </nav>

<!--Nav Bar End-->

        
    
    <!--Carousel Start-->


<div id="carouselExampleCaptions" class="carousel slide mb-5" data-bs-ride="carousel">
      
    <div class="carousel-indicators">
      
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
   
    
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="/images/car3.jpg" class="d-block w-100" alt="..." />
        <div class="carousel-caption d-none d-md-block">
          <h5 class="text-white">WELCOME TO MMS-CAR washing & Polishing</h5>
          <p>100% professional affordable car  washing methods for a clean car with no swirl marks.
            Interior & Exterior Car cleaning. widest collection of car Accessories.
          </p>
        </div>
      </div>
    
        
        
        
        <div class="carousel-item">
        <img src="/images/car4.jpg" class="d-block w-100" alt="..." />
        <div class="carousel-caption d-none d-md-block">
          <h5 class="text-white">CALL US AND WELCOME TO You</h5>
          <p class="text-white">Experience Quality car water wash Services at your Doorstep.whatever a car needs washing ,We will be there...</p>
        </div>
      </div>
      
        
        
        
        <div class="carousel-item">
        <img src="/images/cars1.jpg" class="d-block w-100" alt="..." />
        <div class="carousel-caption d-none d-md-block" >
          <h5 class="text-white">BEST CAR WASH SERVICES</h5>
          <p>washing a car can be more than just wiping off the dirt.Our guarnteed services give customers satisfacation all the Time.</p>
        </div>
      </div>
    </div>
  
    
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    
    
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
 
    
</div>


<!--Carousal End-->


    
    
    
    
<!--About Page Start-->

<div class="container mb-5">
  <div class="row">
    <div class="col">

      <h3 class="text-warning">We Do It Like We Own It!</h3>
      <br/>
      <p class="text-md-start">
        
        Welcome to Mobile Car Spa, your ultimate destination for all your car needs.
         We’re a passionate team dedicated solely to cars. Established in 2019,
          we’ve rapidly become the go-to experts in car detailing services near you. 
          With our meticulous attention to detail and unwavering dedication, we’ve earned a 
          respected position in the industry, boasting a 100% customer retention rate.

        Mobile Car Spa specializes in a comprehensive range of mobile car washing and car polishing services,
         catering to various needs. Our offerings include different levels of services such as a 
         Quick Exterior Car Wash, Interior Vacuuming & Cleaning, and Exterior Car Polishing. We take
          pride in providing extensive car detailing using top-quality professional and luxury chemicals,
           wax polishes, glass polishes, deluxe tire restorers, and premium upholstery cleaners. 
           To learn more about us, kindly explore our website.


      </p>

    </div>
    <div class="col">
      <img src="images/CarLogo.png" class="rounded float-end" alt="..." />
    </div>
  </div>

<!--About Page End-->




<!--Services Page Start-->
<div class="container mb-5">
  <div class="row mb-3">
    <div class="col">
    <h3 class="text-warning text-center">  Our Sevices   </h3>
<br />
    <p>
      We provide comprehensive, 
      doorstep car wash and car detailing services in Chennai, along with affordable car accessories sales.


    </p>
      
    </div>
    
  </div>
  <div class="row mb-3">
    <div class="col mb-5 mt-3">
      <img src="images/CarFoamWash.jpg" class="rounded float-end" style="width:100%;height: 100%;" alt="..." />

<h4 class="text-center">Car Foam Wash</h4>

    </div>
    <div class="col mb-5 mt-3">
      <img src="images/waxpolishing.jpg" class="rounded float-end" style="width:100%;height: 100%;" alt="..." />
   
   
<h4 class="text-center">Wax Polishing</h4>

   
    </div>
    <div class="col mb-5 mt-3">
      <img src="images/interiorVaccum.jpg" class="rounded" style="width:100%;height: 100%;" alt="..." />
      
      
<h4 class="text-center">Interior Vacuuming</h4>

    </div>
  </div>



  <div class="row mb-3">
    <div class="col mb-5 mt-3">
      <img src="images/rubbingpolish.jpg" class="rounded" style="width: 100%;height: 100%;" alt="..." />
<h4 class="text-center">Rubbing Polish</h4>
    </div>
    <div class="col mb-5 mt-3">
      <img src="images/ExteriorDetailing.jpg" class="rounded" style="width: 100%;height: 100%;" alt="..." />
      <h4 class="text-center">Exterior Detailing</h4>
    </div>
    <div class="col mb-5 mt-3">
      <img src="images/interiorDealing.jpg" class="rounded" style="width: 100%;height: 100%;" alt="..." />
      <h4 class="text-center">Interior Detailing</h4>
    </div>
  </div>




  <div class="row mb-3">
    <div class="col mb-5 mt-3">
      <img src="images/carwrapping.jpg" class="rounded" style="width: 100%;height: 100%;" alt="..." />
      <h4 class="text-center">Car Wrapping</h4>
    </div>
    <div class="col mb-5 mt-3">
      <img src="images/UsedCar.jpg" class="rounded" style="width: 100%;height: 100%;" alt="..." />
      <h4 class="text-center">Used Car Buying & Selling</h4>
    </div>
    <div class="col mb-5 mt-3">
      <img src="images\CarAccessories.jpg" class="rounded" style="width: 100%;height: 100%;" alt="..." />
      <h4 class="text-center">Car Accessories</h4>
    </div>
  </div>



</div>


<!--Service Page End-->


<!-- Our Packages Page Start-->

<div class="container mb-5">
  <div class="row">
    <div class="col">
      <h3 class="text-warning text-center mb-5"> Our Packages  </h3>

      <p>



      </p>
    </div>
      </div>








      <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col">
          
          <div class="card text-center">
            <div class="card-header bg-warning">
             <h4>Basic</h4> 
            </div>
            <div class="card-body bg-dark">
              <h5 class="card-title text-warning">₹999</h5>
              <p class="card-text text-white"><i class="bi bi-check2-circle"></i>&nbsp;  Foam Wash</p>
             
              <p class="card-text text-white"><i class="bi bi-check2-circle"></i>&nbsp;  Interior Vacuuming</p>
             
              <p class="card-text text-white"><i class="bi bi-check2-circle"></i>&nbsp;  Exterior Vacuuming</p>
             
              <p class="card-text text-white"><i class="bi bi-check2-circle"></i>&nbsp;   Tyre Polish</p>
             
              <p class="card-text text-white"><i class="bi bi-check2-circle"></i>&nbsp;   Floor Mat Cleaning</p>

              <p class="card-text text-white"><i class="bi bi-check2-circle"></i>&nbsp;  Engine Bay Cleaning</p>

              <p class="card-text text-white"><i class="bi bi-check2-circle"></i>&nbsp;   Fragrance Tag</p>

              <p class="card-text text-white"><i class="bi bi-check2-circle"></i>&nbsp;   Paper Foot Mat</p>


              <a href="BookingPage.aspx" class="btn btn-warning text-center">Book Now</a>
            </div>
            <div class="card-footer text-muted">
            Regular Customer offer 5%
            </div>
          </div>
        </div>

<!-- second card start -->

        <div class="col">
     
          <div class="card text-center">
            <div class="card-header bg-warning">
             <h4>Value</h4> 
            </div>
            <div class="card-body bg-dark">
              <h5 class="card-title text-warning">₹1499</h5>

              <p class="card-text text-white mt-5"><i class="bi bi-check2-circle"></i>&nbsp;   Basic Package</p>
             
              <p class="card-text text-white mt-4"><i class="bi bi-plus-circle"></i>&nbsp;   Seats Foam Cleaning</p>
             
              <p class="card-text text-white mt-4"><i class="bi bi-plus-circle"></i>&nbsp;  Dashboard Cleaning & Polish</p>
             
              <p class="card-text text-white mt-4"><i class="bi bi-plus-circle"></i>&nbsp;   Door Trims Cleaning & Polish</p>
             
              <p class="card-text text-white mt-4"><i class="bi bi-plus-circle"></i>&nbsp;   AC Vents Cleaning</p>

             

              <a href="BookingPage.aspx" class="btn btn-warning text-center mt-5">Book Now</a>
            </div>
            <div class="card-footer text-muted">
              Regular Customer offer 5%
            </div>
          </div>
        </div>



        <!-- thrid card start -->
        <div class="col">
          
          
          <div class="card text-center">
            <div class="card-header bg-warning">
             <h4>Premium</h4> 
            </div>
            <div class="card-body bg-dark">
              <h5 class="card-title text-warning">₹2999</h5>
              <p class="card-text text-white mt-5"><i class="bi bi-check2-circle"></i>&nbsp;   Basic Package</p>
             
              <p class="card-text text-white mt-4"><i class="bi bi-check2-circle"></i>&nbsp;  Value Package</p>
             
              <p class="card-text text-white mt-4"><i class="bi bi-plus-circle"></i>&nbsp;   3M Rubbing Polish</p>
             
              <p class="card-text text-white mt-4"><i class="bi bi-plus-circle"></i>&nbsp;    Scratch Removal</p>
             
              <p class="card-text text-white mt-4"><i class="bi bi-plus-circle"></i>&nbsp;    Exterior Waxing</p>


              <a href="BookingPage.aspx" class="btn btn-warning text-center mt-5">Book Now</a>
            </div>
            <div class="card-footer text-muted">
              Regular Customer offer 5%
            </div>
          </div>


        </div>
      </div>




<!--
  <div class="row">
    <div class="col">
      1 of 3
    </div>
    <div class="col">
      2 of 3
    </div>
    <div class="col">
      3 of 3
    </div>
  </div>
</div>

-->


<!-- Our Packages Page End-->



<!--Contact Page Start-->





<div class="container mb-5 mt-5"></div>
<h3 class="text-center text-warning"></h3>
  <div class="row">
    <div class="col">
      


<h2 class="mb-3">
  MMS-CAR WASH & POLISH!
WE WILL COME TO YOU WHEREVER YOU ARE!
</h2>

<p class="mt-5">

  
MMS-CAR WASH & POLISH!
WE WILL COME TO YOU WHEREVER YOU ARE!
“Are you tired of wasting your valuable time waiting in long lines at the car wash? Say goodbye to the hassle and hello to convenience with Mobile Car Spa in Chennai! Our team of skilled professionals uses only the best equipment and products to give your vehicle a thorough and detailed cleaning at your doorstep! We offer a range of services, including interior and exterior cleaning, waxing, and polishing, all at affordable prices. At Mobile Car Spa, we pride ourselves on delivering exceptional results and providing our clients with a hassle-free experience. Book your appointment today and see the difference for yourself!”

Know More...
</p>

      
    </div>
    <div class="col">



    <div class="card" style="width: 30rem;">
  <div class="card-title text-center text-warning"><h3>Call Back Request</h3></div>
  <div class="card-body bg-light">

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



    </div>



  </div>

      
        <div class="mb-3 position-relative">
                 <asp:Button ID="Btnsubmit" runat="server" Text="Submit" class="btn btn-danger position-absolute bottom-0 end-0" OnClick="Btnsubmit_Click" />
              
             </div>
     


</div> <%--card body end--%>
    
    
   </div>  <%--card end--%>
      
        
     
       
      </div>
      </div>


      
    </div>
  </div>
</div>
<!--Contact Page End-->



<!--our Gallery Start-->









<!--our Gallery End-->

<!--Testimonials Start-->


<div class="container mb-5">

  <h3 class="text-center text-warning">Testimonials</h3>
  <h5 class="text-center">What Our Customers Says</h5>
</div>
  <div class="row mb-3 mt-5">
    <div class="col">
      <img src="images/cust1.jpg" class="img-thumbnail rounded" alt="..." />
  <h5>Muthu Krishnan</h5>
  
    </div>
    <div class="col">
<div>
  <i class="bi bi-star-fill fa"></i>
  <i class="bi bi-star-fill fa"></i>
  <i class="bi bi-star-fill fa"></i>
  <i class="bi bi-star-fill fa"></i>
  <i class="bi bi-star-fill fa"></i>
</div>

    <p>
      Iam searching for mobile Car Cleaning Services near Perungudi,
       I got to know the Mobile Car Spa I called them, they came to my
        home on time and started the car cleaning process they taken almost 2 hours to
         complete the work. After the completion of their work I was surprised, my car was
          looking awesome and looks like new, thanks Mobile car spa for such a great service,
           Highly recommended for doorstep Car Cleaning services......



    </p>
    </div>
   
  </div>



  <div class="row mb-3 mt-4">
    <div class="col">
      <div>
        <i class="bi bi-star-fill fa"></i>
        <i class="bi bi-star-fill fa"></i>
        <i class="bi bi-star-fill fa"></i>
        <i class="bi bi-star-fill fa"></i>
        <i class="bi bi-star-fill fa"></i>
              
      </div>
      
          <p>
      
            Thank-you so much. A great & neat job done by you all. 
            It was doorstep and entire work was done at home.
             All they sought was a bucket and I left asking to call when done. 
             Appreciate the detailed interior and exterior cleaning work. 
             When I came back to check the finished work, was amazed! The car looks very good and
              just brand new. Found them to be honest and charged a reasonable price. I'm completely
               happy, satisfied with the work done and definitely will recommend their services to all...
      
      
          </p>
      
    </div>
    <div class="col">
      <img src="images/cust2.jpg" class="img-thumbnail rounded" alt="..." />
      <h5>Tharikka Ganesh</h5>
  
    </div>
   
  </div>




  <div class="row mb-5 mt-4">
    <div class="col">
      <img src="images/cust3.jpg" class="img-thumbnail rounded" alt="..." />
      <h5>Kishore Kathiresan</h5>
  
    
    </div>
    <div class="col">
      <div>
        <i class="bi bi-star-fill fa"></i>
        <i class="bi bi-star-fill fa"></i>
        <i class="bi bi-star-fill fa"></i>
        <i class="bi bi-star-fill fa"></i>
        <i class="bi bi-star-fill fa"></i>
              
      </div>
      
          <p>
      
            They have done great job. Good professionalism portrayed and you don’t 
            get this kind of service even you visit any show room. They carry everything which is 
            required for car cleaning etc and they did fantastic job Thank you mobile car spa...      
      
      
          </p>
          </div>
   
  </div>


</div>


<!--Testimonials End-->


<!--Footer Start-->

<footer class="bg-dark text-white pt-5 pb-4">

<div class="container text-center text-md-left">
<div class="row text-center text-md-left">
<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
<h5 class="text-uppercase mb-4 font-weight-bold text-warning">About Us</h5>
<hr class="mb-4" />
<p>
  Welcome! We are delighted to introduce ourselves to you. I’m M. Selvakumar, 
  and I’m accompanied by my brother, M. Vinothkumar, as we set out on this entrepreneurial journey to carve our own path. 
  Our business came to life from our deep-rooted passion and unwavering determination.
</p>

</div>

<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
  <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Services</h5>
  <hr class="mb-4" />
  <p>
  <a href="ServicePage.aspx" class="text-white text-decoration-none">Door Step Car Wash</a>
  </p>
  
  <p>
    <a href="ServicePage.aspx" class="text-white text-decoration-none">Car Wash and Wax</a>
    </p>
    
    <p>
      <a href="ServicePage.aspx" class="text-white text-decoration-none">complete Car Spa</a>
      </p>
      
        

</div>
  


<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
  <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Products</h5>
  <hr class="mb-4" />
  <p>
  <a href="ProductPage.aspx" class="text-white text-decoration-none">Hatchback</a>
  </p>
  
  <p>
    <a href="ProductPage.aspx" class="text-white text-decoration-none">Sedan</a>
    </p>
    
    <p>
      <a href="ProductPage.aspx" class="text-white text-decoration-none">SUV</a>
      </p>
      
      <p>
        <a href="ProductPage.aspx" class="text-white text-decoration-none">7 STR/Luxary</a>
        </p>
        
        <p>
          <a href="ProductPage.aspx" class="text-white text-decoration-none">MCS Car Spa Packages</a>
          </p>
          
          <p>
            <a href="ProductPage.aspx" class="text-white text-decoration-none">MCS Annual Packages</a>
            </p>
            
</div>





<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
  <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Contact</h5>
  <hr class="mb-4" />
  
  <p>
    <i class="bi bi-house-fill mr-4"></i>&nbsp No. 1o, Vembuli amman koil street, Perungudi, Chennai – 600 096.  
    </p>
    
    <p>
      <i class="bi bi-envelope-at-fill mr-3"></i>&nbsp mobilespa@gmail.com 

      </p>
      
      <p>
        <i class="bi bi-telephone-forward-fill mr-3"></i> &nbsp 1234567890 
        </p>
        
        <p>
          <i class="bi bi-printer-fill mr-3"></i>&nbsp +013 618 096.
            </p>
          
                    
</div>

</div>

<hr class="mb-4" />
<div class="row align-items">
<div class="col-md-7 col-lg-8">

  <p>CopyRight @2024 All Right Reserved By:
<a href="#" class="text-decoration-none">
  <strong class="text-warning">Manikandan.M</strong>
</a>
</p>
</div>

<div class="col-md-5 col-lg-4">

<div class="text-center text-md-right">

  <ul class="list-unstyled list-inline">
  
    <li class="list-inline-item">   
<a href="" class="btn-floating btn-sm text-white fs-4"><i class="bi bi-facebook"></i>

</a>
    </li>
  
  
  
    <li class="list-inline-item">   
      <a href="#" class="btn-floating btn-sm text-white fs-4"><i class="bi bi-twitter-x"></i>
      
      </a>
          </li>
  
          
          <li class="list-inline-item">   
            <a href="#" class="btn-floating btn-sm text-white fs-4"><i class="bi bi-linkedin"></i>
            
            </a>
                </li>
  
                
                <li class="list-inline-item">   
                  <a href="#" class="btn-floating btn-sm text-white fs-4"><i class="bi bi-youtube"></i>
                  
                  </a>
                      </li>
  
                      
                      <li class="list-inline-item">   
                        <a href="#" class="btn-floating btn-sm text-white fs-4"><i class="bi bi-whatsapp"></i>
                        
                        </a>
                            </li>
                          
  
  
  </ul>

</div>
</div>

</div>

</div>
</footer>


<!--Footer End-->




    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->

    
    
    
    
    
    </form>
</body>
</html>
