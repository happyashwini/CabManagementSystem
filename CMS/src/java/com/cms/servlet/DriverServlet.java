/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.servlet;



import com.cms.dao.DriverDao;
import com.cms.model.Driver;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gothene
 */
public class DriverServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                ArrayList<Driver> al = DriverDao.display();
                request.setAttribute("driverList", al);
                RequestDispatcher rd = request.getRequestDispatcher("DisplayDriver.jsp");
                rd.forward(request,response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("action").equals("display")){
             processRequest(request, response);
        }else if(request.getParameter("action").equals("delete")){
            int did = Integer.parseInt(request.getParameter("did"));
            DriverDao.delete(did);
              processRequest(request, response);
        }else if(request.getParameter("action").equals("update")){
            int did = Integer.parseInt(request.getParameter("did"));
            ArrayList<Driver> al = DriverDao.editById(did);
            request.setAttribute("editdriver",al);
            RequestDispatcher rd = request.getRequestDispatcher("EditDriver.jsp");
            rd.forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
        if(request.getParameter("action").equals("add")){
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String address = request.getParameter("address");
                String contact = request.getParameter("contact");
                String license = request.getParameter("license");
                String providentfund = request.getParameter("providentfund");
                String salary = request.getParameter("salary");
                Driver dr = new Driver();
 
                dr.setFirstname(firstname);
                dr.setLastname(lastname);
                dr.setAddress(address);
                dr.setContact(contact);
                dr.setLicense(license);
                dr.setProvidentfund(providentfund);
                dr.setSalary(salary);
                DriverDao.insert(dr);
                processRequest(request, response);
    }
        else if(request.getParameter("action").equals("update")){
                int did = Integer.parseInt(request.getParameter("did"));
        
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String address = request.getParameter("address");
                String contact = request.getParameter("contact");
                String license = request.getParameter("license");
                String providentfund = request.getParameter("providentfund");
                String salary = request.getParameter("salary");
                Driver dr = new Driver();
                dr.setDid(did);
                dr.setFirstname(firstname);
                dr.setLastname(lastname);
                dr.setAddress(address);
                dr.setContact(contact);
                dr.setLicense(license);
                dr.setProvidentfund(providentfund);
                dr.setSalary(salary);
                DriverDao.update(dr);
               processRequest(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
