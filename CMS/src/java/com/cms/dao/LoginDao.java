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

/**
 *
 * @author Ashwini Pant
 */
public class LoginDao {
    public static boolean login(User uu){
        boolean status = false;
        Statement st = dbconnection.statementObject();
        String sql = "SELECT * FROM user WHERE username ='"+uu.getUsername()+"' AND password ='"+uu.getPassword()+"'";
        try {
            ResultSet rs = st.executeQuery(sql);
            rs.next();
            String checkuname = rs.getString("username");
            System.out.println(checkuname);
            String checkpass = rs.getString("password");
            if(uu.getUsername().equals(checkuname) && uu.getPassword().equals(checkpass)){
                 status = true;
            }
            System.out.println("User login success");
        } catch (Exception e) {
            System.out.println("no user login"+e);
            status = false;
        }
        
        return status;
    }
}
