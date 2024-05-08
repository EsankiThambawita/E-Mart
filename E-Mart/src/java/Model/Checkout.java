/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Map;
import java.sql.PreparedStatement;

/**
 *
 * @author hp
 */
public class Checkout {

    Statement st;
    private static final String URL = "jdbc:mysql://localhost:3306/emart";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    private void connectToDB() {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/emart";

        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Checkout.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public String addCheckout(int orderId, String name, String mail, String add, String citys, String states, int zips, Map<Integer, Integer> cartItems, String orderDate, int price, int quantity) {
        Connection conn = null;
        try {
            connectToDB(); // Assuming connectToDB() is a method that initializes the database connection
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            String query = "INSERT INTO orders(orderId, name, email, address, city, state, zip, productId, orderDate, totalPrice, quantity, orderStatus) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'processing')";

            StringBuilder productIdsBuilder = new StringBuilder();
            for (int productId : cartItems.keySet()) {
                productIdsBuilder.append(productId).append(",");
            }
            String productIds = productIdsBuilder.toString();
            // Remove the trailing comma
            if (productIds.endsWith(",")) {
                productIds = productIds.substring(0, productIds.length() - 1);
            }

            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setInt(1, orderId);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, mail);
            preparedStatement.setString(4, add);
            preparedStatement.setString(5, citys);
            preparedStatement.setString(6, states);
            preparedStatement.setInt(7, zips);
            preparedStatement.setString(8, productIds);
            preparedStatement.setString(9, orderDate);
            preparedStatement.setInt(10, price);
            preparedStatement.setInt(11, quantity);
            preparedStatement.executeUpdate();

            return "success with orderId: " + orderId; // Return orderId along with success message

        } catch (SQLException ex) {
            // Log the exception
            Logger.getLogger(Checkout.class.getName()).log(Level.SEVERE, null, ex);
            return ex.toString();
            // Optionally, you can throw a custom exception or handle the error here
        } finally {
            // Close the database connection in the finally block to ensure it's always closed
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    // Log the exception if closing the connection fails
                    Logger.getLogger(Checkout.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

}
