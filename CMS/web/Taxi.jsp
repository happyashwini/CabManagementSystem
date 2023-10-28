<%-- 
    Document   : Maintenance
    Created on : Oct 15, 2018, 3:44:35 PM
    Author     : Ashwini Pant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Taxi Page</title>
         <%@include file="Header.jsp" %>
         <%@include file="Topbar.jsp" %>
    </head>
<!--    <body>
        <form method="POST" action="TaxiServlet?action=add">
        <fieldset>
            <label> Taxi </label><hr>
            Model<input type="text" name="model" placeholder="Enter name of model"><hr>
            Plate<input type="text" name="plate" placeholder="Enter number of plate"><hr>
            Bill Book<input type="text" name="billbook" placeholder="Enter number of billbook"><hr>
            Insurance<input type="text" name="insurance" placeholder="Enter number of insurance"><hr>
            Road Permit<input type="text" name="roadpermit" placeholder="Enter number of roadpermit"><hr>
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
            <a class="dropdown-item" href="Graph.jsp">View Graph</a>
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
              <a href="Menu.jsp">Cab</a>
            </li>
            <li class="breadcrumb-item active">Enroll Cab</li>
          </ol>
       
      <div class="card mb-3">
            <div class="card-header">
               
              <i class="fas fa-chart-area"></i>
              Taxi Details</div>
            <div class="card-body">
             <form role="form" method="POST" action="TaxiServlet?action=add">
                                        <div class="form-group">
                                            <label>Model</label>
                                            <input class="form-control" placeholder="Enter name of model" name ="model">
                                        </div>
                                        <div class="form-group">
                                            <label>Plate</label>
                                            <input class="form-control" placeholder="Enter number of plate" name ="plate">
                                        </div>
                                        <div class="form-group">
                                            <label>BillBook</label>
                                            <input class="form-control" placeholder="Enter number of billbook" name ="billbook">
                                        </div>
                                        <div class="form-group">
                                            <label>Insurance</label>
                                            <input class="form-control" placeholder="Enter number of insurance" name ="insurance">
                                        </div>
                                        <div class="form-group">
                                            <label>Road Permit</label>
                                            <input class="form-control" placeholder="Enter number of roadpermit" name ="roadpermit">
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
