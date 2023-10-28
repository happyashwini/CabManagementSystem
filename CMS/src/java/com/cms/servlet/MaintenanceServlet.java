/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.servlet;



import com.cms.dao.MaintenanceDao;
import com.cms.model.Maintenance;
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
public class MaintenanceServlet extends HttpServlet {

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
                ArrayList<Maintenance> al = MaintenanceDao.display();
                request.setAttribute("maintenanceList", al);
                RequestDispatcher rd = request.getRequestDispatcher("DisplayMaintenance.jsp");
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
            int mid = Integer.parseInt(request.getParameter("mid"));
            MaintenanceDao.delete(mid);
              processRequest(request, response);
        }else if(request.getParameter("action").equals("update")){
            int mid = Integer.parseInt(request.getParameter("mid"));
            ArrayList<Maintenance> al = MaintenanceDao.editById(mid);
            request.setAttribute("editmaintenance",al);
            RequestDispatcher rd = request.getRequestDispatcher("EditMaintenance.jsp");
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
                String date = request.getParameter("date");
                String wheel = request.getParameter("wheel");
                String brake = request.getParameter("brake");
                String battery = request.getParameter("battery");
                String engineoil = request.getParameter("engineoil");
                Maintenance mn = new Maintenance();
                
                mn.setDate(date);
                mn.setWheel(wheel);
                mn.setBrake(brake);
                mn.setBattery(battery);
                mn.setEngineoil(engineoil);
                MaintenanceDao.insert(mn);
                processRequest(request, response);
    }
        else if(request.getParameter("action").equals("update")){
                int mid = Integer.parseInt(request.getParameter("mid"));
                String date = request.getParameter("date");
                String wheel = request.getParameter("wheel");
                String brake = request.getParameter("brake");
                String battery = request.getParameter("battery");
                String engineoil = request.getParameter("engineoil");
                Maintenance mn = new Maintenance();
                
                mn.setMid(mid);
                mn.setDate(date);
                mn.setWheel(wheel);
                mn.setBrake(brake);
                mn.setBattery(battery);
                mn.setEngineoil(engineoil);
                MaintenanceDao.update(mn);
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
