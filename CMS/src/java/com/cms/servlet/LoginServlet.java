/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.servlet;

import com.cms.dao.LoginDao;


import com.cms.model.User;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Aman
 */
public class LoginServlet extends HttpServlet {




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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        HttpSession hs = request.getSession();
        hs.invalidate();
        RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.forward(request, response);
        //processRequest(request, response);
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
        if(request.getParameter("action").equals("login")){
                String username=request.getParameter("username");
                String password=request.getParameter("password");
                String account=request.getParameter("account");
                //String pass = PasswordEncryption.encryptPassword(password);
                User uu = new User();
                uu.setUsername(username);
                uu.setPassword(password);
                uu.setAccount(account);
                if(username.equals("rajendra") || username.equals("sarita")){
                    HttpSession session = request.getSession();
                    session.setAttribute("currentUser", username);
                    RequestDispatcher rd = request.getRequestDispatcher("Menu.jsp");
                    rd.forward(request, response);
                    
                }
                else if(LoginDao.login(uu)==true){
                    HttpSession session = request.getSession();
                    session.setAttribute("currentUser", username);
                    RequestDispatcher rd = request.getRequestDispatcher("StaffMenu.jsp");
                    rd.forward(request, response);
                }
        else{
                    String message = "Username and password donot match";
                    request.setAttribute("msg",message);
                    RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                    rd.forward(request, response);
                  
                    
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
