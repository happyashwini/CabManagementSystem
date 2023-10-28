/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.dao;

import com.cms.model.Driver;
import com.cms.util.dbconnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ashwini Pant
 */
public class DriverDao {
    public static void insert(Driver dr){
        Statement st = dbconnection.statementObject();
        String sql = "INSERT INTO driver(firstname,lastname,address,contact,license,providentfund,salary)VALUES('"+dr.getFirstname()+"','"+dr.getLastname()+"','"+dr.getAddress()+"','"+dr.getContact()+"','"+dr.getLicense()+"','"+dr.getProvidentfund()+"','"+dr.getSalary()+"')";
        try {
            st.execute(sql);
            System.out.println("data inserted");
        } catch (Exception e) {
            System.out.println("data not inserted");
        }
    }
    public static ArrayList<Driver> display(){
        ArrayList<Driver> al = new ArrayList();
        Statement st = dbconnection.statementObject();
        String sql = "SELECT * FROM driver";
        try {
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
               al.add(new Driver(rs.getInt("did"),rs.getString("firstname"),rs.getString("lastname"),rs.getString("address"),rs.getString("contact"),rs.getString("license"),rs.getString("providentfund"),rs.getString("salary"))); 
            }
            System.out.println("data displayed");
        } catch (Exception e) {
            System.out.println("data not displayed");
        }
        
        return al;
    }
    public static void delete(int did){
        Statement st = dbconnection.statementObject();
        String sql = "DELETE FROM driver WHERE did ="+did;
        try {
            st.executeUpdate(sql);
            System.out.println("data deleted");
        } catch (Exception e) {
            System.out.println("data not deleted");
        }
    }
    public static ArrayList<Driver> editById(int did){
        ArrayList<Driver> driver = new ArrayList();
        Statement st = dbconnection.statementObject();
        String sql = "SELECT * FROM driver WHERE did ="+ did;
        try {
            ResultSet rs = st.executeQuery(sql);
            rs.next();
            driver.add(new Driver(rs.getInt("did"),rs.getString("firstname"),rs.getString("lastname"),rs.getString("address"),rs.getString("contact"),rs.getString("license"),rs.getString("providentfund"),rs.getString("salary")));
            System.out.println("data set");
        } catch (Exception e) {
            System.out.println("data not set");
        }
        
        return driver;
    }
    public static void update(Driver dr){
        Statement st = dbconnection.statementObject();
        String sql = "UPDATE driver SET firstname ='"+dr.getFirstname()+"',lastname='"+dr.getLastname()+"',address='"+dr.getAddress()+"',contact='"+dr.getContact()+"',license='"+dr.getLicense()+ "',providentfund='"+dr.getProvidentfund()+"',salary='"+dr.getSalary()+"' WHERE did="+dr.getDid();
        try {
            st.executeUpdate(sql);
            System.out.println("data updated");
        } catch (Exception e) {
            System.out.println("data not updated");
        }
        
    } 
}
