/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.dao;

import com.cms.model.Attendance;
import com.cms.util.dbconnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ashwini Pant
 */
public class AttendanceDao {
    public static void insert(Attendance at){
        Statement st = dbconnection.statementObject();
        String sql = "INSERT INTO attendance(name,date,status)VALUES('"+at.getName()+"','"+at.getDate()+"','"+at.getStatus()+"')";
        try {
            st.execute(sql);
            System.out.println("data inserted");
        } catch (Exception e) {
            System.out.println("data not inserted");
        }
    }
    public static ArrayList<Attendance> display(){
        ArrayList<Attendance> al = new ArrayList();
        Statement st = dbconnection.statementObject();
        String sql = "SELECT * FROM attendance";
        try {
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
               al.add(new Attendance(rs.getInt("aid"),rs.getString("name"),rs.getString("date"),rs.getString("status"))); 
            }
            System.out.println("data displayed");
        } catch (Exception e) {
            System.out.println("data not displayed");
        }
        
        return al;
    }
    public static void delete(int aid){
        Statement st = dbconnection.statementObject();
        String sql = "DELETE FROM attendance WHERE aid ="+aid;
        try {
            st.executeUpdate(sql);
            System.out.println("data deleted");
        } catch (Exception e) {
            System.out.println("data not deleted");
        }
    }
    public static ArrayList<Attendance> editById(int aid){
        ArrayList<Attendance> attendance = new ArrayList();
        Statement st = dbconnection.statementObject();
        String sql = "SELECT * FROM attendance WHERE aid ="+ aid;
        try {
            ResultSet rs = st.executeQuery(sql);
            rs.next();
            attendance.add(new Attendance(rs.getInt("aid"),rs.getString("name"),rs.getString("date"),rs.getString("status")));
            System.out.println("data set");
        } catch (Exception e) {
            System.out.println("data not set");
        }
        
        
        return attendance;
    }
    public static void update(Attendance at){
        Statement st = dbconnection.statementObject();
        String sql = "UPDATE attendance SET name ='"+at.getName()+"',date='"+at.getDate()+"',status='"+at.getStatus()+"' WHERE aid="+at.getAid();
        try {
            st.executeUpdate(sql);
            System.out.println("data updated");
        } catch (Exception e) {
            System.out.println("data not updated");
        }
        
    } 
}
