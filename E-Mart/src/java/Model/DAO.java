/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author robin
 */
public class DAO {

    private static final String URL = "jdbc:mysql://localhost:3306/emart";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    public static List<Smartphone> getAllSmartphones() {
        List<Smartphone> products = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establishing connection to the database
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Creating SQL statement
            statement = connection.createStatement();

            // SQL query to fetch from smartphone
            String query = "SELECT * FROM smartphone";

            // Executing the query
            resultSet = statement.executeQuery(query);

            // Iterating over the result set and adding items from smartphone
            while (resultSet.next()) {
                int productId = resultSet.getInt("productId");
                String productName = resultSet.getString("productName");
                int price = resultSet.getInt("price");
                int quantity = resultSet.getInt("quantity");
                String brand = resultSet.getString("brand");
                String modelName = resultSet.getString("modelName");
                String productDescription = resultSet.getString("productDescription");
                String category = resultSet.getString("category");
                String storageCapacity = resultSet.getString("storageCapacity");
                Double screenSize = resultSet.getDouble("screenSize");
                String color = resultSet.getString("color");
                String photo1 = resultSet.getString("photo1");
                //to be added more photos (photo2,photo3,photo4)

                // Creating Smartphone object and adding it to the list
                Smartphone smartphone = new Smartphone(productId, productName, price, quantity, photo1,
                        brand, modelName, productDescription, category, storageCapacity, screenSize, color);
                products.add(smartphone);
            }

        } catch (Exception e) {
            System.err.println("Error while retrieving shopping cart items: " + e.getMessage());
        } finally {
            // Closing the connection, statement, and result set
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.err.println("Error while retrieving shopping cart items: " + e.getMessage());
            }
        }
        return products;
    }

    //TODO
//    public static List<Laptop> getAllLaptops() {
//        return generateMockDataLaptop();
//        //TODO: add real sql code
//    }
//
//    public static List<Camera> getAllCamera() {
//        return generateMockDataCamera();
//        //TODO: add real sql code
//    }
//
//    public static List<Smartwatch> getAllSmartwatches() {
//        return generateMockDataSmartwatches();
//        //TODO: add real sql code
//    }
//
//    public static List<Monitor> getAllMonitor() {
//        return generateMockDataMonitor();
//        //TODO: add real sql code
//    }
    public static List<ShoppingCartObj> getAllCartItems() {
        List<ShoppingCartObj> currentCartSnap = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establishing connection to the database
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Creating SQL statement
            statement = connection.createStatement();

            // SQL query to fetch shopping cart items
            String query = "SELECT * FROM ShoppingCart";

            // Executing the query
            resultSet = statement.executeQuery(query);

            // Iterating over the result set and adding items to the shopping cart list
            while (resultSet.next()) {
                String productName = resultSet.getString("productName");
                int productPrice = resultSet.getInt("productPrice");
                int quantity = resultSet.getInt("quantity");
                String description = resultSet.getString("description");
                ProductCategory category = StringToProductCategoryConverter.convert(resultSet.getString("category"));
                String iconPath = resultSet.getString("iconPath");
                int recordId = resultSet.getInt("recordId");
                String email = resultSet.getString("email");

                // Creating ShoppingCartItem object and adding it to the list
                ShoppingCartObj cartItem = new ShoppingCartObj(productName, productPrice, quantity, description,
                        category, iconPath, recordId, email);
                currentCartSnap.add(cartItem);
            }
        } catch (Exception e) {
            System.err.println("Error while retrieving shopping cart items: " + e.getMessage());
        } finally {
            // Closing the connection, statement, and result set
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.err.println("Error while retrieving shopping cart items: " + e.getMessage());
            }
        }

        return currentCartSnap;
    }

    public static void removeAllCartItems() {
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement("DELETE FROM shoppingcart")) {
            statement.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error while retrieving shopping cart items: " + e.getMessage());
        }
    }

    public static List<ShoppingCartObj> getOrderConfirmationDetails() {
        return getAllCartItems();
    }

    public static List<NewestProductObj> getNewArrivals() {
        List<NewestProductObj> newitems = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establishing connection to the database
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Creating SQL statement
            statement = connection.createStatement();

            // SQL query to fetch shopping cart items
            String query = "SELECT * FROM smartphone ORDER BY productId DESC";

            // Executing the query
            resultSet = statement.executeQuery(query);

            // Iterating over the result set and adding items to the shopping cart list
            while (resultSet.next()) {
                String productName = resultSet.getString("productName");
                int productPrice = resultSet.getInt("price");
                String iconPath = resultSet.getString("photo1");

                // Creating ShoppingCartItem object and adding it to the list
                NewestProductObj items = new NewestProductObj(productName, productPrice, iconPath);
                newitems.add(items);
            }
        } catch (Exception e) {
            System.err.println("Error while retrieving shopping cart items: " + e.getMessage());
        } finally {
            // Closing the connection, statement, and result set
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.err.println("Error while retrieving shopping cart items: " + e.getMessage());
            }
        }
        return newitems;
    }

    public static List<AdminOrderObj> getAdminOrders() {
        List<AdminOrderObj> orders = new ArrayList<>();
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establishing connection to the database
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Creating SQL statement
            statement = connection.createStatement();

            // SQL query to fetch from smartphone
            String query = "SELECT o.*, "
                    + "CASE "
                    + "  WHEN o.productId IN (SELECT productId FROM camera) THEN (SELECT productName FROM camera WHERE productId = o.productId) "
                    + "  WHEN o.productId IN (SELECT productId FROM smartphone) THEN (SELECT productName FROM smartphone WHERE productId = o.productId) "
                    + "  WHEN o.productId IN (SELECT productId FROM smartwatch) THEN (SELECT productName FROM smartwatch WHERE productId = o.productId) "
                    + "  WHEN o.productId IN (SELECT productId FROM laptop) THEN (SELECT productName FROM laptop WHERE productId = o.productId) "
                    + "  WHEN o.productId IN (SELECT productId FROM monitor) THEN (SELECT productName FROM monitor WHERE productId = o.productId) "
                    + "END AS productName "
                    + "FROM orders o";

            // Executing the query
            resultSet = statement.executeQuery(query);

            // Iterating over the result set and adding items from smartphone
            while (resultSet.next()) {
                int orderNumber = resultSet.getInt("orderId");
                int productId = resultSet.getInt("productId");
                int quantity = resultSet.getInt("quantity");
                java.util.Date orderDate = resultSet.getDate("orderDate");
                String orderStatus = resultSet.getString("orderStatus");
                int totalPrice = resultSet.getInt("totalPrice");
                String shippingAddress = resultSet.getString("address");
                String customerName = resultSet.getString("name");
                String feedback = resultSet.getString("feedback");
                String email = resultSet.getString("email");
                String productName = resultSet.getString("productName"); // Retrieve product name

                // Creating Smartphone object and adding it to the list
                AdminOrderObj order = new AdminOrderObj(orderDate, orderNumber, orderStatus, productId, quantity,
                        totalPrice, shippingAddress, customerName, feedback, email);
                order.setProductName(productName);
                orders.add(order);
            }

        } catch (Exception e) {
            System.err.println("Error while retrieving shopping cart items: " + e.getMessage());
        } finally {
            // Closing the connection, statement, and result set
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.err.println("Error while retrieving shopping cart items: " + e.getMessage());
            }
        }
        return orders;
    }

    public static void removeOrderItem(int orderId) {
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement("DELETE FROM orders WHERE orderId = ?")) {
            statement.setInt(1, orderId);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error while deleting order: " + e.getMessage());
        }
    }

    public static void updateProduct(String productId, int quantity, int price) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establishing connection to the database
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Fetch category first
            String getCategoryQuery = "SELECT category FROM smartphone WHERE productId=?";
            PreparedStatement getCategoryStatement = connection.prepareStatement(getCategoryQuery);
            getCategoryStatement.setString(1, productId);
            resultSet = getCategoryStatement.executeQuery();
            String category = null;
            if (resultSet.next()) {
                category = resultSet.getString("category");
            }

            // Prepare SQL statement
            String sql = "UPDATE " + category + " SET quantity=?, price=? WHERE productId=?";
            statement = connection.prepareStatement(sql);

            // Set parameters
            statement.setInt(1, quantity);
            statement.setDouble(2, price);
            statement.setString(3, productId);

            // Execute update
            statement.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Close resources
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
    }

    public static void deleteProduct(String productId) {
    Connection connection = null;
    PreparedStatement statement = null;

    try {
        // Establishing connection to the database
        connection = getConnection();

        // Prepare SQL statement to delete the product
        String sql = "DELETE FROM smartphone WHERE productId = ?";
        statement = connection.prepareStatement(sql);

        // Set the productId parameter
        statement.setString(1, productId);

        // Execute the delete statement
        statement.executeUpdate();
    } catch (SQLException e) {
        System.err.println("Error while deleting product: " + e.getMessage());
    } finally {
        // Close resources
        try {
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            System.err.println("Error while closing connection: " + e.getMessage());
        }
    }
    }

    public static void addProduct(String productId, String productName, String category, int quantity, int price) {
         Connection connection = null;
        PreparedStatement statement = null;

        try {
            // Get connection
            connection = getConnection();

            // Create SQL query
            String query = "INSERT INTO smartphone (productId, productName, category, quantity, price) VALUES (?, ?, ?, ?, ?)";

            // Create PreparedStatement
            statement = connection.prepareStatement(query);

            // Set parameters
            statement.setString(1, productId);
            statement.setString(2, productName);
            statement.setString(3, category);
            statement.setInt(4, quantity);
            statement.setInt(5, price);

            // Execute the query
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle or log the exception appropriately
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

}
