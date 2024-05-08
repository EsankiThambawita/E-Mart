package Controller;
import Model.DAO;
import Model.Smartphone;
import Model.Camera;
import Model.Laptop;
import Model.Monitor;
import Model.Smartwatch;


import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.List;



@WebServlet(name = "ShoppingServlet", value = "/ShoppingServlet")
public class ShoppingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productID = request.getParameter("ID");
        String action = request.getParameter("action");
        String category = request.getParameter("category");
        
        if(category.equals("smartphones")){
            //Call the getAllSmartphones method from DAo class
            List<Smartphone> smartphones = DAO.getAllSmartphones();
            
            //Iterate over the smartphones List and add each smartphone to the Shopping Cart
            for (Smartphone smartphone : smartphones){
                ShoppingServlet.addToShoppingCart(smartphone.getProductId(), smartphone.getQuantity(), smartphone.getPrice(), smartphone.getProductName(), smartphone.getCategory(), "example@email.com", smartphone.getProductDescription());
            }
        }
        else if (category.equals("laptop")){
             // Call the getAllLaptops method from DAO class
            List<Laptop> laptops = DAO.getAllLaptops();

            // Iterate over the laptops list and add each laptop to the shopping cart
            for (Laptop laptop : laptops) {
                addToShoppingCart(laptop.getProductId(), laptop.getQuantity(), laptop.getPrice(), laptop.getProductName(), laptop.getCategory(), "example@email.com", laptop.getProductDescription());
            }
        }
        else if (category.equals("camera")) {
                // Call the getAllCameras method from DAO class
                List<Camera> cameras = DAO.getAllCamera();

                // Iterate over the cameras list and add each camera to the shopping cart
                for (Camera camera : cameras) {
                    addToShoppingCart(camera.getProductId(), camera.getQuantity(), camera.getPrice(), camera.getProductName(), camera.getCategory(), "example@email.com", camera.getProductDescription());
                }
        }
        else if (category.equals("smartwatch")) {
                // Call the getAllSmartwatches method from DAO class
                List<Smartwatch> smartwatches = DAO.getAllSmartwatches();

                // Iterate over the smartwatches list and add each smartwatch to the shopping cart
                for (Smartwatch smartwatch : smartwatches) {
                    addToShoppingCart(smartwatch.getProductId(), smartwatch.getQuantity(), smartwatch.getPrice(), smartwatch.getProductName(), smartwatch.getCategory(), "example@email.com", smartwatch.getProductDescription());
                }
        }
        else if (category.equals("monitor")) {
                // Call the getAllMonitors method from DAO class
                List<Monitor> monitors = DAO.getAllMonitor();

                // Iterate over the monitors list and add each monitor to the shopping cart
                for (Monitor monitor : monitors) {
                    addToShoppingCart(monitor.getProductId(), monitor.getQuantity(), monitor.getPrice(), monitor.getProductName(), monitor.getCategory(), "example@email.com", monitor.getProductDescription());
                }
            }
        
        
        
  
    }
    
    //Define addToShoppingCartFunction
    public static void addToShoppingCart(int productId, int quantity, double price, String productName, String category, String email, String description){
        
        Connection connection = null;
        PreparedStatement statement = null;
        
        try{
            //Get connection
            connection = getConnection();
            
            //Create SQL Query
            String Query = "INSERT INTO shoppingcart (productId, quantity, productPrice, productName, category, email, description, iconPath) VALUES (?, ?, ?, ?, ?, ?, ?)";
            
            statement = connection.prepareStatement(Query);
            
            //Set parameters
            statement.setInt(1, productId);
            statement.setInt(2, quantity);
            statement.setDouble(3, price);
            statement.setString(4, productName);
            statement.setString(5, category);
            statement.setString(6, email);
            statement.setString(7, description);
            
        } catch (SQLException e){
            e.printStackTrace();
        } finally {
                // Close the connection and statement
            try {
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace(); // Handle or log the exception appropriately
            }
        }
        
        
    }
    
     private static final String URL = "jdbc:mysql://localhost:3306/emart";
     private static final String USERNAME = "root";
     private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}

