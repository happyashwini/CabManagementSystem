<%-- 
    Document   : Register
    Created on : Mar 28, 2019, 11:43:56 PM
    Author     : Gothene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password Page</title>
         <%@include file="Header.jsp" %>
         
    </head>
    <body class="bg-dark">
       <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Register an Account</div>
      <div class="card-body">
        <form role="form" method="POST" action="UserServlet?action=add">
                                       <div class="form-group">
                                         <label>User Name</label>
                                         <input class="form-control" placeholder="Enter name of user" name ="username" required="username">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input class="form-control" placeholder="Enter password" name ="password" required="password">
                                        </div>
                                        <div class="form-group">
                                            <label>Confirm Password</label>
                                            <input class="form-control" placeholder="Re-enter password" name ="cpassword">
                                        </div>
                                        <div class="form-group">
                                         <label>Email</label>
                                            <input class="form-control" placeholder="Enter your email" name ="email">
                                        </div>
                                        <%--<div class="form-group">
                                            <label>Account</label>
                                            <select class="form-control" name="account">
                                                <option>Admin</option>
                                                <option>Staff</option>  
                                            </select>
                                        </div>--%>
                                       
                                        <button type="submit" name="submit" class="btn btn-default">Submit </button>
                                        <button type="reset" name="reset"class="btn btn-default">Reset</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="Login.jsp">Login Page</a>
          <a class="d-block small" href="ForgotPassword.jsp">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
