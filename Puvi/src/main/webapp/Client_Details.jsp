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

<body class="bg-dark">

    <div class="container dis_back2 mb-4 bg-white">
        <h4>Client registeration</h4>
     <form action="client_data" method="post">
     
     
        <!-- Username input -->
        <div class="form-outline mb-4">
          <input type="text" id="form2Example1" class="form-control" name="Client_Name" required/>
          <label class="form-label" for="form2Example1" >Username</label>
        </div>
      
        <!-- Email-id input -->
        <div class="form-outline mb-4">
          <input type="email" id="form2Example2" class="form-control"  name="Client_Email" required/>
          <label class="form-label" for="form2Example2" >Email-id</label>
        </div>

        
        <!-- password input -->
        <div class="form-outline mb-4">
            <input type="password" id="form2Example1" class="form-control" name="Client_Password" required/>
            <label class="form-label" for="form2Example1" >Password</label>
          </div>

        <!-- password input -->
        <div class="form-outline mb-4">
            <input type="password" id="form2Example1" class="form-control" required/>
            <label class="form-label " for="form2Example1">Confirm password</label>
          </div>
          
          <!-- Mobile number input -->
        <div class="form-outline mb-4">
           
            <input type="number" class="form-control" id="form2Example1" name="Client_Mobile_No" required>
            <label class="form-label " for="form2Example1" >Mobile number</label>
          </div>
          
      
      <!-- house no details -->
        <div class="form-outline mb-4">
            <input type="text" id="form2Example1" class="form-control" name="Client_House_No" required/>
            <label class="form-label " for="form2Example1" >House no</label>
          </div>
        
          <!--Street -->
        <div class="form-outline mb-4">
            <input type="text" id="form2Example1" class="form-control" name="Client_Street" required />
            <label class="form-label " for="form2Example1" >Street</label>
          </div>
      
          
          <!--City -->
        <div class="form-outline mb-4">
            <input type="text" id="form2Example1" class="form-control" name="Client_City" required/>
            <label class="form-label " for="form2Example1" >City</label>
          </div>
          
             <!--District -->
        <div class="form-outline mb-4">
            <input type="text" id="form2Example1" class="form-control" name="Client_District" required/>
            <label class="form-label " for="form2Example1 " >District</label>
          </div>
          
              <!--State -->
        <div class="form-outline mb-4">
            <input type="text" id="form2Example1" class="form-control" name="Client_State" required/>
            <label class="form-label " for="form2Example1" >State</label>
          </div>
          
               <!--Pincode -->
        <div class="form-outline mb-4">
            <input type="text" id="form2Example1" class="form-control" name="Client_Pincode"  required/>
            <label class="form-label " for="form2Example1" >Pincode</label>
          </div>
          
      
      
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <!-- <button type="button" class="btn btn-primary btn-block mb-4 buttonw">Register</button>-->
        <input type="submit" value="Register" class="btn btn-primary btn-block mb-4 buttonw">
    </div>
      </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
