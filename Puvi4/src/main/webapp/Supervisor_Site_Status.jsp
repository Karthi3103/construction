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
<title>Site_Status</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

<link rel="stylesheet" href="index.css">
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}
</style>
</head>
<body class="bg-white">

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
	
	
	<div class="container" style="margin-top:4%;">
	<form action="Supervisor_Site_Status.jsp" method="post">
	 <!-- Site Id input -->
     <div class="form-outline mb-4">
        <label class="form-label " for="form2Example1" >Site Id</label>
           <select   class="form-select "  name="Site_Id"   aria-label="Default select example"  id="selectColor" required>
             <option selected>Select Site Id</option>
             
             <% try
             {
            	 String Supervisor_id = (String)session.getAttribute("Employee_id");
            	 ArrayList<String> customer=JDBC.Get_Site_id(Supervisor_id);
             
        		
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
           <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <input type="submit" value="Show Site Status" class="btn btn-secondary btn-block mb-4 buttonw">
        
        </div>

</form >
</div>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%@page import="java.sql.PreparedStatement"%>
	<%
	//String sno = request.getParameter("Sno");
	String driverName = "com.mysql.cj.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "puviagam";
	String userId = "root";
	String password = "Karthi@31";
	String Emp_id = (String)request.getSession().getAttribute("Employee_id");
	
	String site_id =request.getParameter("Site_Id");

	try 
	{
		Class.forName(driverName);
	} 
	catch (ClassNotFoundException e) 
	{
		e.printStackTrace();
	}

	Connection connection = null;
	//Statement statement = null;
	//PreparedStatement ps=null;
	ResultSet resultSet = null;
	%>

	<h2 align="center">
		<font><strong>Site_Status</strong></font>
	</h2>

	<div class="container table-responsive-lg" id="showcustomerdetails">

		<%
		try 
		{
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			
			String sql = "Select * from customer where emp_id=? and project_site_number=?";
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setString(1, Emp_id);
			ps.setString(2, site_id);
			resultSet = ps.executeQuery();
			while (resultSet.next()) 
			{
				//price_date = resultSet.getString(2);
		%>
		

		<table class="table">
		
		<tr bgcolor="black" class="text-white">
				<td style="width: 5%"><b></b></td>
				<td><b><%=resultSet.getString(10)%></b></td>
				<td style="width: 5%"><b></b></td>
			</tr>
		
		
		

			<tr bgcolor="black" class="text-white">
				<td style="width: 5%"><b>Phases</b></td>
				<td style="width: 5%"><b>Remarks</b></td>
				<td style="width: 5%"><b>Status</b></td>
			</tr>

			<tr>
				<td>Phase 1</td>
				<td><%=resultSet.getString(19)%></td>
				<td><%=resultSet.getString(18)%></td>
			</tr>

			<tr>
				<td>Phase 2</td>
				<td><%=resultSet.getString(21)%></td>
				<td><%=resultSet.getString(20)%></td>
			</tr>

			<tr>
				<td>Phase 3</td>
				<td><%=resultSet.getString(23)%></td>
				<td><%=resultSet.getString(22)%></td>
			</tr>

			<tr>
				<td>Phase 4</td>
				<td><%=resultSet.getString(25)%></td>
				<td><%=resultSet.getString(24)%></td>
			</tr>

			<tr>
				<td>Phase 5</td>
				<td><%=resultSet.getString(27)%></td>
				<td><%=resultSet.getString(26)%></td>
			</tr>
			
			<tr>
				<td>Phase 6</td>
				<td><%=resultSet.getString(29)%></td>
				<td><%=resultSet.getString(28)%></td>
			</tr>

			<tr>
				<td>Phase 7</td>
				<td><%=resultSet.getString(31)%></td>
				<td><%=resultSet.getString(30)%></td>
			</tr>
			
			<tr>
				<td>Phase 8</td>
				<td><%=resultSet.getString(33)%></td>
				<td><%=resultSet.getString(32)%></td>
			</tr>
			
			
			
			
			
			
		</table>
               <form id="myForm" action="Supervisor_phase_update.jsp" method="post">
		<div class="container d-flex justify-content-center">
			
				<input type="hidden" name="Site_id" value="<%=resultSet.getString(10)%>" />
				<div class="container d-flex justify-content-center">
					
					<input type="submit" value="Update Details"
						class="btn btn-primary btn-block mb-4 ">
				</div>

			</div>
		</form>

		<%
		}
		%>

		<%
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>

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


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>