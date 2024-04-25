/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author hp
 */
import java.util.*;
import java.sql.*;

public class CartService {
    private Map<String, CartItem> cart;
    private Connection connection;

    public CartService() {
        cart = new HashMap<>();
        // Initialize database connection
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/billingdetails", "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void addToCart(String productName, double productPrice, int quantity) {
        if (cart.containsKey(productName)) {
            CartItem item = cart.get(productName);
            item.setQuantity(item.getQuantity() + quantity);
        } else {
            CartItem newItem = new CartItem(productName, productPrice, quantity);
            cart.put(productName, newItem);
        }
    }

    public void removeFromCart(String productName) {
        cart.remove(productName);
    }

    public void updateCart(String productName, int quantity) {
        if (cart.containsKey(productName)) {
            CartItem item = cart.get(productName);
            item.setQuantity(quantity);
        }
    }

    public Map<String, CartItem> getCart() {
        return cart;
    }

    public boolean processCheckout(BillingDetails billingDetails) {
        // Insert billing details into database
        try {
            PreparedStatement statement = connection.prepareStatement("INSERT INTO billingdetails (email,fullname, address, city, state, zip, cardType, cardName, cardNumber, expiryDate, cvv) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            statement.setString(1, billingDetails.getFullName());
            statement.setString(2, billingDetails.getEmail());
            statement.setString(3, billingDetails.getAddress());
            statement.setString(4, billingDetails.getCity());
            statement.setString(5, billingDetails.getState());
            statement.setString(6, billingDetails.getZip());
            statement.setString(7, billingDetails.getCardType());
            statement.setString(8, billingDetails.getCardName());
            statement.setString(9, billingDetails.getCardNumber());
            statement.setString(10, billingDetails.getExpiryDate());
            statement.setString(11, billingDetails.getCvv());
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                return true;
            }
        } catch (SQLException e) {
            // Log the exception
        e.printStackTrace();
        // You can also log the specific SQL error code and message
        System.err.println("SQL Error Code: " + e.getErrorCode());
        System.err.println("SQL Error Message: " + e.getMessage());
    }
        
        return false;
    }
}
