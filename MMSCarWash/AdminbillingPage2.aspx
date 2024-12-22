<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminbillingPage2.aspx.cs" Inherits="MMSCarWash.AdminbillingPage2" EnableEventValidation="false" %>

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

 <title>Billing-2 Page!</title>
 <link rel="icon" type="image/x-icon" class="rounded float-end" href="images\favicon.jpg" />

   <style>

       .headimg{

            position: absolute;
    margin-top: -25px;
    margin-left: 234px;
}


   </style>



</head>
<body>
    <form id="form1" runat="server">
      <%--OnClick="BtnExport_Click"--%>
           <asp:Button ID="BtnExport" CssClass="btn btn-success" runat="server" Text="Print"  OnClientClick="return PrintPanel();" />
       
      <asp:Panel ID="pnlContents" runat="server">  
        






   <hr />
    
<div class="headimg">
       
<img src="images\CarLogo.png" runat="server" class="navbar-brand" style="width: 30%;height: 30%;" alt="" />    
 </div>
 
        
 <div>       
        <h4 class="text-center text-primary fw-bolder">MMS-CARWASH</h4>
  
        <address class="text-center text-secondary fst-italic fs-5" runat="server">
           
NO.1, JAGANATHAPURAM 1ST MAIN ROAD,T-NAGAR CHENNAI 600042.
            <br />
            Phone: 744-888-5544
            <br />
Email: ADMIN@CARWASHDAILY.IN


        </address> 


</div>

        <hr />
        
    
        



        <div class="container mt-5">
  <div class="row">
 
      <div class="col text-center fs-5">

       <asp:Label ID="Label1" runat="server" Text="BookingID"></asp:Label>
 &nbsp &nbsp &nbsp &nbsp<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
  <br />
  <asp:Label ID="Label3" runat="server" Text="yourname"></asp:Label>
 &nbsp &nbsp &nbsp &nbsp <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
  <br />
  <asp:Label ID="Label5" runat="server" Text="phnumber"></asp:Label>
  &nbsp &nbsp &nbsp &nbsp<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>


          


    </div>
   
  
      <div class="col text-center fs-5">

<asp:Label ID="Label7" runat="server" Text="ServiceID"></asp:Label>
&nbsp &nbsp &nbsp &nbsp<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label9" runat="server" Text="Servicename"></asp:Label>
&nbsp &nbsp &nbsp &nbsp<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="Label11" runat="server" Text="Price"></asp:Label>
&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>


<br />
<asp:Label ID="Label13" runat="server" Text="GST"></asp:Label>
&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp<asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>




    </div>
  
  
  
  </div>
 </div>

        <div>
        </div>

       
        



        <center>
        <table class="table-primary mt-5 fs-5">

            <thead class="text-center p-4">
                <tr>
                <th scope="col">PaymentID</th>&nbsp &nbsp &nbsp &nbsp
                <th scope="col">SubTotal</th>&nbsp &nbsp &nbsp &nbsp
                <th scope="col">TotalGST</th>&nbsp &nbsp &nbsp &nbsp
               <th scope="col">Total Amount</th>&nbsp &nbsp &nbsp &nbsp
                <th scope="col">Paymentdate</th>&nbsp &nbsp &nbsp &nbsp
                </tr>
            </thead>
            <tbody class="text-center p-4">
                <tr>
                    <td><asp:Label ID="Label15" runat="server" Text="Price"></asp:Label></td>

                    <td><asp:Label ID="Label16" runat="server" Text="Price"></asp:Label></td>

                    <td><asp:Label ID="Label17" runat="server" Text="Price"></asp:Label></td>

                    <td><asp:Label ID="Label18" runat="server" Text="Price"></asp:Label></td>

                    <td><asp:Label ID="Label19" runat="server" Text="Price"></asp:Label></td>

                </tr>
            </tbody>
        </table>

            </center>





        <div class="mt-5">
        <hr />

        <h5 class="text-secondary text-center fst-italic">Thank You For Visiting</h5>
        <hr />
      </div>



      

          </asp:Panel>



    
    </form>


<script type="text/javascript">
    function PrintPanel() {
        // Referencing the Panel.
        var panel = document.getElementById("<%=pnlContents.ClientID %>");
        // Creating a new window.
        var printWindow = window.open('', '', 'height=400,width=800');
        // Writting the contents of Panel in window.
        printWindow.document.write(panel.innerHTML);
        // Closing the document.
        printWindow.document.close();
        // Printing the window.
        printWindow.print();
        return false;
    }
</script>



</body>
</html>
