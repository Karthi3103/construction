<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <div class="container dis_back mb-4 ">
    
    <!-- Login Heading -->
    <div class="container d-flex justify-content-center Login_title">
        <h4>Login</h4>
        </div>
       
    <form action="Admin_Login" method="post">
    
           <!-- Select Account --> 
        <div class="form-outline mb-4">
          <select class="form-select" aria-label="Default select example" name="login_type" required>
             <option selected>Account Type</option>
             <option value="Customer">Customer</option>
             <option value="Employee">Employee</option>
             <option value="Admin">Admin</option>
             
            </select>
            <label class="form-label" for="form2Example1">Account Type</label>
        </div>
        <!-- Email input -->
        <div class="form-outline mb-4">
          <input type="email" id="form2Example1" class="form-control" name="email_id" required/>
          <label class="form-label" for="form2Example1">Email address</label>
        </div>
      
        <!-- Password input -->
        <div class="form-outline mb-4">
          <input type="password" id="form2Example2" class="form-control" name="password" required/>
          <label class="form-label" for="form2Example2">Password</label>
        </div>
      
        <!-- 2 column grid layout for inline styling -->
        <div class="row mb-4">
          
      
          <div class="col">
            <!-- Simple link -->
            <a href="#!">Forgot password?</a>
          </div>
          
          <div class="col">
            <!-- Error_Message_Login -->
            <h6 class="text-danger">${pass_err_msg }</h6>
          </div>
        </div>
      
        <!-- Submit button -->
        <div class="container d-flex justify-content-center">
        <input type="submit" value="Login" class="btn btn-primary btn-block mb-4 buttonw">
        
        </div>
      </form>
    </div>
</body>
</html>