/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.dao;

import com.cms.model.Taxi;
import com.cms.util.dbconnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ashwini Pant
 */
public class TaxiDao {
    public static void insert(Taxi tt){
        Statement st = dbconnection.statementObject();
        String sql = "INSERT INTO taxi(model,plate,billbook,insurance,roadpermit)VALUES('"+tt.getModel()+"','"+tt.getPlate()+"','"+tt.getBillbook()+"','"+tt.getInsurance()+"','"+tt.getRoadpermit()+"')";
        try {
            st.execute(sql);
            System.out.println("data inserted");
        } catch (Exception e) {
            System.out.println("data not inserted");
        }
    }
    public static ArrayList<Taxi> display(){
        ArrayList<Taxi> al = new ArrayList();
        Statement st = dbconnection.statementObject();
        String sql = "SELECT * FROM taxi";
        try {
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
               al.add(new Taxi(rs.getInt("tid"),rs.getString("model"),rs.getString("plate"),rs.getString("billbook"),rs.getString("insurance"),rs.getString("roadpermit"))); 
            }
            System.out.println("data displayed");
        } catch (Exception e) {
            System.out.println("data not displayed");
        }
        
        return al;
    }
    public static void delete(int tid){
        Statement st = dbconnection.statementObject();
        String sql = "DELETE FROM taxi WHERE tid ="+tid;
        try {
            st.executeUpdate(sql);
            System.out.println("data deleted");
        } catch (Exception e) {
            System.out.println("data not deleted");
        }
    }
    public static ArrayList<Taxi> editById(int tid){
        ArrayList<Taxi> taxi = new ArrayList();
        Statement st = dbconnection.statementObject();
        String sql = "SELECT * FROM taxi WHERE tid ="+ tid;
        try {
            ResultSet rs = st.executeQuery(sql);
            rs.next();
            taxi.add(new Taxi(rs.getInt("tid"),rs.getString("model"),rs.getString("plate"),rs.getString("billbook"),rs.getString("insurance"),rs.getString("roadpermit")));
            System.out.println("data set");
        } catch (Exception e) {
            System.out.println("data not set");
        }
        
        
        return taxi;
    }
    public static void update(Taxi tt){
        Statement st = dbconnection.statementObject();
        String sql = "UPDATE taxi SET model ='"+tt.getModel()+"',plate='"+tt.getPlate()+"',billbook='"+tt.getBillbook()+"',insurance='"+tt.getInsurance()+"',roadpermit='"+tt.getRoadpermit()+"' WHERE tid="+tt.getTid();
        try {
            st.executeUpdate(sql);
            System.out.println("data updated");
        } catch (Exception e) {
            System.out.println("data not updated");
        }
        
    } 
}
