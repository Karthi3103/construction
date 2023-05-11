<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
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

<a href="Registration.jsp">emp_reg</a>
<a href="Client_Details.jsp">cus_res</a>
</body>
</html>