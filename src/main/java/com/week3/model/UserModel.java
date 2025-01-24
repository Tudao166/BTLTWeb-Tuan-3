package com.week3.model;

import java.time.LocalDate;

public class UserModel {

    private String email;
    private String firstName;
    private String lastName;
    private LocalDate dateOfBirth;

    // Constructor mặc định
    public UserModel() {
        this("", "", "", null);
    }

    // Constructor đầy đủ tham số
    public UserModel(String email, String firstName, String lastName, LocalDate dateOfBirth) {
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
    }

    // Getter và Setter
    public String getEmail() {
        return email != null ? email.trim() : "";
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName != null ? firstName.trim() : "";
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName != null ? lastName.trim() : "";
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

    // Method hỗ trợ định dạng ngày tháng (nếu cần)
    public String getFormattedDateOfBirth() {
        return dateOfBirth != null ? dateOfBirth.toString() : "N/A";
    }

    // Override toString để tiện hiển thị thông tin
    @Override
    public String toString() {
        return "UserModel{" +
                "email='" + email + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", dateOfBirth=" + (dateOfBirth != null ? dateOfBirth : "N/A") +
                '}';
    }

    // Method kiểm tra thông tin hợp lệ (Java 8 phiên bản thay thế isBlank)
    public boolean isValid() {
        return email != null && !email.trim().isEmpty() &&
                firstName != null && !firstName.trim().isEmpty() &&
                lastName != null && !lastName.trim().isEmpty() &&
                dateOfBirth != null;
    }
}
