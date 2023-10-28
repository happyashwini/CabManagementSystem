/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.dao;

import com.cms.model.Maintenance;
import com.cms.util.dbconnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ashwini Pant
 */
public class MaintenanceDao {
    public static void insert(Maintenance mn){
        Statement st = dbconnection.statementObject();
        String sql = "INSERT INTO maintenance(date,wheel,brake,battery,engineoil)VALUES('"+mn.getDate()+"','"+ mn.getWheel()+"','"+mn.getBrake()+"','"+mn.getBattery()+"','"+mn.getEngineoil()+"')";
        try {
            st.execute(sql);
            System.out.println("data inserted");
        } catch (Exception e) {
            System.out.println("data not inserted");
        }
    }
    public static ArrayList<Maintenance> display(){
        ArrayList<Maintenance> al = new ArrayList();
        Statement st = dbconnection.statementObject();
        String sql = "SELECT * FROM maintenance";
        try {
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
               al.add(new Maintenance(rs.getInt("mid"),rs.getString("date"),rs.getString("wheel"),rs.getString("brake"),rs.getString("battery")
                       ,rs.getString("engineoil"))); 
            }
            System.out.println("data displayed");
        } catch (Exception e) {
            System.out.println("data not displayed");
        }
        
        return al;
    }
    public static void delete(int mid){
        Statement st = dbconnection.statementObject();
        String sql = "DELETE FROM maintenance WHERE mid ="+mid;
        try {
            st.executeUpdate(sql);
            System.out.println("data deleted");
        } catch (Exception e) {
            System.out.println("data not deleted");
        }
    }
    public static ArrayList<Maintenance> editById(int mid){
        ArrayList<Maintenance> maintenance = new ArrayList();
        Statement st = dbconnection.statementObject();
        String sql = "SELECT * FROM maintenance WHERE mid ="+mid;
        try {
            ResultSet rs = st.executeQuery(sql);
            rs.next();
            maintenance.add(new Maintenance(rs.getInt("mid"),rs.getString("date"),rs.getString("wheel"),rs.getString("brake"),rs.getString("battery"),rs.getString("engineoil")));
            System.out.println("data set");
        } catch (Exception e) {
            System.out.println("data not set");
        }       
        
        return maintenance;
    }
    public static void update(Maintenance mn){
        Statement st = dbconnection.statementObject();
        String sql = "UPDATE maintenance SET date ='"+mn.getDate()+"',wheel='"+mn.getWheel()+"',brake='"+mn.getBrake()+"',battery='"+mn.getBattery()+"',engineoil='"+mn.getEngineoil()+"' WHERE mid="+mn.getMid();
        try {
            st.executeUpdate(sql);
            System.out.println("data updated");
        } catch (Exception e) {
            System.out.println("data not updated");
        }
        
    } 
}
