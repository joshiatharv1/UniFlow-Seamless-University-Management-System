/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author Atharva
 */
public class Student {
    
    private int studentID;
    private String name;
    private String contact;
    private Date dob;
    private String gender;
    private String nationality;
    private String programOfStudy;
    private String enrollmentStatus;
    private String emergencyContact;
    private int creditsEarned;
    private String profilePhoto;
    private String username;
    private String password;

    // Constructors
    public Student() {
    }

    public Student(int studentID, String name, String contact, Date dob, String gender, String nationality, String programOfStudy,
                   String enrollmentStatus, String emergencyContact, int creditsEarned, String profilePhoto, String username, String password) {
        this.studentID = studentID;
        this.name = name;
        this.contact = contact;
        this.dob = dob;
        this.gender = gender;
        this.nationality = nationality;
        this.programOfStudy = programOfStudy;
        this.enrollmentStatus = enrollmentStatus;
        this.emergencyContact = emergencyContact;
        this.creditsEarned = creditsEarned;
        this.profilePhoto = profilePhoto;
        this.username = username;
        this.password = password;
    }

    // Getters and Setters
    public int getStudentID() {
        return studentID;
    }

    public void setStudentID(int studentID) {
        this.studentID = studentID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getProgramOfStudy() {
        return programOfStudy;
    }

    public void setProgramOfStudy(String programOfStudy) {
        this.programOfStudy = programOfStudy;
    }

    public String getEnrollmentStatus() {
        return enrollmentStatus;
    }

    public void setEnrollmentStatus(String enrollmentStatus) {
        this.enrollmentStatus = enrollmentStatus;
    }

    public String getEmergencyContact() {
        return emergencyContact;
    }

    public void setEmergencyContact(String emergencyContact) {
        this.emergencyContact = emergencyContact;
    }

    public int getCreditsEarned() {
        return creditsEarned;
    }

    public void setCreditsEarned(int creditsEarned) {
        this.creditsEarned = creditsEarned;
    }

    public String getProfilePhoto() {
        return profilePhoto;
    }

    public void setProfilePhoto(String profilePhoto) {
        this.profilePhoto = profilePhoto;
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
}

    

