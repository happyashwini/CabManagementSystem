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
public class Taxi {
    private int tid;
    private String model;
    private String plate;
    private String billbook;
    private String insurance;
    private String roadpermit;
 
     public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }
    
    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }
    public String getPlate() {
        return plate;
    }

    public void setPlate(String plate) {
        this.plate = plate;
    }
    public String getBillbook() {
        return billbook;
    }

    public void setBillbook(String billbook) {
        this.billbook = billbook;
    }
    public String getInsurance() {
        return insurance;
    }

    public void setInsurance(String insurance) {
        this.insurance = insurance;
    }
     public String getRoadpermit() {
        return roadpermit;
    }

    public void setRoadpermit(String roadpermit) {
        this.roadpermit = roadpermit;
    }
    
    public Taxi(int tid, String model, String plate, String billbook, String insurance, String roadpermit){
        this.tid = tid;
        this.model = model;
        this.plate = plate;
        this.billbook = billbook;
        this.insurance = insurance;
        this.roadpermit = roadpermit;
    }
    public Taxi(){
        
    }
}

