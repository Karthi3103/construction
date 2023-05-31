<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Estimation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
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
        <h4>Estimation</h4>
        </div>
       
    <form action="Estimation" method="post">
    
        <div class="container d-flex justify-content-center">
        <h4> ${Total_Ammount}</h4>
       
        </div>
        
        
        
        <div class="container px-4">
  <div class="row gx-5">
    <div class="col">
     <div ><label class="form-label" for="form2Example1">Name</label>
          <input type="text" id="form2Example1" class="form-control" name="Name" placeholder="Enter Name" required/></div>
    </div>
    <div class="col">
      <div ><label class="form-label" for="form2Example1">Email ID</label>
          <input type="email" id="form2Example1" class="form-control" name="email_id" placeholder="Enter Email" required/></div>
    </div>
  </div>
</div>
    
        <!-- Name input -->
        <div class="form-outline mb-4">
        <label class="form-label" for="form2Example1">Name</label>
          <input type="text" id="form2Example1" class="form-control" name="Name" placeholder="Enter Name" required/>
        </div>
          
       
        <!-- Email input -->
        <div class="form-outline mb-4">
        <label class="form-label" for="form2Example1">Email address</label>
          <input type="email" id="form2Example1" class="form-control" name="email_id" placeholder="Enter Email" required/>
          
        </div>
        
        
        <!-- Phone number input -->
        <div class="form-outline mb-4">
        <label class="form-label" for="form2Example1">Mobile Number</label>
          <input type="number" id="form2Example1" class="form-control" name="Mobile_No" placeholder="Enter mobile number" required/>
          
        </div>
      
        <!--Square feet input -->
        <div class="form-outline mb-4">
         <label class="form-label" for="form2Example2">Square Feet</label>
          <input type="number" id="form2Example2" class="form-control" name="Square_feet" placeholder="Enter Square Feet" required/>
          
        </div>
        
            <!-- door Account --> 
        <div class="form-outline mb-4">
          <label class="form-label" for="form2Example1">Main door</label>
          <select class="form-select" aria-label="Default select example" name="Door_Cost" required>
             <option selected>Select</option>
             <option value="Basic">Basic</option>
             <option value="Premium">Premium</option>
             <option value="Ultra_Premium">Ultra Premium</option>
             
            </select>
            </div>
            
            
            <!--House Category feet input -->
        <div class="form-outline mb-4">
         <label class="form-label" for="form2Example2">No Of Rooms</label>
          <input type="number" id="form2Example2" class="form-control" name="No_Of_rooms" placeholder="Enter House Category" required/>
          
        </div>
            
            <!--Bathroom Category feet input -->
        <div class="form-outline mb-4">
         <label class="form-label" for="form2Example2">Wash Room</label>
          <input type="number" id="form2Example2" class="form-control" name="Wash_Room" placeholder="Enter no of wash room" required/>
          
        </div>
      
      <!--Windows Category feet input -->
        <div class="form-outline mb-4">
         <label class="form-label" for="form2Example2">Windows</label>
          <input type="number" id="form2Example2" class="form-control" name="Windows" placeholder="Enter no of Windows" required/>
          
        </div>
        
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <input type="submit" value="Estimate" class="btn btn-secondary btn-block mb-4 buttonw">
        
        </div>
        
       
        
        
      </form>

		<div class="container d-flex justify-content-center">
               
			  <a class="btn btn-secondary btn-block mb-4 buttonw" href="Finding_estimations.jsp" role="button">Estimation Details</a>
			 
		</div>


	</div>
    
    <%

      response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  //HTTP 1.1

      response.setHeader("pragma", "no-cache");  //HTTP 1.0

      response.setHeader("Expires", "5");  //proxies

   

      if(session.getAttribute("Email") == null)

      {

    	  response.sendRedirect("index.jsp");

      }

      %>
    
    
          
         
           
      
</body>
</html>