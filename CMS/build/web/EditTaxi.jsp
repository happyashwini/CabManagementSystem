<%-- 
    Document   : EditTaxi
    Created on : Oct 15, 2018, 3:33:01 PM
    Author     : Gothene
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
        <h1>Edit Taxi</h1>
        <form action="TaxiServlet?action=update" method="POST">
                Tid<input type="hidden" name="tid" value="${edittaxi.get(0).tid}">
                Model<input type="text" name="model" value="${edittaxi.get(0).model}">
                Plate<input type="text" name="plate" value="${edittaxi.get(0).plate}">
                Bill Book<input type="text" name="billbook" value="${edittaxi.get(0).billbook}">
                Insurance<input type="text" name="insurance" value="${edittaxi.get(0).insurance}">
                Road Permit<input type="text" name="roadpermit" value="${edittaxi.get(0).roadpermit}">
                <input type="submit" name="submit" value="Update">
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
              <a href="Menu.jsp">Cab</a>
            </li>
            <li class="breadcrumb-item active">Edit Taxi</li>
          </ol>
       
      <div class="card mb-3">
            <div class="card-header">
               
              <i class="fas fa-chart-area"></i>
              Edit Details</div>
            <div class="card-body">
             <form role="form" method="POST" action="TaxiServlet?action=update">
                                        <div class="form-group">
                                            <input  type="hidden" class="form-control" placeholder="Enter Tid " name ="tid" value="${edittaxi.get(0).tid}">
                                        </div>
                                        <div class="form-group">
                                            <label>Model</label>
                                            <input class="form-control" placeholder="Enter name of model " name ="model" value="${edittaxi.get(0).model}">
                                        </div>
                                        <div class="form-group">
                                            <label>Plate</label>
                                            <input class="form-control" placeholder="Enter plate number" name ="plate" value="${edittaxi.get(0).plate}">
                                        </div>
                                         <div class="form-group">
                                            <label>Bill Book</label>
                                            <input class="form-control" placeholder="Enter number of billbook" name ="billbook" value="${edittaxi.get(0).billbook}">
                                        </div>
                                        <div class="form-group">
                                            <label>Insurance</label>
                                            <input class="form-control" placeholder="Enter number of insurance" name ="insurance" value="${edittaxi.get(0).insurance}">
                                        </div>
                                        <div class="form-group">
                                            <label>Road Permit</label>
                                            <input class="form-control" placeholder="Enter number of roadpermit" name ="roadpermit" value="${edittaxi.get(0).roadpermit}">
                                        </div>
                                        <button type="submit" name="submit" class="btn btn-default">Submit </button>
                                        <button type="reset" name="reset" class="btn btn-default">Reset</button>
                                    </form>
            </div>
      </div>
        </div>
   </div>
     </div>

    <%@include file="Footer.jsp" %>
        
    </body>

</html>
