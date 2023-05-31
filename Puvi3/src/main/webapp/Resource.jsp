<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resource management</title>

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
	
	
	
	 <div class="container dis_back bg-white mb-4 ">
    
    <!-- Login Heading -->
    <div class="container d-flex justify-content-center Login_title">
        <h4>Attendance</h4>
        </div>
       
    <form action="" method="post">
    
        
        <!-- Date input -->
        <div class="form-outline mb-4">
        <label class="form-label" for="form2Example1">Date</label>
          <input type="email" id="form2Example1" class="form-control" name="email_id" value="<% LocalDate myObj = LocalDate.now(); // Create a date object
        		    out.println(myObj); // Display the current date %>" readonly required/>
          
        </div>
      
        <!-- Male input -->
        <div class="form-outline mb-4">
         <label class="form-label" for="form2Example2">Male</label>
          <input type="password"  class="form-control" id="myInput" name="password" placeholder="No of males" required/>
          </div>
          
          
              <!-- Female input -->
        <div class="form-outline mb-4">
         <label class="form-label" for="form2Example2">Female</label>
          <input type="password"  class="form-control" id="myInput" name="password" placeholder="No of females" required/>
          </div>
          
          
           
      
      
      
         
      
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <input type="submit" value="Submit" class="btn btn-secondary btn-block mb-4 buttonw">
        
        </div>
      </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>





</body>
</html>