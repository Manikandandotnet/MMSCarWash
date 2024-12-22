<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCarService.aspx.cs" Inherits="MMSCarWash.AdminCarService" %>

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

<title>Admin Car Service Page!</title>
<link rel="icon" type="image/x-icon" class="rounded float-end" href="images\favicon.jpg" />
 </head>
<body>
    <form id="form1" runat="server">
        
        
                      <div class="container text-center mt-5">

    <div class="container py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Admin Page</h6>
                <h1 class="mb-5">Welcome to Car Service Page</h1>
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
  <div class="card-header">
   Booking
  </div>
  <div class="card-body">
    
        <div class="form-floating mb-3">
   
    <input type="text" runat="server" class="form-control" id="serviceid" aria-describedby="emailHelp" placeholder="Booing ID"/>
   <label for="floatingInput" class="form-label">Service ID</label>
    
            <asp:Button ID="BtnServiceID" runat="server" class="btn btn-outline-success mt-2" Text="Click Me" OnClick="BtnServiceID_Click" />
  </div>

    

  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="Servicename" aria-describedby="emailHelp" placeholder="Your Name"/>
   <label for="floatingInput" class="form-label">Service Name</label>
 
      </div>
  

           <div class="form-floating mb-3">
 
 <input type="text" runat="server" class="form-control" id="description" aria-describedby="emailHelp" placeholder="Email Address"/> 
<label for="floatingInput" class="form-label">Description</label>
 
     </div>




      
  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="price" aria-describedby="emailHelp" placeholder="Your Phone Number"/>
   <label for="floatingInput" class="form-label">Price</label>
 
      </div>
  



      
  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="gst" aria-describedby="emailHelp" placeholder="Your Phone Number"/>
   <label for="floatingInput" class="form-label">GST</label>
 
      </div>
  

      
  <div class="form-floating mb-3">
    <input type="text" runat="server" class="form-control" id="Duration" aria-describedby="emailHelp" placeholder="Your Phone Number"/>
   <label for="floatingInput" class="form-label">Duration</label>
 
      </div>
  

       
      <div class="form-floating mb-3">
 
      <asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick = "Upload" />

  </div>

         
         
         






 <div class="mt-5">
     <asp:Button ID="btnServiceedit" runat="server" Text="UPDATE" class="btn btn-primary" OnClick="btnServiceedit_Click"  />&nbsp &nbsp
     <asp:Button ID="btnServicesave" runat="server" Text="SAVE" class="btn btn-success" OnClick="btnServicesave_Click"  />&nbsp &nbsp
     <asp:Button ID="btnServiceclear" runat="server" Text="CLEAR" class="btn btn-danger" OnClick="btnServiceclear_Click" />

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
    
        <asp:Button ID="btnServicesearch" runat="server" Text="SEARCH" class="btn btn-outline-success mt-2" OnClick="btnServicesearch_Click" />
       &nbsp &nbsp &nbsp &nbsp 
        <asp:Button ID="btnServiceview" runat="server" Text="VIEW" class="btn btn-info mt-3" OnClick="btnServiceview_Click" />
        
      </div>
      </nav>  

        



           <div class="mt-5">
          

 <asp:GridView ID="GridViewService" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" 
     CssClass="table table-bordered table-Condensed table-responsive table-hover" OnSelectedIndexChanged="GridViewService_SelectedIndexChanged" OnRowDeleting="GridViewService_RowDeleting"
     DataKeyNames="ServiceID"
     
     AutoGenerateColumns="false"
     >
                     


       <Columns>
           <asp:ButtonField ButtonType="Button" CommandName="select" HeaderText="SelectedRow" ShowHeader="True" Text="EDIT">
           <ControlStyle BackColor="#33CCFF" />
           </asp:ButtonField>
           <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="DELETE" ShowHeader="True"

            Text="DELETE">
           <ControlStyle BackColor="Maroon" />
           </asp:ButtonField>
           
          <%-- <asp:ImageField DataImageUrlField="Path" HeaderText="Image" />--%>
           <asp:BoundField DataField="id" HeaderText="S.NO" />
            <asp:BoundField DataField="ServiceID" HeaderText="SERVICE ID" />
 <asp:BoundField DataField="Servicename" HeaderText="SERVICE NAME" />
 <asp:BoundField DataField="Description" HeaderText="DESCRIPTION" />
 <asp:BoundField DataField="Price" HeaderText="PRICE" />
 <asp:BoundField DataField="GST" HeaderText="GST %" />

 <asp:BoundField DataField="Duration" HeaderText="DURATION" />



           <asp:ImageField DataImageUrlField="ImagePath" HeaderText="Image" ControlStyle-Height="100" ControlStyle-Width="100" />


          <%-- <asp:TemplateField HeaderText="Image" >
               <ItemTemplate>

                   <img src="ServerProfile/<%# Eval("ImagePath") %>" style="width:80px;height:100px" /> 
               </ItemTemplate>
           </asp:TemplateField>
    --%>   </Columns>





    <%-- <asp:TemplateField HeaderText="Image">
    <ItemTemplate>
        <img src='<%# Eval("ImagePath") %>' style="width:80px;height:100px" />
    </ItemTemplate>
</asp:TemplateField>--%>





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
