/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.servlet;

import com.cms.dao.UserDao;
import com.cms.model.User;

import java.io.IOException;

import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aman
 */
public class UserServlet extends HttpServlet {

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
                ArrayList<User> al = UserDao.display();
                request.setAttribute("userList", al);
                RequestDispatcher rd = request.getRequestDispatcher("DisplayUser.jsp");
                rd.forward(request, response);
   
    }
    protected void processRequest1(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                RequestDispatcher rp = request.getRequestDispatcher("Registered.jsp");
                rp.forward(request, response);
   
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
        //processRequest(request, response);
             if (request.getParameter("action").equals("display")) {
            processRequest(request, response);
        } else if (request.getParameter("action").equals("delete")) {
            int uid = Integer.parseInt(request.getParameter("uid"));
            UserDao.delete(uid);
            processRequest(request, response);
        } else if (request.getParameter("action").equals("update")) {
            int uid = Integer.parseInt(request.getParameter("uid"));
            ArrayList<User> al = UserDao.editById(uid);
            request.setAttribute("edituser", al);
            RequestDispatcher rd = request.getRequestDispatcher("EditUser.jsp");
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
        
        if (request.getParameter("action").equals("add")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String confirmpassword = request.getParameter("cpassword");
            String email = request.getParameter("email");
            String account = request.getParameter("account");
            if (password.equals(confirmpassword) && account == null) {
                User uu = new User();
                uu.setUsername(username);
                uu.setPassword(password);
                uu.setEmail(email);
                uu.setAccount(account);

                UserDao.insert(uu);
                processRequest1(request, response);
            }
            else {
                processRequest(request, response);
            }
       
        }
        else if (request.getParameter("action").equals("update")) {
            int uid = Integer.parseInt(request.getParameter("uid"));
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String confirmpassword = request.getParameter("cpassword");
            String email = request.getParameter("email");
            String account = request.getParameter("account");
            
            if (password.equals(confirmpassword)) {

                User uu = new User();
                uu.setUid(uid);
                uu.setUsername(username);
                uu.setPassword(password);
                uu.setEmail(email);
                uu.setAccount(account);
               
                UserDao.update(uu);
                processRequest(request, response);
        }
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
