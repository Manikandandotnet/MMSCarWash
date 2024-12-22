<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="MMSCarWash.WebForm1" %>

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

<title>Login Page!</title>
<link rel="icon" type="image/x-icon" class="rounded float-end" href="images\favicon.jpg" />
 

<style>
body {
  background-image: url('/images/bgRegister3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}

.Logincard {
    position: relative;
    margin-top: 150px;
    margin-left:400px
}

</style>



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
                <li><a class="dropdown-item nav-link active" href="LoginPage.aspx">LOGIN</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="RegisterPage.aspx">REGISTER</a></li>
              </ul>
            </li>




          </ul>
      
        </div>



 
    </nav>

<!--Nav Bar End-->
       
    
    
            <center class="mt-5 mb-5">
                <div class="card Logincard" style="width:30rem;height:36rem">
  <div class="card-header text-center">
   Login </div>
  <div class="card-body">
    
        <div class="form-floating mb-3 mt-5">
   
    <input type="text" runat="server" class="form-control" id="Adminid" aria-describedby="emailHelp" placeholder="Booing ID"/>
   <label for="floatingInput" class="form-label">Admin ID</label>
    
        </div>

    

  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="nameid" aria-describedby="emailHelp" placeholder="Your Name"/>
   <label for="floatingInput" class="form-label">Your Name</label>
 
      </div>
  

        


      <div class="form-floating mb-3">
 
      <select runat="server" id="roleid" class="form-select" aria-label="Default select example">
  <option selected="true">Select Your Role</option>
  <option value="Admin">Admin</option>
  <option value="Manager">Manager</option>
  <option value="Staff">Staff</option>
</select>

          </div>



       
     





                                 <div class="form-floating mb-3">
                               <asp:TextBox ID="cpwdid" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                               
                               <label for="password">Enter Password</label>
                            
                                  <div class="mb-2">
<i class="bi bi-eye-fill" id="eye" style="Height:10%,Width:6%"></i>
      <asp:Label ID="ShowPWD" runat="server" Text="Show Password"></asp:Label>
      
  </div>
                           
                           </div>
    
         


 <div class="mt-5 text-center">
     <asp:Button ID="btnRegistersave" runat="server" Text="LOGIN" class="btn btn-danger text-center" OnClick="btnRegistersave_Click"  />&nbsp &nbsp
     
</div>

 
      </div>

               </div>
    
            </center>

    
    

        
        
<!--Footer Start-->

<footer class="bg-dark text-white pt-5 pb-4 mt-5">

  <div class="container text-center text-md-left">
  <div class="row text-center text-md-left">
  <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
  <h5 class="text-uppercase mb-4 font-weight-bold text-warning">About Us</h5>
  <hr class="mb-4">
  <p>
    Welcome! We are delighted to introduce ourselves to you. I’m M. Selvakumar, 
    and I’m accompanied by my brother, M. Vinothkumar, as we set out on this entrepreneurial journey to carve our own path. 
    Our business came to life from our deep-rooted passion and unwavering determination.
  </p>
  
  </div>
  
  <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Services</h5>
    <hr class="mb-4">
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
    <hr class="mb-4">
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
    <hr class="mb-4">
    
    <p>
      <i class="bi bi-house-fill mr-4"></i>No. 1o, Vembuli amman koil street, Perungudi, Chennai – 600 096.  
      </p>
      
      <p>
        <i class="bi bi-envelope-at-fill mr-3"></i>mobilespa@gmail.com 
  
        </p>
        
        <p>
          <i class="bi bi-telephone-forward-fill mr-3"></i>1234567890 
          </p>
          
          <p>
            <i class="bi bi-printer-fill mr-3"></i>+013 618 096.
              </p>
            
                      
  </div>
  
  </div>
  
  <hr class="mb-4">
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
  <a href="#" class="btn-floating btn-sm text-white fs-4"><i class="bi bi-facebook"></i>
  
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
  
        <script type="text/javascript">
            var togglePassword = document.querySelector('#eye');
            var password = document.querySelector('#cpwdid');
            togglePassword.addEventListener('click', function (e) {
                const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                password.setAttribute('type', type);
                this.classList.toggle('bi bi-eye-fill');
            });
        </script>

    
    
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
