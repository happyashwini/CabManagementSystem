/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author Ashwini Pant
 */
public class dbconnection {
    public static Statement statementObject(){
        //driver load code
        try{
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            System.out.println("driver loaded");
           }
        catch (Exception e){
          System.out.println("driver not loaded"); 
        }
        Connection con = null;
        try{
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms","root","");
            System.out.println("database connected");
            
        }
        catch (Exception e){
            System.out.println("database not connected");
        }
        Statement st = null;
        try {
            st = con.createStatement();
            System.out.println("Success");
            
        }
        catch (Exception e){
            System.out.println("Error");
        }
        return st;
    }
}
