
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <link rel="stylesheet" href="index.css">
    
    <style type="text/css">
    .avatar {
  vertical-align: middle;
  width: 25px;
  height: 25px;
  border-radius: 50%;
}
    </style>

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

						
						<!-- <li class="nav-item"><a href="Supervisor_Inventory.jsp" class="nav-link text-white">Inventory</a></li> -->
						
						<li class="nav-item">
							<div class="dropdown">
								<button class="btn btn-dark dropdown-toggle" type="button"
									data-bs-toggle="dropdown" aria-expanded="false">
									Inventory</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="Supervisor_Inventory.jsp">Inventory</a></li>
									<li><a class="dropdown-item" href="Show_Supervisor_Inventory.jsp">Inventory Details</a></li>  
                                    
								</ul>
							</div>

						</li>

						
						<li class="nav-item"><a href="Supervisor_Resource.jsp" class="nav-link text-white">Resource</a></li>
							
							
							<li class="nav-item">
							<div class="dropdown">
								<button class="btn btn-dark dropdown-toggle" type="button"
									data-bs-toggle="dropdown" aria-expanded="false">
									<img src="https://www.w3schools.com/w3images/avatar6.png" alt="Avatar" class="avatar" >   <%out.println(session.getAttribute("Employee_Name")); %>
									</button>
								<ul class="dropdown-menu">
									<li style="padding-left:10px;"><a class="dropdown-item" href="">Profile</a></li>
									<li class="dropdown-item"><form action="Logout" method="post">
							               <input type="submit" value="Logout" class="nav-link text-black">
							             </form> 
							        </li> 
							         
                                    
								</ul>
							</div>

						</li>
							
					</ul>

				</div>

			</div>

		</nav>
	</header>

	<!--end navbar -->
	
	
	<div class="container bg-white" style="margin-top:5%">
	
	<h3 class="text-success">Welcome:  <% out.println(session.getAttribute("Employee_Name"));%> </h3>
	
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>
</html>