/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class AdminLogin {

    static Statement st;

    public void insertloginData(String Email, String Password) {
        // Connect to the database
        connectToDB();

        // Check if the combination already exists
        if (!isDuplicate(Email, Password)) {
            // If it doesn't exist, insert the data
            String query = "INSERT INTO adminusers(email, password) VALUES('" + Email + "', '" + Password + "')";
            try {
                st.executeUpdate(query);
                System.out.println("Record inserted");
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        } else {
            System.out.println("Record already exists");
        }
    }

    public boolean isDuplicate(String Email, String Password) {
        if (st == null) {
        System.out.println("Database connection is not established");
        return false;
    }

    String query = "SELECT COUNT(*) FROM adminusers WHERE email = '" + Email + "' AND password = '" + Password + "'";
    try (ResultSet rs = st.executeQuery(query)) {
        if (rs.next()) {
            int count = rs.getInt(1);
            return count > 0; // If count > 0, combination exists
        }
    } catch (SQLException ex) {
        System.out.println(ex.getMessage());
    }
    return false;
    }

    public void connectToDB() {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/emart";

        try {
            Class.forName(driver);
            // Establish the connection
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AdminLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
