<%-- 
    Document   : EditAttendance
    Created on : Oct 15, 2018, 3:30:15 PM
    Author     : Ashwini Pant
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1>Edit Attendance</h1>
            <form action="AttendanceServlet?action=update" method="POST">
                <input type="hidden" name="aid" value="${editattendance.get(0).aid}"><hr>
                Name<input type="text" name="name" value="${editattendance.get(0).name}"><hr>
                Date<input type="text" name="date" value="${editattendance.get(0).date}"><hr>
               
                Status<select name="status">
                    <c:forEach items="Present,Absent" var="statusvalue">
                        <c:choose>
                            <c:when test="${editattendance.get(0).status==statusvalue}">
                                <option selected="selected">${statusvalue}</option>
                            </c:when>
                        
                            <c:otherwise>
                                <option>${statusvalue}</option>
                            </c:otherwise>
                            </c:choose>
                    </c:forEach>
                    
                </select><hr>
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
              <a href="Menu.jsp">Attendance</a>
            </li>
            <li class="breadcrumb-item active">Edit Attendance</li>
          </ol>
       
      <div class="card mb-3">
            <div class="card-header">
               
              <i class="fas fa-chart-area"></i>
               Edit Details</div>
            <div class="card-body">
             <form role="form" method="POST" action="AttendanceServlet?action=update">
                                        <div class="form-group">
                                            <input  type="hidden" class="form-control" placeholder="Enter Aid " name ="aid" value="${editattendance.get(0).aid}">
                                        </div>
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input class="form-control" placeholder="Enter name " name ="name" value="${editattendance.get(0).name}">
                                        </div>
                                        <div class="form-group">
                                            <label>Date</label>
                                            <input class="form-control" placeholder="Enter date" name ="date" value="${editattendance.get(0).date}">
                                        </div>
                                         <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control" name="status">
                                                <c:forEach items="Present,Absent" var="statusvalue">
                                                    <c:choose>
                                                        <c:when test="${editattendance.get(0).status==statusvalue}">
                                                            <option selected="selected">${statusvalue}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option>${statusvalue}</option>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                                
                                            </select>
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
