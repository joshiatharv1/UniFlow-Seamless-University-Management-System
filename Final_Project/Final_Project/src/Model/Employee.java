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
public class Employee {
    
    private int employeeID;
    private String name;
    private String contact;
    private Date dob;
    private String gender;
    private String nationality;
    private String department;
    private String languageTaught;
    private String position;
    private String emergencyContact;
    private String email;
    private String phone;
    private String coursesTaught;
    private String username;
    private String password;
    private String profilePhoto;

    // Constructors
    public Employee() {
    }

    public Employee(int employeeID, String name, String contact, Date dob, String gender, String nationality, String department,
                    String languageTaught, String position, String emergencyContact, String email, String phone,
                    String coursesTaught, String username, String password, String profilePhoto) {
        this.employeeID = employeeID;
        this.name = name;
        this.contact = contact;
        this.dob = dob;
        this.gender = gender;
        this.nationality = nationality;
        this.department = department;
        this.languageTaught = languageTaught;
        this.position = position;
        this.emergencyContact = emergencyContact;
        this.email = email;
        this.phone = phone;
        this.coursesTaught = coursesTaught;
        this.username = username;
        this.password = password;
        this.profilePhoto = profilePhoto;
    }

    // Getters and Setters
    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
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

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getLanguageTaught() {
        return languageTaught;
    }

    public void setLanguageTaught(String languageTaught) {
        this.languageTaught = languageTaught;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getEmergencyContact() {
        return emergencyContact;
    }

    public void setEmergencyContact(String emergencyContact) {
        this.emergencyContact = emergencyContact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCoursesTaught() {
        return coursesTaught;
    }

    public void setCoursesTaught(String coursesTaught) {
        this.coursesTaught = coursesTaught;
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

    public String getProfilePhoto() {
        return profilePhoto;
    }

    public void setProfilePhoto(String profilePhoto) {
        this.profilePhoto = profilePhoto;
    }
}
