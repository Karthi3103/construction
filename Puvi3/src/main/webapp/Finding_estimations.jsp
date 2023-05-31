<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Estimation Details</title>
    

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="index.css">
    
   <style>
   
   .dis_back_c
   {
  
    padding-left: 40px;
    padding-right: 40px;
    width: 30%;
    margin-top: 100px;
    border-radius: 10px;
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

<div class="container dis_back_c mb-4 bg-white">

<form class="row g-3" action="Finding_estimations.jsp" method="post">
  
  <div class="col-auto">
    <label for="inputPassword2" class="visually-hidden">Email-id</label>
    <input type="text" class="form-control" id="inputPassword2" name="search" placeholder="Email-id or Phone_No">
  </div>
  
   
  
  <div class="col-auto">
    <button type="submit" class="btn btn-primary mb-3">Get details</button>
  </div>
</form>
</div>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String search = request.getParameter("search");
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
PreparedStatement ps = null;
ResultSet resultSet = null;
%>

<div class="container-fluid table-responsive-lg" id="showcustomerdetails">

<table class="table bg-white">


<tr class="text-white bg-black">
<td style="width:5%"><b>Sno</b></td>
<td style="width:5%"><b>Name</b></td>
<td style="width:5%"><b>Email</b></td>
<td style="width:5%"><b>Phone</b></td>
<td style="width:8%"><b>Date</b></td>
<td style="width:8%"><b>Measurement</b></td>
<td style="width:8%"><b>Sand Qty</b></td>
<td style="width:8%"><b>Sand Amount</b></td>
<td style="width:8%"><b>Cement Qty</b></td>
<td style="width:5%"><b>Cement Amount</b></td>
<td style="width:5%"><b>Brick Qty</b></td>
<td style="width:8%"><b>brick Amount</b></td>
<td style="width:8%"><b>Steel Qty</b></td>
<td style="width:8%"><b>SteelAmount</b></td>
<td style="width:8%"><b>OuterpaintArea</b></td>
<td style="width:8%"><b>OuterPaintAmount</b></td>
<td style="width:8%"><b>Inner Paint Qty</b></td>
<td style="width:8%"><b>InnerPaintAmount</b></td>
<td style="width:8%"><b>BasementAmount</b></td>
<td style="width:8%"><b>Flooring</b></td>

<td style="width:5%"><b>FlooringAmount</b></td>
<td style="width:8%"><b>Electrical_PlumbingAmount</b></td>
<td style="width:8%"><b>BathroomMatreialsAmount</b></td>
<td style="width:8%"><b>BathroomDoorAmount</b></td>
<td style="width:8%"><b>MainDoorAmount</b></td>
<td style="width:8%"><b>BedRoomDoor_Amount</b></td>
<td style="width:8%"><b>WindowsCost</b></td>
<td style="width:8%"><b>KitchenGraniteAmount</b></td>
<td style="width:8%"><b>TotalCost ₹</b></td>
</tr>

<%
try
{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
//statement=connection.createStatement();
String sql = "select * from temp_estimation where email_id=? or phone=?";
ps = connection.prepareStatement(sql);
ps.setString(1,search);
ps.setString(2,search);

resultSet = ps.executeQuery();

while(resultSet.next())
{  
	
%>

<tr >
<td>  <%=resultSet.getInt(1) %>   </td>
<td>  <%=resultSet.getString(2) %>   </td>
<td>  <%=resultSet.getString(3) %>   </td>
<td>  <%=resultSet.getString(4) %>   </td>
<td>  <%=resultSet.getString(5) %>   </td>
<td>  <%=resultSet.getDouble(6) %>   </td>
<td>  <%=resultSet.getDouble(7) %>   </td>
<td>  <%=resultSet.getDouble(8) %>   </td>
<td>  <%=resultSet.getDouble(9) %>   </td>
<td>  <%=resultSet.getDouble(10) %>   </td>
<td>  <%=resultSet.getDouble(11) %>   </td>
<td>  <%=resultSet.getDouble(12) %>   </td>
<td>  <%=resultSet.getDouble(13) %>   </td>
<td>  <%=resultSet.getDouble(14) %>   </td>
<td>  <%=resultSet.getDouble(15) %>   </td>
<td>  <%=resultSet.getDouble(16) %>   </td>
<td>  <%=resultSet.getDouble(17) %>   </td>
<td>  <%=resultSet.getDouble(18) %>   </td>
<td>  <%=resultSet.getDouble(19) %>   </td>
<td>  <%=resultSet.getDouble(20) %>   </td>
<td>  <%=resultSet.getDouble(21) %>   </td>
<td>  <%=resultSet.getDouble(22) %>   </td>
<td>  <%=resultSet.getDouble(23) %>   </td>
<td>  <%=resultSet.getDouble(24) %>   </td>
<td>  <%=resultSet.getDouble(25) %>   </td>
<td>  <%=resultSet.getDouble(26) %>   </td>
<td>  <%=resultSet.getDouble(27) %>   </td>
<td>  <%=resultSet.getDouble(28) %>   </td>
<td>  <%=resultSet.getDouble(29) %>   </td>

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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>