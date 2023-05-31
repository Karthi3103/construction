<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@page import="java.sql.*"%>
    <%@page import="java.util.*"%>
    <%@page import="All_Codes.JDBC"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site Registration</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <link rel="stylesheet" href="index.css">
    


</head>

<body>

 <!--navbar start-->

	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

			<div class="container">
				<a href="/" class="navbar-brand"> Puviagam </a>

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#Mynavbar"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="Mynavbar">

					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a href="Admin_Master.jsp" class="nav-link  text-white">Home</a></li>

						<li class="nav-item">
							<div class="dropdown">
								<button class="btn btn-dark dropdown-toggle" type="button"
									data-bs-toggle="dropdown" aria-expanded="false">
									Registration</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="Customer_Details.jsp">Customer</a></li>
									<li><a class="dropdown-item" href="Site_Register.jsp">Site Register</a></li>  
                                    <li><a class="dropdown-item" href="Employee_Details.jsp">Employee</a></li>
								</ul>
							</div>

						</li>
						
						
						<li class="nav-item">
							<div class="dropdown">
								<button class="btn btn-dark dropdown-toggle" type="button"
									data-bs-toggle="dropdown" aria-expanded="false">
									Details</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="show_customer_data.jsp">Customer Details</a></li>
									<li><a class="dropdown-item" href="show_employee_data.jsp">Employee Details</a></li>  
                                   
								</ul>
							</div>

						</li>

						

						<li class="nav-item"><a href="Estimation.jsp" class="nav-link text-white">Estimation</a></li>
						
						<li class="nav-item"><a href="price.jsp" class="nav-link text-white">Price</a></li>

						<li class="nav-item"><a href="Inventory.jsp" class="nav-link text-white">Inventory</a></li>

						<li class="nav-item"><a href="Cost_estimation.jsp" class="nav-link text-white">Cost Management</a></li>
						
						<li class="nav-item"><a href="Resource.jsp" class="nav-link text-white">Resource</a></li>
							
							<li class="nav-item"> 
							<form action="Logout" method="post">
							
							<input type="submit" value="Logout" class="nav-link text-white">
							
							</form>
							</li>
							
							
					</ul>

				</div>

			</div>

		</nav>
	</header>

	<!--end navbar -->
	
	
    <div class="container dis_back2 mb-4 bg-white">
        <h4>Site Registration</h4>
     <form action="Site_data"  method="post" id="details">
     
     
     <!-- Error and Sucess_Message_Login -->
			<div class="container">
				<h6 class="text-danger">${pass_err_msg }</h6>
				<h6 class="text-success">${pass_sucess_msg }</h6>
			</div>
     
        <!-- customer Id input -->
     <div class="form-outline mb-4">
        <label class="form-label " for="form2Example1" >Customer Id</label>
           <select   class="form-select "  name="Customer_Id"   aria-label="Default select example"  id="selectColor" required>
             <option selected>Select Customer Id</option>
             
             <% try
             {
            	 ArrayList<String> customer=JDBC.Get_Customer_id();
             
        		
        		for(int j=0;j<customer.size();j++)
        		{
        		
        	 %>
             <option  value="<%= customer.get(j)%>"><%= customer.get(j)%></option>

             <%} 
        		}
             catch(Exception e)
             {
            	 e.printStackTrace();
             }
             %>
             
            </select>
            
          </div>
        
        
          
        <!--Location-->
        <div class="form-outline mb-4">
        <label class="form-label " for="form2Example1 " >Location</label>
            <input type="text" id="form2Example12" class="form-control" name="Site_Location" required/>
            
          </div>
          
          
              <!--Area -->
            <div class="form-outline mb-4">
            <label class="form-label " for="form2Example1" >Area</label>
            <input type="text" id="form2Example1" class="form-control" name="Site_Area" required/>
            
             </div>
          
          
                <!--District -->
        <div class="form-outline mb-4">
        <label class="form-label " for="form2Example1" >District</label>
           <select   class="form-select "  name="Site_District"   aria-label="Default select example"  id="selectColor" required>
             <option selected>Select District</option>
             <option value="Ariyalur">Ariyalur</option>
             <option value="Chengalpattu">Chengalpattu</option>
             <option value="Chennai">Chennai</option>
             <option value="Coimbatore">Coimbatore</option>
             <option value="Cuddalore">Cuddalore</option>
             <option value="Dharmapuri">Dharmapuri</option>
  			 <option value="Dindigul">Dindigul</option>
             <option value="Erode">Erode</option>
             <option value="Kallakurichi">Kallakurichi</option>
             <option value="Kancheepuram">Kancheepuram</option>
             <option value="Karur">Karur</option>
             <option value="Krishnagiri">Krishnagiri</option>
             <option value="Madurai">Madurai</option>
             <option value="Mayiladuthurai">Mayiladuthurai</option>
             <option value="Nagapattinam">Nagapattinam</option>
  			 <option value="Kanniyakumari">Kanniyakumari</option>
             <option value="Namakkal">Namakkal</option>
             <option value="Perambalur">Perambalur</option>
             
             <option value="Pudukottai">Pudukottai</option>
             <option value="Ramanathapuram">Ramanathapuram</option>
  			 <option value="Ranipet">Ranipet</option>
             <option value="Salem">Salem</option>
             <option value="Sivagangai">Sivagangai</option>
             <option value="Kancheepuram">Kancheepuram</option>
             <option value="Tenkasi">Tenkasi</option>
             <option value="Thanjavur">Thanjavur</option>
             <option value="Theni">Theni</option>
             <option value="Thiruvallur">Thiruvallur</option>
             <option value="Thiruvarur">Thiruvarur</option>
  			 <option value="Thoothukudi">Thoothukudi</option>
             <option value="Trichirappalli">Trichirappalli</option>
             <option value="Thirunelveli">Thirunelveli</option>
             
             <option value="Tirupathur">Tirupathur</option>
             <option value="Tiruppur">Tiruppur</option>
             <option value="Tiruvannamalai">Tiruvannamalai</option>
             <option value="The Nilgiris">The Nilgiris</option>
             <option value="Vellore">Vellore</option>
  			 <option value="Viluppuram">Viluppuram</option>
             <option value="Virudhunagar">Virudhunagar</option>
             
             
            </select>
            
          </div>
          
          <!--State -->
        <div class="form-outline mb-4">
        <label class="form-label " for="form2Example1" >State</label>
            <input type="text" id="form2Example1" class="form-control" name="Site_State" value="Tamil Nadu" required/>
            
          </div>
    
          
               <!--Pincode -->
        <div class="form-outline mb-4">
        <label class="form-label " for="form2Example1" >Pincode</label>
            <input type="text" id="form2Example1" class="form-control" name="Site_Pincode"  required/>
            
          </div>
          
                <!--Site Details-->
        <div class="form-outline mb-4">
        <label class="form-label " for="form2Example1" >Site Details</label>
          <!--   <input type="text" id="form2Example1" class="form-control" name="Site_Details"  required/> --> 
          <textarea  id="form2Example1" class="form-control" name="Site_Details" ></textarea>
            
          </div>
          
          <!--Employee id  MappingDetails-->
        
          <div class="form-outline mb-4">
        <label class="form-label " for="form2Example1" >Site Incharge</label>
           <select   class="form-select "  name="Site_Incharge"   aria-label="Default select example"  id="selectColor" required>
             <option selected>Select Site Incharge</option>
             
             <% try
             {
            	 ArrayList<String> list=JDBC.Get_Site_Supervisor_id();
             
        		
        		for(int i=0;i<list.size();i++)
        		{
        		
        	 %>
             <option  value="<%= list.get(i)%>"><%= list.get(i)%></option>

             <%} 
        		}
             catch(Exception e)
             {
            	 e.printStackTrace();
             }
             %>
             
            </select>
            
          </div>
        
        
          
      
      
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <!-- <button type="button" class="btn btn-primary btn-block mb-4 buttonw">Register</button>-->
        <input type="submit" value="Register" class="btn btn-primary btn-block mb-4 buttonw">
    </div>
      </form>
    </div>
    
    
    
   
    
    <%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1

response.setHeader("pragma", "no-cache"); //HTTP 1.0

response.setHeader("Expires", "0"); //proxies

if (session.getAttribute("Email") == null)

{

	response.sendRedirect("index.jsp");

}

%>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
