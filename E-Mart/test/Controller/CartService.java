/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

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
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "username", "password");
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
            PreparedStatement statement = connection.prepareStatement("INSERT INTO billing_details (full_name, email, address, city, state, zip, card_type, card_name, card_number, expiry_date, cvv) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
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
            e.printStackTrace();
        }
        return false;
    }
}
