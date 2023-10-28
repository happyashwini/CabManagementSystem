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
public class Maintenance {
    private int mid;
    private String date;
    private String wheel;
    private String brake;
    private String battery;
    private String engineoil;
    
    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }
    
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    public String getWheel() {
        return wheel;
    }

    public void setWheel(String wheel) {
        this.wheel = wheel;
    }
    
    public String getBrake() {
        return brake;
    }

    public void setBrake(String brake) {
        this.brake = brake;
    }
    public String getBattery() {
        return battery;
    }

    public void setBattery(String battery) {
        this.battery = battery;
    }
    
    public String getEngineoil() {
        return engineoil;
    }

    public void setEngineoil(String engineoil) {
        this.engineoil = engineoil;
    }
    
    public Maintenance(int mid,String date, String wheel, String brake, String battery, String engineoil){
      this.mid = mid;
      this.date= date;
      this.wheel = wheel;
      this.brake = brake;
      this.battery = battery;
      this.engineoil = engineoil;
    }
    
    public Maintenance(){
        
    }
}
