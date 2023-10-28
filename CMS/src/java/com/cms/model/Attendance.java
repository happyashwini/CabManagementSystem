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
public class Attendance {
    private int aid;
    private String name;
    private String date;
    private String status;
   
    
    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
   
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
     public Attendance(int aid, String name, String date, String status ){
         this.aid = aid;
         this.name = name;
         this.date = date;
         this.status = status;
     }
     
     public Attendance(){
         
     }
}