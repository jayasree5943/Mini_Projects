package com.jay.model;

public class UserModel {

    int id;
    String fname;
    String Lname;
    String Phone;
    String email;

    public UserModel(int id, String fname, String lname, String phone, String email) {
        this.id = id;
        this.fname = fname;
        this.Lname = lname;
        this.Phone = phone;
        this.email = email;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }
    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return Lname;
    }
    public void setLname(String lname) {
        this.Lname = lname;
    }

    public String getPhone() {
        return Phone;
    }
    public void setPhone(String phone) {
        this.Phone = phone;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
}
