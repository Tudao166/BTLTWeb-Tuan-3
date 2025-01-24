package com.week3.model;


import java.time.LocalDate;
import java.util.Date;

public class UserModel {
    private String email;
    private String firstName;
    private String lastName;
    private LocalDate dateOfBirth;


    public UserModel() {
        email = "";
        firstName = "";
        lastName = "";
    }
    public UserModel(String email, String firstName, String lastName, LocalDate dateOfBirth) {
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
}
