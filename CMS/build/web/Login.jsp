<%-- 
    Document   : Login
    Created on : Oct 15, 2018, 3:31:47 PM
    Author     : Gothene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CMS Login</title>
        <%@include file="Header.jsp" %>
    </head>
<!--    <body>
      <h1>Login</h1>
        <form method="POST" action="LoginServlet?action=login">
            Username:<input type="text" name="username">
            <br><br>
            Password:<input type="password" name="password">
            <br><br>
            <input type="submit" name="submit" value="Login">
            ${msg}
        </form>
    </body>-->
            
     <body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">CMS Login</div>
        <div class="card-body">
          <form method="POST" action="LoginServlet?action=login">
            <div class="form-group">
                 <label>Username</label>
              <div class="form-label-group">
                     
                  <input class="form-control" placeholder="Username" name="username" type="text"  required autofocus>
                    
              </div>
            </div>
            <div class="form-group">
                <label>Password</label>
              <div class="form-label-group">
                  
                 <input class="form-control" placeholder="Password" name="password" type="password">
                 
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Remember Password
                </label>
              </div>
            </div>
              <input type="submit" name="submit" class="btn btn-lg btn-success btn-block" value="Log In">
                                ${msg}
                                
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="Register.jsp">Register an Account</a>
            <a class="d-block small" href="ForgotPassword.jsp">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  </body>       
</html>
