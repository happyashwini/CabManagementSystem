/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cms.model;

/**
 *
 * @author Ashwini Pant
 */
public class User {
    private int uid;
    private String username;
    private String password;
    private String email;
    private String account;
    
    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
     public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }
    
    public User(int uid, String username, String password,String email ,String account){
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.email = email;
        this.account = account;
    }
    
    public User(){
        
    }
    
}
