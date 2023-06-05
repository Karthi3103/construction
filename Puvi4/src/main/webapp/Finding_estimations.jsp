<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Finding Estimation</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <link rel="stylesheet" href="index.css">
    

          
<!-- date -->
           <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
           <link rel="stylesheet" href="https://cdn.datatables.net/datetime/1.4.1/css/dataTables.dateTime.min.css">

           <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
           
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">

<link rel="stylesheet" href="https://cdn.datatables.net/fixedcolumns/4.2.2/css/fixedColumns.dataTables.min.css">

<style>
table, th, td 
{
  
  border-collapse: collapse;
  text-align:center;
  font-size:14px;
}

tfoot input {
        width: 100%;
        padding: 3px;
        box-sizing: border-box;
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

<h2 align="center"><font><strong>Estimation Details</strong></font></h2>


<!--navbar start-->

	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"  >

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
                                    <li><a class="dropdown-item" href="show_Site_Status.jsp">Site Status</a></li>
								</ul>
							</div>

						</li>

						

						<li class="nav-item"><a href="Estimation.jsp" class="nav-link text-white">Estimation</a></li>
						
						<li class="nav-item"><a href="price.jsp" class="nav-link text-white">Price</a></li>

						<li class="nav-item"><a href="Manager_Inventory.jsp" class="nav-link text-white">Inventory</a></li>

						<li class="nav-item"><a href="Payment_Management.jsp" class="nav-link text-white">Payment</a></li>
						
						<li class="nav-item"><a href="Manager_Resource.jsp" class="nav-link text-white">Resource</a></li>
							
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


<div class="container-fluid  table-responsive-lg" id="showcustomerdetails">
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src=" https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src=" https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap4.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/fixedcolumns/4.2.2/js/dataTables.fixedColumns.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/datetime/1.4.1/js/dataTables.dateTime.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.2/moment.min.js"></script>

  <script type="text/javascript">
  
 var minDate, maxDate;
  
  $.fn.dataTable.ext.search.push(
		    function( settings, data, dataIndex ) {
		        var min = minDate.val();
		        var max = maxDate.val();
		        var date = new Date( data[4] );
		 
		        if (
		            ( min === null && max === null ) ||
		            ( min === null && date <= max ) ||
		            ( min <= date   && max === null ) ||
		            ( min <= date   && date <= max )
		        ) {
		            return true;
		        }
		        return false;
		    }
		);
  

  
  $(document).ready(function () {
	  // Create date inputs
	    minDate = new DateTime($('#min'), {
	        format: 'MMMM Do YYYY'
	    });
	    maxDate = new DateTime($('#max'), {
	        format: 'MMMM Do YYYY'
	    });
	    
	  //individual search
	    $('#dtBasicExample tfoot th').each(function () {
	        var title = $(this).text();
	        $(this).html('<input type="text" placeholder="Search ' + title + '" />');
	    });
	    // DataTables initialisation
	 var table= $('#dtBasicExample').DataTable({
	        scrollY:        "65vh",
	        scrollX:        true,
	        scrollCollapse: true,
	        paging:         true,
	        
	        fixedColumns:   {
	            left: 1,
	            right: 1
	        },
	 
	
	 lengthMenu: [
         [5,10, 25, 50, -1],
         [5,10, 25, 50, 'All'],
     ],
     
     
     //individual search
     initComplete: function () {
         // Apply the search
         this.api()
             .columns()
             .every(function () {
                 var that = this;

                 $('input', this.footer()).on('keyup change clear', function () {
                     if (that.search() !== this.value) {
                         that.search(this.value).draw();
                     }
                 });
             });
           }
 
     
	     
	    });
	    
	 $('#min, #max').on('change', function () {
	        table.draw();
	    });
	  $('.dataTables_length').addClass('bs-select');
	 
	 
	  });
  
  
  
  
    </script>
    <div class="container-fluid mb-4">
    <table class="table table-borderless w-50">
        <tbody><tr>
            <td><b>Start Date:</b></td>
            <td><input type="text" id="min" name="min" class="form-control"></td>
            <td style="width:6%">              </td>
            <td><b>End Date:</b></td>
            <td><input type="text" id="max" name="max" class="form-control" ></td>
        </tr>
       
    </tbody></table>
     </div>
     
     

<table class="table bg-white stripe row-border order-column text-nowrap" id="dtBasicExample" style="width:100%">
 

<thead>
<tr class="text-white bg-black ">
<td style="width:5%" class="bg-black" ><b>Sno</b></td>
<td style="width:5%"><b>Name</b></td>
<td style="width:5%"><b>Email</b></td>
<td style="width:5%"><b>Phone</b></td>
<td style="width:5%"><b>Date</b></td>
<td style="width:5%"><b>Measurement</b></td>
<td style="width:5%"><b>Sand Qty</b></td>
<td style="width:5%"><b>Sand Amount</b></td>
<td style="width:5%"><b>Cement Qty</b></td>
<td style="width:5%"><b>Cement Amount</b></td>
<td style="width:5%"><b>Brick Qty</b></td>
<td style="width:5%"><b>brick Amount</b></td>
<td style="width:5%"><b>Steel Qty</b></td>
<td style="width:5%"><b>SteelAmount</b></td>
<td style="width:5%"><b>OuterpaintArea</b></td>
<td style="width:5%"><b>OuterPaintAmount</b></td>
<td style="width:5%"><b>Inner Paint Qty</b></td>
<td style="width:5%"><b>InnerPaintAmount</b></td>
<td style="width:5%"><b>BasementAmount</b></td>
<td style="width:5%"><b>Flooring</b></td>

<td style="width:5%"><b>FlooringAmount</b></td>
<td style="width:5%"><b>Electrical_PlumbingAmount</b></td>
<td style="width:5%"><b>BathroomMatreialsAmount</b></td>
<td style="width:5%"><b>BathroomDoorAmount</b></td>
<td style="width:5%"><b>MainDoorAmount</b></td>
<td style="width:5%"><b>BedRoomDoor_Amount</b></td>
<td style="width:5%"><b>WindowsCost</b></td>
<td style="width:5%"><b>KitchenGraniteAmount</b></td>
<td style="width:5%" class="bg-black"><b>TotalCost ₹</b></td>
</tr>
</thead>
<tbody>
<%
try
{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="select * from temp_estimation";

resultSet = statement.executeQuery(sql);
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

</tbody>

<tfoot>
<tr class="text-white ">
<th style="width:5%"  ><b>Sno</b></th>
<th style="width:5%"><b>Name</b></th>
<th style="width:5%"><b>Email</b></th>
<th style="width:5%"><b>Phone</b></th>
<th style="width:5%"><b>Date</b></th>
<th style="width:5%"><b>Measurement</b></th>
<th style="width:5%"><b>Sand Qty</b></th>
<th style="width:5%"><b>Sand Amount</b></th>
<th style="width:5%"><b>Cement Qty</b></th>
<th style="width:5%"><b>Cement Amount</b></th>
<th style="width:5%"><b>Brick Qty</b></th>
<th style="width:5%"><b>brick Amount</b></th>
<th style="width:5%"><b>Steel Qty</b></th>
<th style="width:5%"><b>SteelAmount</b></th>
<th style="width:5%"><b>OuterpaintArea</b></th>
<th style="width:5%"><b>OuterPaintAmount</b></th>
<th style="width:5%"><b>Inner Paint Qty</b></th>
<th style="width:5%"><b>InnerPaintAmount</b></th>
<th style="width:5%"><b>BasementAmount</b></th>
<th style="width:5%"><b>Flooring</b></th>

<th style="width:5%"><b>FlooringAmount</b></th>
<th style="width:5%"><b>Electrical_PlumbingAmount</b></th>
<th style="width:5%"><b>BathroomMatreialsAmount</b></th>
<th style="width:5%"><b>BathroomDoorAmount</b></th>
<th style="width:5%"><b>MainDoorAmount</b></th>
<th style="width:5%"><b>BedRoomDoor_Amount</b></th>
<th style="width:5%"><b>WindowsCost</b></th>
<th style="width:5%"><b>KitchenGraniteAmount</b></th>
<th style="width:5%" ><b>TotalCost ₹</b></th>
</tr>
</tfoot>
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