/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author DELL
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;
public class userDao {

    static Statement st;
    private static Connection con;

    public static void insertDetails(String email, String username, String password, String contactNumber) {
        connectToDB();
        String query = "INSERT INTO users(email,username,password,contactNumber)  VALUES('"+email+"','"+username+"','"+password+"','"+contactNumber+"')";
        try {
            st.executeUpdate(query);
            System.out.println("Record inserted");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    public static void connectToDB() {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/emart";

        try {
            Class.forName(driver);
            // Establish the connection
            con = DriverManager.getConnection(url, "root", "");
            // Statement st=con.createStatement();
            st = con.createStatement();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(userDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    public static void updateDetails(String email, String newusername, String newcontactNumber) {
        connectToDB();
        // Check if email exists
        String checkQuery = "SELECT * FROM users WHERE email = ?";
        ResultSet rs = null;
        boolean emailExists = false;

        try {
            PreparedStatement checkStatement = con.prepareStatement(checkQuery);
            checkStatement.setString(1, email);
            rs = checkStatement.executeQuery();
            emailExists = rs.next(); // Check if there's a result
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }

        // Update details only if email exists
        if (emailExists) {
            String updateQuery = "UPDATE users SET username = ?, contactNumber = ? WHERE email = ?";
            try {
                PreparedStatement updateStatement = con.prepareStatement(updateQuery);
                updateStatement.setString(1, newusername);
                updateStatement.setString(2, newcontactNumber);
                updateStatement.setString(3, email);
                updateStatement.executeUpdate();
                System.out.println("Details updated successfully.");
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        } else {
            System.out.println("Email address not found. Update failed.");
            // You can send an error message to the user here
        }
    }

    public SignUpUser getUserByEmail(String email) {
        connectToDB();
        String query = "SELECT * FROM users WHERE email = '" + email + "'";
        ResultSet rs = null;
        SignUpUser user = null;

        try {
            rs = st.executeQuery(query);
            if (rs.next()) {
                user = new SignUpUser(rs.getString("username"), rs.getString("email"), rs.getString("password"), rs.getString("contactNumber"));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }

        return user;
    }

    public void updatePassword(String email, String newPassword) {
        connectToDB();
        String query = "UPDATE users SET password = '" + newPassword + "' WHERE email = '" + email + "'";
        try {
            st.executeUpdate(query);
            System.out.println("Password updated successfully.");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

}
