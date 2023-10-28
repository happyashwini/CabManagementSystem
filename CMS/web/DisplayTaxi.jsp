<%-- 
    Document   : DisplayTaxi
    Created on : Oct 15, 2018, 3:32:50 PM
    Author     : Gothene
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Taxi</title>
        <%@include file="Header.jsp" %>
        <%@include file="Topbar.jsp" %>
    </head>
<!--    <body>
        <h1>Display Taxi</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Model</th>
                    <th>Plate</th>
                    <th>Bill Book</th>
                    <th>Insurance</th>
                    <th>Road Permit</th>
                </tr>
            </thead>
            <tbody>
                <%--
                c:forEach loop is used for continous data displaying from attendance list.
                --%>
                <c:forEach var="taxi" items="${taxiList}"> 
                    <tr>
                        <td>${taxi.model}</td>
                        <td>${taxi.plate}</td>
                        <td>${taxi.billbook}</td>
                        <td>${taxi.insurance}</td>
                        <td>${taxi.roadpermit}</td>
                        <td> <a href="TaxiServlet?action=delete&tid=${taxi.tid}">Delete</a></td>
                        <td> <a href="TaxiServlet?action=update&tid=${taxi.tid}">Edit</a></td>
                        
                    </tr>
                </c:forEach>
            </tbody>
        </table>
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
            <li class="breadcrumb-item active">Cab Details</li>
          </ol>
       
            <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Taxi Details</div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                   <thead>
                <tr>
                    <th>Model</th>
                    <th>Plate</th>
                    <th>Bill Book</th>
                    <th>Insurance</th>
                    <th>Road Permit</th>
                    <th>Delete</th>
                    <th>Edit</th>
                </tr>
            </thead>
            <tbody>
                <%--
                c:forEach loop is used for continous data displaying from attendance list.
                --%>
                <c:forEach var="taxi" items="${taxiList}"> 
                    <tr>
                        <td>${taxi.model}</td>
                        <td>${taxi.plate}</td>
                        <td>${taxi.billbook}</td>
                        <td>${taxi.insurance}</td>
                        <td>${taxi.roadpermit}</td>
                        <td> <a href="TaxiServlet?action=delete&tid=${taxi.tid}">Delete</a></td>
                        <td> <a href="TaxiServlet?action=update&tid=${taxi.tid}">Edit</a></td>
                        
                    </tr>
                </c:forEach>
            </tbody>
                </table>
              </div>
            </div>
            
          </div>

        <%@include file="Footer.jsp" %>
    </body> 
</html>
