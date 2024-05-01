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
                String photo2 = resultSet.getString("photo2");
                String photo3 = resultSet.getString("photo3");
                String photo4 = resultSet.getString("photo4");

                // Creating Smartphone object and adding it to the list
                Smartphone smartphone = new Smartphone(productId, productName, price, quantity, photo1, photo2, photo3, photo4,
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

    public static List<Laptop> getAllLaptops() {
        List<Laptop> products = new ArrayList<>();
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
            String query = "SELECT * FROM laptop";

            // Executing the query
            resultSet = statement.executeQuery(query);

            // Iterating over the result set and adding items from smartphone
            while (resultSet.next()) {
                int productId = resultSet.getInt("productId");
                String productName = resultSet.getString("productName");
                int price = resultSet.getInt("price");
                int quantity = resultSet.getInt("quantity");
                String photo1 = resultSet.getString("photo1");
                String photo2 = resultSet.getString("photo2");
                String photo3 = resultSet.getString("photo3");
                String photo4 = resultSet.getString("photo4");
                String brand = resultSet.getString("brand");
                String modelName = resultSet.getString("modelName");
                String productDescription = resultSet.getString("productDescription");
                String category = resultSet.getString("category");
                String storageCapacity = resultSet.getString("storageCapacity");
                String CPU = resultSet.getString("CPU");
                String memory = resultSet.getString("memory");

                // Creating Smartphone object and adding it to the list
                Laptop laptop = new Laptop(productId, productName, price, quantity, photo1, photo2, photo3, photo4,
                        brand, modelName, productDescription, category, storageCapacity, CPU, memory);
                products.add(laptop);
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

    public static List<Camera> getAllCamera() {
        List<Camera> products = new ArrayList<>();
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
            String query = "SELECT * FROM camera";

            // Executing the query
            resultSet = statement.executeQuery(query);

            // Iterating over the result set and adding items from smartphone
            while (resultSet.next()) {
                int productId = resultSet.getInt("productId");
                String productName = resultSet.getString("productName");
                int price = resultSet.getInt("price");
                int quantity = resultSet.getInt("quantity");
                String photo1 = resultSet.getString("photo1");
                String photo2 = resultSet.getString("photo2");
                String photo3 = resultSet.getString("photo3");
                String photo4 = resultSet.getString("photo4");
                String brand = resultSet.getString("brand");
                String modelName = resultSet.getString("modelName");
                String productDescription = resultSet.getString("productDescription");
                String category = resultSet.getString("category");
                String formFactor = resultSet.getString("formFactor");

                // Creating Smartphone object and adding it to the list
                Camera camera = new Camera(productId, productName, price, quantity, photo1, photo2, photo3, photo4,
                        brand, modelName, productDescription, category, formFactor);
                products.add(camera);
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

    public static List<Smartwatch> getAllSmartwatches() {
        List<Smartwatch> products = new ArrayList<>();
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
            String query = "SELECT * FROM smartwatch";

            // Executing the query
            resultSet = statement.executeQuery(query);

            // Iterating over the result set and adding items from smartphone
            while (resultSet.next()) {
                int productId = resultSet.getInt("productId");
                String productName = resultSet.getString("productName");
                int price = resultSet.getInt("price");
                int quantity = resultSet.getInt("quantity");
                String photo1 = resultSet.getString("photo1");
                String photo2 = resultSet.getString("photo2");
                String photo3 = resultSet.getString("photo3");
                String photo4 = resultSet.getString("photo4");
                String brand = resultSet.getString("brand");
                String modelName = resultSet.getString("modelName");
                String productDescription = resultSet.getString("productDescription");
                String category = resultSet.getString("category");
                String screenSize = resultSet.getString("screenSize");
                String color = resultSet.getString("color");

                // Creating Smartphone object and adding it to the list
                Smartwatch smartwatch = new Smartwatch(productId, productName, price, quantity, photo1, photo2, photo3, photo4,
                        brand, modelName, productDescription, category, screenSize, color);
                products.add(smartwatch);
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

    public static List<Monitor> getAllMonitor() {
        List<Monitor> products = new ArrayList<>();
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
            String query = "SELECT * FROM monitor";

            // Executing the query
            resultSet = statement.executeQuery(query);

            // Iterating over the result set and adding items from smartphone
            while (resultSet.next()) {
                int productId = resultSet.getInt("productId");
                String productName = resultSet.getString("productName");
                int price = resultSet.getInt("price");
                int quantity = resultSet.getInt("quantity");
                String photo1 = resultSet.getString("photo1");
                String photo2 = resultSet.getString("photo2");
                String photo3 = resultSet.getString("photo3");
                String photo4 = resultSet.getString("photo4");
                String brand = resultSet.getString("brand");
                String modelName = resultSet.getString("modelName");
                String productDescription = resultSet.getString("productDescription");
                String category = resultSet.getString("category");
                String screenSize = resultSet.getString("screenSize");
                int refreshRate = resultSet.getInt("refreshRate");
                String resolution = resultSet.getString("resolution");

                // Creating Smartphone object and adding it to the list
                Monitor monitor = new Monitor(productId, productName, price, quantity, photo1, photo2, photo3, photo4,
                        brand, modelName, productDescription, category, refreshRate, screenSize, resolution);
                products.add(monitor);
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

    public static void updateSmartphone(String productId, int quantity, double price, String productName, String brand, String modelName, String productDescription, String storageCapacity, String screenSize, String color, String cpu, String memory, String photo1, String photo2, String photo3, String photo4) {
            Connection connection = null;
            PreparedStatement statement = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establishing connection to the database
                connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

                // Prepare SQL statement
                String sql = "UPDATE smartphone SET quantity=?, price=?, productName=?, brand=?, modelName=?, productDescription=?, storageCapacity=?, screenSize=?, color=?, cpu=?, memory=?, photo1=?, photo2=?, photo3=?, photo4=? WHERE productId=?";
                statement = connection.prepareStatement(sql);

                // Set parameters
                statement.setInt(1, quantity);
                statement.setDouble(2, price);
                statement.setString(3, productName);
                statement.setString(4, brand);
                statement.setString(5, modelName);
                statement.setString(6, productDescription);
                statement.setString(7, storageCapacity);
                statement.setString(8, screenSize);
                statement.setString(9, color);
                statement.setString(10, cpu);
                statement.setString(11, memory);
                statement.setString(12, photo1);
                statement.setString(13, photo2);
                statement.setString(14, photo3);
                statement.setString(15, photo4);
                statement.setString(16, productId);

                // Execute update
                statement.executeUpdate();
            } catch (SQLException e) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
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
    
    public static void deleteLaptop(String productId) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            // Establishing connection to the database
            connection = getConnection();

            // Prepare SQL statement to delete the product
            String sql = "DELETE FROM laptop WHERE productId = ?";
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


    public static void addProduct(String productId, String productName, String category, int quantity, int price, String photo1, String photo2, String photo3, String photo4, String brand, String modelName, String productDescription, String storageCapacity, String screenSize, String color) {
    Connection connection = null;
    PreparedStatement statement = null;

    try {
        // Get connection
        connection = getConnection();

        // Create SQL query
        String query = "INSERT INTO smartphone (productId, productName, category, quantity, price, photo1, photo2, photo3, photo4, brand, modelName, productDescription, storageCapacity, screenSize, color) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        // Create PreparedStatement
        statement = connection.prepareStatement(query);

        // Set parameters
        statement.setString(1, productId);
        statement.setString(2, productName);
        statement.setString(3, category);
        statement.setInt(4, quantity);
        statement.setInt(5, price);
        statement.setString(6, photo1);
        statement.setString(7, photo2);
        statement.setString(8, photo3);
        statement.setString(9, photo4);
        statement.setString(10, brand);
        statement.setString(11, modelName);
        statement.setString(12, productDescription);
        statement.setString(13, storageCapacity);
        statement.setString(14, screenSize);
        statement.setString(15, color);

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


    public static void UpdateOrderStatus(int orderId, String orderStatus) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            // Establishing connection to the database
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            // Prepare SQL statement
            String sql = "UPDATE orders SET orderStatus=? WHERE orderId=?";
            statement = connection.prepareStatement(sql);

            // Set parameters
            statement.setString(1, orderStatus);
            statement.setInt(2, orderId);

            // Execute update
            statement.executeUpdate();
        } catch (SQLException e) {
            // Log the exception with additional context information
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, "Error updating order status", e);
        } finally {
            // Close resources in reverse order of acquisition
            try {
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                // Log the exception with additional context information
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, "Error closing resources", e);
            }
        }
    }

    public static void updateLaptop(String productId, int quantity, double price, String productName, String brand, String modelName, String productDescription, String storageCapacity, String cpu, String memory, String photo1, String photo2, String photo3, String photo4) {
            Connection connection = null;
            PreparedStatement statement = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establishing connection to the database
                connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

                // Prepare SQL statement
                String sql = "UPDATE laptop SET quantity=?, price=?, productName=?, brand=?, modelName=?, productDescription=?, storageCapacity=?, cpu=?, memory=?, photo1=?, photo2=?, photo3=?, photo4=? WHERE productId=?";
                statement = connection.prepareStatement(sql);

                // Set parameters
                statement.setInt(1, quantity);
                statement.setDouble(2, price);
                statement.setString(3, productName);
                statement.setString(4, brand);
                statement.setString(5, modelName);
                statement.setString(6, productDescription);
                statement.setString(7, storageCapacity);
                statement.setString(8, cpu);
                statement.setString(9, memory);
                statement.setString(10, photo1);
                statement.setString(11, photo2);
                statement.setString(12, photo3);
                statement.setString(13, photo4);
                statement.setString(14, productId);

                // Execute update
                statement.executeUpdate();
            } catch (SQLException e) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
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
                    Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
                }
            }
        }


}
