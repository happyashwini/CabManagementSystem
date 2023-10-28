<%-- 
    Document   : Taxi
    Created on : Oct 15, 2018, 3:44:47 PM
    Author     : Ashwini Pant
--%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%  Date date = new Date(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maintenance Page</title>
         <%@include file="Header.jsp" %>
         <%@include file="Topbar.jsp" %>
    </head>
<!--    <body>
       <form method="POST" action="MaintenanceServlet?action=add">
        <fieldset>
            <label> Maintenance </label><hr>
            Wheel<input type="text" name="wheel" placeholder="Enter number of wheel"><hr>
            Brake<input type="text" name="brake" placeholder="Enter number of brake"><hr>
            Battery<input type="text" name="battery" placeholder="Enter number of battery"><hr>
            Engine Oil<input type="text" name="engineoil" placeholder="Enter number of engineoil"><hr>
            <input type="submit" name="submit" value="Submit">
        </fieldset>
        </form>
    </body>-->
<body>
     <div id="wrapper">
         <ul class="sidebar navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="Menu.jsp">
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
            <h6 class="dropdown-header">Enroll</h6>
            <a class="dropdown-item" href="Driver.jsp">Register</a>
            <a class="dropdown-item" href="DriverServlet?action=display">Staff Details</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">Attendance</h6>
            <a class="dropdown-item" href="Attendance.jsp">Staff Attendance</a>
            <a class="dropdown-item" href="AttendanceServlet?action=display">View List</a>
          </div>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-car"></i>
            <span>Vehicles</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Cab</h6>
            <a class="dropdown-item" href="Taxi.jsp">Enroll Cab</a>
            <a class="dropdown-item" href="TaxiServlet?action=display">Cab Details</a>
            
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-cog"></i>
            <span>Workshop</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Expenses</h6>
            <a class="dropdown-item" href="Maintenance.jsp">Maintenance</a>
            <a class="dropdown-item" href="MaintenanceServlet?action=display">Maintenance Details</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">Overview</h6>
            <a class="dropdown-item" href="#">View Graph</a>
          </div>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-users-cog"></i>
            <span>Accounts</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">User</h6>
            <a class="dropdown-item" href="User.jsp">Add account</a>
            <a class="dropdown-item" href="UserServlet?action=display">Account Details</a>
        </li>
      </ul>
           
   <div id="content-wrapper">

        <div class="container-fluid">
            
          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="Menu.jsp">Expenses</a>
            </li>
            <li class="breadcrumb-item active">Maintenance</li>
          </ol>
       
      <div class="card mb-3">
            <div class="card-header">
               
              <i class="fas fa-chart-area"></i>
              Maintenance Details</div>
            <div class="card-body">
             <form role="form" method="POST" action="MaintenanceServlet?action=add">
                                        <div class="form-group">
                                            <label>Date</label>
                                            <input class="form-control" class="date" name ="date"  value ="<%=date.toString()%>">
                                        </div>
                                        <div class="form-group">
                                            <label>Wheel</label>
                                            <input class="form-control" placeholder="Enter number of wheel" name ="wheel">
                                        </div>
                                        <div class="form-group">
                                            <label>Brake</label>
                                            <input class="form-control" placeholder="Enter number of brake" name ="brake">
                                        </div>
                                        <div class="form-group">
                                            <label>Battery</label>
                                            <input class="form-control" placeholder="Enter number of battery" name ="battery">
                                        </div>
                                        <div class="form-group">
                                            <label>Engine Oil</label>
                                            <input class="form-control" placeholder="Enter number of engineoil" name ="engineoil">
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
