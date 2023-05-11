<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <link rel="stylesheet" href="index.css">

    
</head>

<body>

<header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

            <div class="container">
                   <a href="/" class="navbar-brand"> Puviagam </a>

                     <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#Mynavbar" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                     </button>
 
            <div class="collapse navbar-collapse" id="Mynavbar">

                <ul class="navbar-nav ms-auto">
                   <li class="nav-item"> 
                    <a href="#" class="nav-link  text-white">Home</a>
                   </li>

                   <li class="nav-item">
                    <div class="dropdown">
                      <button class="btn btn-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Registration</button>
                        <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="Customer_Details.jsp">Customer</a></li>
   						 <li><a class="dropdown-item" href="Registration.jsp">Employee</a></li>
   						 
  					</ul>
					</div>
					
                   </li>

                   <li class="nav-item">
                    <a href="#aboutus" class="nav-link text-white">Customer Details</a>
                   </li>

                   <li class="nav-item">
                    <a href="#contact" class="nav-link text-white"></a>
                   </li>

                   <li class="nav-item">
                    <a href="login.html" class="nav-link text-white">Logout</a>
                   </li>
                </ul>

            </div>

           </div>
           
        </nav>
    </header>
    <!--end navbar -->

    <div class="container dis_back2 mb-4 bg-white">
        <h4>Employee Registration</h4>
     <form action="Insert" method="post">
     
        
         
          
          <!-- Employee Id input -->
        <div class="form-outline mb-4">
          <label class="form-label" for="form2Example1" >Employee Id</label>
          <input type="text" id="form2Example1" class="form-control" name="Employee_Id" required/>
        </div>
     
     
        <!-- Username input -->
        <div class="form-outline mb-4">
          <label class="form-label" for="form2Example1" >Employee Name</label>
          <input type="text" id="form2Example1" class="form-control" name="Employee_Name" required/>
        </div>
      
        <!-- Email-id input -->
        <div class="form-outline mb-4">
          <label class="form-label" for="form2Example2" >Email Id</label>
          <input type="email" id="form2Example2" class="form-control"  name="Employee_Email" required/>
        </div>

        
        <!-- password input -->
        <div class="form-outline mb-4">
            <label class="form-label" for="form2Example1" >Password</label>
            <input type="password" id="form2Example1" class="form-control" name="Employee_Password" required/>
        </div>

        <!-- password input -->
        <div class="form-outline mb-4">
            <label class="form-label " for="form2Example1">Confirm Password</label>
            <input type="password" id="form2Example1" class="form-control" required/>
        </div>
          
          <!-- Mobile number input -->
        <div class="form-outline mb-4">
            <label class="form-label " for="form2Example1" >Mobile Number</label>
            <input type="number" class="form-control" id="form2Example1" name="Employee_Mobile_No" required>
        </div>
          
      
      <!-- Address details -->
        <div class="form-outline mb-4">
            <label class="form-label " for="form2Example1" >Address</label>
           
            <textarea  id="form2Example1" class="form-control" name="Employee_Address" ></textarea>
           
        </div>
        
       
      
          
       
         
      
      
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <!-- <button type="button" class="btn btn-primary btn-block mb-4 buttonw">Register</button>-->
        <input type="submit" value="Register" class="btn btn-primary btn-block mb-4 buttonw">
        </div>
    
     <div class="container">
            <!-- Error_Message_Login -->
            <h6 class="text-danger">${pass_err_msg }</h6>
          </div>
      </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
