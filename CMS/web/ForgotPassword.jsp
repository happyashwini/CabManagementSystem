<%-- 
    Document   : ForgotPassword
    Created on : Mar 28, 2019, 11:40:01 PM
    Author     : Gothene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password Page</title>
         <%@include file="Header.jsp" %>
        
    </head>
    <body class="bg-dark">
        <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Reset Password</div>
      <div class="card-body">
        <div class="text-center mb-4">
          <h4>Forgot your password?</h4>
          <p>Enter your email address and we will send you instructions on how to reset your password.</p>
        </div>
       <form id="resetForm" action="reset_password" method="post">
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="email" name="email" class="form-control" placeholder="Enter email address" required autofocus="autofocus">
              <label for="email">Enter email address</label>
            </div>
          </div>
       
          <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
       
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="Register.jsp">Register an Account</a>
          <a class="d-block small" href="Login.jsp">Login Page</a>
        </div>
      </div>
    </div>
  </div>
        <%@include file="Footer.jsp" %>
<script type="text/javascript">
 
    $(document).ready(function() {
        $("#resetForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                }      
            },
             
            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address"
                }
            }
        });
 
    });
</script>
    </body>
</html>
