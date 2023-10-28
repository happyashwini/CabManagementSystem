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
        <title>Cab Management System</title>
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
        <div class="card-header">Success!</div>
        <div class="card-body">
            <label>Attendance Recorded. Thank You !!</label>
           <label> <a href="StaffMenu.jsp">Return to Main Page</a></label>
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
