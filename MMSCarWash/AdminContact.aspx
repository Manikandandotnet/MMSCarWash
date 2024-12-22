<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminContact.aspx.cs" Inherits="MMSCarWash.AdminContact" %>

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

<title>Admin Contact Page!</title>
<link rel="icon" type="image/x-icon" class="rounded float-end" href="images\favicon.jpg" />

</head>
<body>
    <form id="form5" runat="server">
    
        
       <%--heading start --%>
                  <div class="container text-center mt-5">

    <div class="container py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Admin Page</h6>
                <h1 class="mb-5">Welcome to Contact Page</h1>
            </div>
                            
        </div>
        </div>
</div>

       <%-- heading end --%>



        <%-- form contact start --%>
       <div class="container">
  <div class="row">




    <div class="col">


        <div class="card">
  <div class="card-header">
   Contact
  </div>
  <div class="card-body">
    
        <div class="form-floating mb-3">
   
    <input type="text" runat="server" class="form-control" id= "txtFullName" aria-describedby="emailHelp" placeholder="Full Name" />
   <label for="floatingInput" class="form-label">Full Name</label>
    
      
  </div>

    

  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="txtphnumber" aria-describedby="emailHelp" placeholder="Phone number"/>
   <label for="floatingInput" class="form-label">Phone Number</label>
 
      </div>
  

           <div class="form-floating mb-3">
 
 <input type="email" runat="server" class="form-control" id="txtEmailId" aria-describedby="emailHelp" placeholder="Email Address"/> 
<label for="floatingInput" class="form-label">Email Address</label>
 
     </div>



   <div class="form-floating">
  <textarea class="form-control" runat="server" placeholder="Leave a comment here" id="txtmessage"></textarea>
  <label for="floatingTextarea">Message</label>
</div>



 <div class="mt-5">
     <asp:Button ID="btnedit" runat="server" Text="UPDATE" class="btn btn-primary" OnClick="btnedit_Click"  />&nbsp &nbsp
     <asp:Button ID="btnsave" runat="server" Text="SAVE" class="btn btn-success" OnClick="btnsave_Click"  />&nbsp &nbsp
     <asp:Button ID="btnclear" runat="server" Text="CLEAR" class="btn btn-danger" OnClick="btnclear_Click" />

</div>

 
      </div>



      <%-- form contact end --%>

  
  </div>
</div>

     
  
      <%-- Admin view content start --%>

    <div class="col">
    
        
        
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

        



           <div class="mt-5">
          

 <asp:GridView ID="GridViewContact" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" 
     CssClass="table table-bordered table-Condensed table-responsive table-hover"

     OnRowDataBound="GridViewContact_RowDataBound" OnSelectedIndexChanged="GridViewContact_SelectedIndexChanged" OnRowDeleting="GridViewContact_RowDeleting"
     DataKeyNames="emailaddress">
                     


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
   


<%-- Admin view content end --%>


</div>
</div>
    
    </form>
</body>
</html>
