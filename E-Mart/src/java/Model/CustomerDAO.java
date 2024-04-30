/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/emart";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    // Method to delete a customer record from the database
    public static void deleteCustomer(String customeremail) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Get a database connection
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // SQL statement to delete customer
            String sql = "DELETE FROM users WHERE email = ?";

            // Create prepared statement
            stmt = conn.prepareStatement(sql);

            // Set customer email parameter
            stmt.setString(1, customeremail);

            // Execute the delete operation
            stmt.executeUpdate();
        } catch (SQLException e) {
            // Handle any SQL errors
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}




