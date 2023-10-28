/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.servlet;


import com.cms.dao.TaxiDao;
import com.cms.model.Taxi;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ashwini Pant
 */
public class TaxiServlet extends HttpServlet {

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
                ArrayList<Taxi> al = TaxiDao.display();
                request.setAttribute("taxiList", al);
                RequestDispatcher rd = request.getRequestDispatcher("DisplayTaxi.jsp");
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
            int tid = Integer.parseInt(request.getParameter("tid"));
            TaxiDao.delete(tid);
             processRequest(request, response);
        }else if(request.getParameter("action").equals("update")){
            int tid = Integer.parseInt(request.getParameter("tid"));
            ArrayList<Taxi> al = TaxiDao.editById(tid);
            request.setAttribute("edittaxi",al);
            RequestDispatcher rd = request.getRequestDispatcher("EditTaxi.jsp");
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
                String model = request.getParameter("model");
                String plate = request.getParameter("plate");
                String billbook = request.getParameter("billbook");
                String insurance = request.getParameter("insurance");
                String roadpermit = request.getParameter("roadpermit");
                Taxi tt = new Taxi();
 
                tt.setModel(model);
                tt.setPlate(plate);
                tt.setBillbook(billbook);
                tt.setInsurance(insurance);
                tt.setRoadpermit(roadpermit);
               
                TaxiDao.insert(tt);
                processRequest(request, response);
    }
        else if(request.getParameter("action").equals("update")){
                int tid = Integer.parseInt(request.getParameter("tid"));
        
                String model = request.getParameter("model");
                String plate = request.getParameter("plate");
                String billbook = request.getParameter("billbook");
                String insurance = request.getParameter("insurance");
                String roadpermit = request.getParameter("roadpermit");
                Taxi tt = new Taxi();
                tt.setTid(tid);
                tt.setModel(model);
                tt.setPlate(plate);
                tt.setBillbook(billbook);
                tt.setInsurance(insurance);
                tt.setRoadpermit(roadpermit);
                TaxiDao.update(tt);
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
