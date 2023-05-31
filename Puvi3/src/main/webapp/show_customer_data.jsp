<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    <%@page import="java.sql.*"%>
    <%@page import="java.util.*"%>
    <%@page import="All_Codes.JDBC"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Details</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <link rel="stylesheet" href="index.css">
<style>
table, th, td 
{
  border: 1px solid black;
  border-collapse: collapse;
  text-align:center;
}

</style>
</head>
<body >



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "puviagam";
String userId = "root";
String password = "Karthi@31";

try 
{
Class.forName(driverName);
} 
catch (ClassNotFoundException e) 
{
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>




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
	
	<h2 align="center"><font><strong>Customer Details</strong></font></h2>


<div class="container-fluid table-responsive-lg" id="showcustomerdetails">

<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src=" https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src=" https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap4.min.js"></script>

  <script type="text/javascript">
  $(document).ready(function () {
	  $('#dtBasicExample').DataTable();
	  $('.dataTables_length').addClass('bs-select');
	 
	  });
  
  function refreshPage(){
	  
	 var test=" <%
	  String id1=request.getParameter("id1");

	  if(id1 != null){
	  	JDBC.Delete_Customer(id1);
	  }


	  %>"
	    alert("If you want to Delete")
	    window.location.reload();
	}
  
    </script>
    
<table class="table bg-white" id="dtBasicExample">

 <thead>
<tr bgcolor="black" class="text-white">
<td style="width:5%"><b>Customer Id</b></td>
<td style="width:5%"><b>Customer Name</b></td>
<td style="width:5%"><b>Customer Email-id</b></td>
<td style="width:5%"><b>password</b></td>
<td style="width:5%"><b>Phone</b></td>
<td style="width:5%"><b>Gender</b></td>
<td style="width:5%"><b>DOB</b></td>
<td style="width:5%"><b>Customer Address</b></td>

<td style="width:5%"><b>Site Number</b></td>
<td style="width:5%"><b>Site Location</b></td>
<td style="width:5%"><b>Site Area</b></td>
<td style="width:5%"><b>Site District</b></td>
<td style="width:5%"><b>Site State</b></td>
<td style="width:5%"><b>Site Pincode</b></td>
<td style="width:5%"><b>Site Details</b></td>
<td style="width:5%"><b>Site Incharge</b></td>
<td style="width:5%"><b>Edit</b></td>
<td style="width:5%"><b>Delete</b></td>
</tr>
 </thead>
<%
try
{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="select * from customer;";
int i = 0;
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{  
	i++;
%>

<tr >

<td>  <%=resultSet.getString(2) %>   </td>
<td>  <%=resultSet.getString(3) %>   </td>
<td>  <%=resultSet.getString(4) %>   </td>
<td>  <%=resultSet.getString(5) %>   </td>
<td>  <%=resultSet.getString(6) %>   </td>
<td>  <%=resultSet.getString(7) %>   </td>
<td>  <%=resultSet.getString(8) %>   </td>
<td>  <%=resultSet.getString(9) %>   </td>
<td>  <%=resultSet.getString(10) %>   </td>
<td>  <%=resultSet.getString(11) %>   </td>
<td>  <%=resultSet.getString(12) %>   </td>
<td>  <%=resultSet.getString(13) %>   </td>
<td>  <%=resultSet.getString(14) %>   </td>
<td>  <%=resultSet.getString(15) %>   </td>
<td>  <%=resultSet.getString(16) %>   </td>
<td>  <%=resultSet.getString(17) %>   </td>
<td> <form id="myForm" action="Customer_update.jsp" method="post">
  <input type="hidden" name="id" value= "<%=resultSet.getString(2) %>"/>
  <input type="submit" class="btn btn-info" value="Edit">
</form> 
</td>
<td>
<form id="myForm" action="show_customer_data.jsp" method="post">
  <input type="hidden" name="id1" value= "<%=resultSet.getString(2) %>"/>
  
  <button type="submit" class="btn btn-danger" onClick="refreshPage()">Delete</button>
</form>
</td>
</tr>

<% 
}
%>




<%
connection.close();
} 
catch (Exception e) 
{
e.printStackTrace();
}
%>
</table>


  </div>




  <%

      response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  //HTTP 1.1

      response.setHeader("pragma", "no-cache");  //HTTP 1.0

      response.setHeader("Expires", "0");  //proxies

   

      if(session.getAttribute("Email") == null)

      {

    	  response.sendRedirect("index.jsp");

      }

      %>
      
    
      
      	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
      
</body>
</html>