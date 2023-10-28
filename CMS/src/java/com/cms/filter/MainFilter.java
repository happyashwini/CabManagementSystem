/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Aman
 */
public class MainFilter implements Filter {
    
    private static final boolean debug = true;

    // The filter configuration object we are associated with.  If
    // this value is null, this filter instance is not currently
    // configured. 
    private FilterConfig filterConfig = null;
    
    public MainFilter() {
    }    
    
    

    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,FilterChain chain) throws IOException, ServletException {
        
       HttpServletRequest req = (HttpServletRequest) request;
       HttpServletResponse res = (HttpServletResponse) response;
        
       HttpSession session= req.getSession(false);
       
       String log=req.getContextPath()+"/LoginServlet";
       String loginUri=req.getContextPath()+"/Login.jsp";
       
       String user=req.getContextPath()+"/UserServlet";
       String userUri=req.getContextPath()+"/User.jsp"; 
       
       boolean cssReq=req.getRequestURI().endsWith(".css");
       boolean jsReq=req.getRequestURI().endsWith(".js");
       boolean reReq=req.getRequestURI().endsWith("Registered.jsp");
       boolean regReq=req.getRequestURI().endsWith("Register.jsp");
       boolean fpReq=req.getRequestURI().endsWith("ForgotPassword.jsp");
       boolean loginUriChk = req.getRequestURI().equals(loginUri);
       boolean logChk=req.getRequestURI().equals(log);
       boolean userUriChk = req.getRequestURI().equals(userUri);
       boolean userChk=req.getRequestURI().equals(user);
       boolean sessionReq=(session != null && session.getAttribute("currentUser")!= null);
       
       if( sessionReq || loginUriChk || logChk  || userUriChk || userChk || cssReq || jsReq || regReq || fpReq || reReq ) {
           System.out.println(req.getRequestURI());
           chain.doFilter(request, response);
           
       }
       else{
           
           res.sendRedirect("Login.jsp");
           
       }
    }

    /**
     * Return the filter configuration object for this filter.
     * @return 
     */
    public FilterConfig getFilterConfig() {
        return (this.filterConfig);
    }

    /**
     * Set the filter configuration object for this filter.
     *
     * @param filterConfig The filter configuration object
     */
    public void setFilterConfig(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }

    /**
     * Destroy method for this filter
     */
 
    public void destroy() {        
    }

    /**
     * Init method for this filter
     * @param filterConfig
     */
    @Override
    public void init(FilterConfig filterConfig) {        
        this.filterConfig = filterConfig;
        if (filterConfig != null) {
            if (debug) {                
                log("MainFilter:Initializing filter");
            }
        }
    }

    /**
     * Return a String representation of this object.
     */
    @Override
    public String toString() {
        if (filterConfig == null) {
            return ("MainFilter()");
        }
        StringBuilder sb = new StringBuilder("MainFilter(");
        sb.append(filterConfig);
        sb.append(")");
        return (sb.toString());
    }
    
    
    public static String getStackTrace(Throwable t) {
        String stackTrace = null;
        try {
            StringWriter sw = new StringWriter();
            PrintWriter pw = new PrintWriter(sw);
            t.printStackTrace(pw);
            pw.close();
            sw.close();
            stackTrace = sw.getBuffer().toString();
        } catch (IOException ex) {
        }
        return stackTrace;
    }
    
    public void log(String msg) {
        filterConfig.getServletContext().log(msg);        
    }
    
}
