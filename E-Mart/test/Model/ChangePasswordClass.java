/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;
import java.util.Objects; // Import necessary package for password hashing

/**
 *
 * @author User
 */
public class ChangePasswordClass {
  
    private String name;
    private String email;
    private String password;
    private String contactNumber;

    // Constructor
    public ChangePasswordClass(String name, String email, String password, String contactNumber) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.contactNumber= contactNumber;
    }
// Getter and setter methods for first name
    public String getName() {
        return name;
    }

    public void Name(String firstName) {
        this.name = name;
    }
    
    // Getter and setter methods for email
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // Getter and setter methods for contact number
    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }
    // Getter and setter methods for password
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        // In a real application, you should hash the password before storing it
        this.password = password;
    }

    // Method to validate the current password
    public boolean validatePassword(String currentPassword) {
        // In a real application, you would compare the hashed passwords
        return Objects.equals(this.password, currentPassword);
    }

    // Method to update the password
    public void updatePassword(String newPassword) {
        // In a real application, you should hash the new password before updating it
        this.password = newPassword;
    }
}

    

