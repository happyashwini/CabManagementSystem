<%-- 
    Document   : Driver
    Created on : Oct 15, 2018, 3:44:10 PM
    Author     : Ashwini Pant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Page</title>
        <%@include file="Header.jsp" %>
        <%@include file="Topbar.jsp" %>
    </head>
<!--    <body>
        <form method="POST" action="DriverServlet?action=add">
        <fieldset>
            <label> Driver </label><hr>
            First Name<input type="text" name="firstname" placeholder="Enter firstname"><hr>
            Last Name<input type="text" name="lastname" placeholder="Enter lastname"><hr>
            Address<input type="text" name="address" placeholder="Enter address"><hr>
            Contact<input type="text" name="contact" placeholder="Enter contact"><hr>
            License<input type="text" name="license" placeholder="Enter license"><hr>
            Provident Fund <input type="text" name="providentfund" placeholder="Enter providentfund"><hr>
            Salary<input type="text" name="salary" placeholder="Enter salary"><hr> 
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
          <a class="nav-link dropdown-toggle active" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
              <a href="Menu.jsp">Enroll</a>
            </li>
            <li class="breadcrumb-item active">Register</li>
          </ol>
       
      <div class="card mb-3">
            <div class="card-header">
               
              <i class="fas fa-chart-area"></i>
              Driver Details</div>
            <div class="card-body">
             <form role="form" method="POST" action="DriverServlet?action=add">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <input class="form-control" placeholder="Enter FirstName" name ="firstname">
                                        </div>
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <input class="form-control" placeholder="Enter LastName" name ="lastname">
                                        </div>
                                        <div class="form-group">
                                            <label>Address</label>
                                            <input class="form-control" placeholder="Enter Address" name ="address">
                                        </div>
                                        <div class="form-group">
                                            <label>Contact</label>
                                            <input class="form-control" placeholder="Enter Contact" name ="contact">
                                        </div>
                                        <div class="form-group">
                                            <label>Provident Fund</label>
                                            <input class="form-control" placeholder="Enter Provident Fund" name ="providentfund">
                                        </div>
                                        <div class="form-group">
                                            <label>Salary</label>
                                            <input class="form-control" placeholder="Enter salary" name ="salary">
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
