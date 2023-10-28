/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.dao;

import com.cms.model.User;
import com.cms.util.dbconnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ashwini Pant
 */
public class UserDao {
    public static void insert(User uu) {
         Statement st = dbconnection.statementObject();
         String sql="INSERT INTO user(username,password,email,account)VALUES('"+uu.getUsername()+"','"+uu.getPassword()+"','"+uu.getEmail()+"','"+uu.getAccount()+"')";
              try {
            st.execute(sql);
            System.out.println("Data Inserted");
        } catch (Exception e) {
            System.out.println("Data not Inserted");
        }
    }
        public static ArrayList<User> display() {
      ArrayList<User> al = new ArrayList(); 
      Statement st = dbconnection.statementObject();
      String sql = "SELECT * FROM user";
        try {
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                al.add(new User(rs.getInt("uid"),rs.getString("username"),rs.getString("password"),rs.getString("email"),rs.getString("account")));  
            }
            System.out.println("Data Displayed");
        } catch (Exception e) {
            System.out.println("Data not Displayed");
        }
      
      return al;
      
    }
         public static void delete(int uid){
       Statement st = dbconnection.statementObject();
       String sql = "DELETE FROM user WHERE uid ="+uid;
       try {
           st.executeUpdate(sql);
           System.out.println("Data Deleted");
       } catch (Exception e) {
           System.out.println("Data not Deleted");
       }
   }
            public static ArrayList<User> editById(int uid){
        ArrayList<User> user = new ArrayList(); 
      Statement st = dbconnection.statementObject();
      String sql = "SELECT * FROM user WHERE uid="+uid;
        try {
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
             user.add(new User(rs.getInt("uid"),rs.getString("username"),rs.getString("password"),rs.getString("email"),rs.getString("account")));
            }
            System.out.println("Data set");
        } catch (Exception e) {
            System.out.println("Data not set");
       }
        return user;
   }
   public static void update(User uu){
       Statement st = dbconnection.statementObject();
      
               String sql="UPDATE user SET username='"+uu.getUsername()+"',password='"+uu.getPassword()+"',email='"+uu.getEmail()+"',account='"+uu.getAccount()+"'WHERE uid="+uu.getUid();
        try {
               st.executeUpdate(sql);
            System.out.println("Data updated");
            
          
        } catch (Exception e) {
            System.out.println("Data not updated");
        }
         
           }
    public String resetPassword(String email) {
    Customer customer = customerDAO.findByEmail(email);
     
    String randomPassword = RandomStringUtils.randomAlphanumeric(10);
     
    customer.setPassword(randomPassword);
    customerDAO.update(customer);
     
    return randomPassword;
}
}
