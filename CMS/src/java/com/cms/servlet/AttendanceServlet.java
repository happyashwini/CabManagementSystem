/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.servlet;

import com.cms.dao.AttendanceDao;
import com.cms.model.Attendance;
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
public class AttendanceServlet extends HttpServlet {

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
                ArrayList<Attendance> al = AttendanceDao.display();
                request.setAttribute("attendanceList", al);
                RequestDispatcher rd = request.getRequestDispatcher("DisplayAttendance.jsp");
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
            int aid = Integer.parseInt(request.getParameter("aid"));
            AttendanceDao.delete(aid);
              processRequest(request, response);
        }else if(request.getParameter("action").equals("update")){
            int aid = Integer.parseInt(request.getParameter("aid"));
            ArrayList<Attendance> al = AttendanceDao.editById(aid);
            request.setAttribute("editattendance",al);
            RequestDispatcher rd = request.getRequestDispatcher("EditAttendance.jsp");
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
        //processRequest(request, response);
        if(request.getParameter("action").equals("add")){
                String name = request.getParameter("name");
                String date = request.getParameter("date");
                String status = request.getParameter("status");
                Attendance at = new Attendance();
 
                at.setName(name);
                at.setDate(date);
                at.setStatus(status);
               
                AttendanceDao.insert(at);
                processRequest(request, response);
    }
        else if(request.getParameter("action").equals("update")){
                int aid = Integer.parseInt(request.getParameter("aid"));
        
                String name = request.getParameter("name");
                String date = request.getParameter("date");
                String status = request.getParameter("status");
                Attendance at = new Attendance();
                at.setAid(aid);
                at.setName(name);
                at.setDate(date);
                at.setStatus(status);
                AttendanceDao.update(at);
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
