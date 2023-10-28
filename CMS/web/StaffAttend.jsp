<%-- 
    Document   : Attendance
    Created on : Oct 15, 2018, 3:43:56 PM
    Author     : Ashwini Pant
--%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
 <%  Date date = new Date(); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance Page</title>
         <%@include file="Header.jsp" %>
         <%@include file="Topbar.jsp" %>
    </head>
<!--    <body>
         <form method="POST" action="AttendanceServlet?action=add">
        <fieldset>
            <label> Attendance </label><hr>
            Name:<input type="text" name="name" placeholder="Enter name"><hr>
            Date:<input type="text" name="date" placeholder="Enter date"><hr>
            
            <label>Status</label> <select name ="status">
                    <option value="present">Present</option>
                    <option value="absent">Absent </option>
                 </select><hr>
            <input type="submit" name="submit" value="Submit">
        </fieldset>
        </form>
    </body>-->
<body>
     <div id="wrapper">
        <ul class="sidebar navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="StaffMenu.jsp">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-user-circle"></i>
            <span>Staff</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Attendance</h6>
            <a class="dropdown-item" href="StaffAttend.jsp">Staff Attendance</a>
            
          </div>
        </li>
        
      </ul>
           
   <div id="content-wrapper">

        <div class="container-fluid">
            
          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="StaffMenu.jsp">Attendance</a>
            </li>
            <li class="breadcrumb-item active">Staff Attendance</li>
          </ol>
       
      <div class="card mb-3">
            <div class="card-header">
               
              <i class="fas fa-chart-area"></i>
              Attendance Form</div>
            <div class="card-body">
             <form role="form" method="POST" action="StaffAttendance?action=add">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input type="text" class="form-control" name="name" value="${currentUser}" disabled>
                                        </div>
                                        <div class="form-group">
                                            <label>Date</label>
                                            <input class="form-control" class="date" name ="date"  value ="<%=date.toString()%>" disabled>
                                        </div>
                                         <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control" name="status">
                                                <option>Present</option>
                                                <option>Absent</option>  
                                            </select>
                                        </div>
                                       
                                        <button type="submit" name="submit" class="btn btn-default">Submit </button>
                                        <button type="reset" name="reset"class="btn btn-default">Reset</button>
                                    </form>
            </div>
      </div>
        </div>
   </div>
     </div>

<%@include file="Footer.jsp" %>
        
    </body>
</html>
