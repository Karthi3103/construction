<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.time.LocalDate" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="All_Codes.JDBC"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<link rel="stylesheet" href="index.css">

<title>Inventory</title>
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
						<li class="nav-item"><a href="Employee_Master.jsp" class="nav-link  text-white">Home</a></li>
						
						<li class="nav-item"><a href="Supervisor_Site_Status.jsp" class="nav-link text-white">Site Status</a></li>

						
						<li class="nav-item"><a href="Supervisor_Inventory.jsp" class="nav-link text-white">Inventory</a></li>

						
						<li class="nav-item"><a href="Supervisor_Resource.jsp" class="nav-link text-white">Resource</a></li>
							
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
        <h4>Inventory</h4>
     <form action="Supervisor_Inventory_prce.jsp" method="post">

			<!-- Error and Sucess_Message_Login -->
			<div class="container">
				<h6 class="text-danger">${pass_err_msg}</h6>
				<h6 class="text-success">${pass_sucess_msg}</h6>
			</div>

		<!-- Site Id input -->
     <div class="form-outline mb-4">
        <label class="form-label " for="form2Example1" >Site Id</label>
           <select   class="form-select "  name="site_id"   aria-label="Default select example"  id="selectColor" required>
             <option selected>Select Site Id</option>
             
             <% try
             {
            	 String Supervisor_id = (String)session.getAttribute("Employee_id");
            	 ArrayList<String> Supervisor_Site_id=JDBC.Get_Site_id(Supervisor_id);
             
        		
        		for(int j=0;j<Supervisor_Site_id.size();j++)
        		{
        		
        	 %>
             <option  value="<%= Supervisor_Site_id.get(j)%>"><%= Supervisor_Site_id.get(j)%></option>

             <%} 
        		}
             catch(Exception e)
             {
            	 e.printStackTrace();
             }
             %>
             
            </select>
            
          </div>
    
        
      
         <div class="form-outline mb-4">
          <label class="form-label" for="form2Example1">Account Type</label>
          <select class="form-select" aria-label="Default select example" name="process_type" required>
             <option selected>Select</option>
             <option value="stock_in">Stock In</option>
             <option value="stock_out">Stock Out</option>
            
             
            </select>
          
        </div>

        
     
          
          <!-- sand number input -->
        <div class="form-outline mb-4">
            <label class="form-label " for="form2Example1" >Sand (cubic feet)</label>
            <input type="number" class="form-control" id="form2Example1" name="sand"  required>
        </div>
          
      
         <!-- cement number input -->
        <div class="form-outline mb-4">
            <label class="form-label " for="form2Example1" >Cement</label>
            <input type="number" class="form-control" id="form2Example1" name="cement"  required>
        </div>
        
       
       <!-- steel number input -->
        <div class="form-outline mb-4">
            <label class="form-label " for="form2Example1" >Steel (Kg)</label>
            <input type="number" class="form-control" id="form2Example1" name="steel"  required>
        </div>
          
        <!-- aggregate number input -->
        <div class="form-outline mb-4">
            <label class="form-label " for="form2Example1" >Aggregate (cubic feet)</label>
            <input type="number" class="form-control" id="form2Example1" name="aggregate"  required>
        </div>
         
      
      
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <!-- <button type="button" class="btn btn-primary btn-block mb-4 buttonw">Register</button>-->
        <input type="submit" value="update" class="btn btn-primary btn-block mb-4 buttonw">
        </div>
    

      </form>
      
      <div class="container d-flex justify-content-center">
               
			  <a class="btn btn-secondary btn-block mb-4 buttonw" href="Show_Supervisor_Inventory.jsp" role="button">View Inventory</a>
			 
		</div>
		
    </div>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1

response.setHeader("pragma", "no-cache"); //HTTP 1.0

response.setHeader("Expires", "0"); //proxies


if (session.getAttribute("Email") == null)

{

	response.sendRedirect("index.jsp");

}
out.println(session.getAttribute("Employee_id"));
%>


</body>
</html>