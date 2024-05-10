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
import java.io.PrintWriter;
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

    private static final String URL = "jdbc:mysql://localhost:3306/emart";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        int productId = Integer.parseInt(request.getParameter("ID"));
        String action = request.getParameter("action");
        String category = request.getParameter("category");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int price = Integer.parseInt(request.getParameter("productPrice"));
        String description = request.getParameter("description");
        String iconPath = request.getParameter("iconPath");
        String productName = request.getParameter("productName");

        if (action.equals("buy")) {
            String email = (String) request.getSession().getAttribute("email");
            if (email != null && !email.isEmpty()) {
                // User is logged in, proceed to add item to cart
                addToShoppingCart(productId, quantity, price, productName, category, description, iconPath, email);
                response.sendRedirect("Checkout.jsp");
            } else {
                // User is not logged in, redirect to login page or display a message
                response.sendRedirect("SignIn.jsp");
            }

        } else if (action.equals("cart")) {
            String email = (String) request.getSession().getAttribute("email");
            if (email != null && !email.isEmpty()) {
                // User is logged in, proceed to add item to cart
                addToShoppingCart(productId, quantity, price, productName, category, description, iconPath, email);
                response.sendRedirect("ShoppingCart.jsp");
            } else {
                // User is not logged in, redirect to login page or display a message
                response.sendRedirect("SignIn.jsp");
            }
        }
    }
    //Define addToShoppingCartFunction

    public static void addToCheckout(int productId, int quantity, int productPrice, String productName, String category, String description, String iconPath) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            // Get connection
            connection = getConnection();

            // Create SQL Query
            String Query = "INSERT INTO shoppingcart (productId, quantity, productPrice, productName, category, description, iconPath) VALUES (?, ?, ?, ?, ?, ?, ?)";

            statement = connection.prepareStatement(Query);

            // Set parameters
            statement.setInt(1, productId);
            statement.setInt(2, quantity);
            statement.setInt(3, productPrice);
            statement.setString(4, productName);
            statement.setString(5, category);
            statement.setString(6, description);
            statement.setString(7, iconPath);

            // Execute the query
            statement.executeUpdate();

        } catch (SQLException e) {
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

    public static void addToShoppingCart(int productId, int quantity, int productPrice, String productName, String category, String description, String iconPath, String email) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            // Get connection
            connection = getConnection();

            // Create SQL Query
            String Query = "INSERT INTO shoppingcart (productId, quantity, productPrice, productName, category, description, iconPath, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            statement = connection.prepareStatement(Query);

            // Set parameters
            statement.setInt(1, productId);
            statement.setInt(2, quantity);
            statement.setInt(3, productPrice);
            statement.setString(4, productName);
            statement.setString(5, category);
            statement.setString(6, description);
            statement.setString(7, iconPath);
            statement.setString(8, email);

            // Execute the query
            statement.executeUpdate();

        } catch (SQLException e) {
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
