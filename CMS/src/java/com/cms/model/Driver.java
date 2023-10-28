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
public class Driver {
 private int did;
 private String firstname;
 private String lastname;
 private String address;
 private String contact;
 private String license;
 private String providentfund;
 private String salary;
 
  public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }
    
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
     public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }
    
     public String getProvidentfund() {
        return providentfund;
    }

    public void setProvidentfund(String providentfund) {
        this.providentfund = providentfund;
    }
    
     public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }
    
    public Driver(int did, String firstname, String lastname, String address, String contact, String license, String providentfund, String salary)
    {
        this.did = did;
        this.firstname = firstname;
        this.lastname = lastname;
        this.address = address;
        this.contact = contact;
        this.license = license;
        this.providentfund = providentfund;
        this.salary = salary;
    }  

    public Driver(){
        
    }
}

