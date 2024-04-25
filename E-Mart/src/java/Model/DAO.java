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
                float price = resultSet.getFloat("price");
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

<<<<<<< Updated upstream
    public static List<Laptop> getAllLaptops() {
        return generateMockDataLaptop();
        //TODO: add real sql code
    }

    public static List<Camera> getAllCamera() {
        return generateMockDataCamera();
        //TODO: add real sql code
    }

    public static List<Smartwatch> getAllSmartwatches() {
        return generateMockDataSmartwatches();
        //TODO: add real sql code
    }

    public static List<Monitor> getAllMonitor() {
        return generateMockDataMonitor();
        //TODO: add real sql code
    }
<<<<<<< Updated upstream
=======
    
    public static List<ShoppingCartObj> currentCartSnap = new ArrayList<>();
=======
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
>>>>>>> Stashed changes
>>>>>>> Stashed changes

    //public static List<ShoppingCartObj> currentCartSnap = new ArrayList<>();
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

//    public static void fillMockCart() {
//        currentCartSnap = generateMockShoppingCartObjs();
//    }
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
        return generateMockNewestItems();
    }

    //Mock Data
    private static List<Smartphone> generateMockDataSmartphone() {
        List<Smartphone> products = new ArrayList<>();

        // Mock data for smartphones
<<<<<<< Updated upstream
        products.add(new Smartphone(1, "Smartphone A", 799, 100,
=======
<<<<<<< Updated upstream
        products.add(new Smartphone(1, "Smartphone A", 799.99f, 100,
>>>>>>> Stashed changes
                new ArrayList<>(), "Brand X", "Model 1", "High-end smartphone with great features", "Smartphone",
                "512GB", 6.5, "Black"));
        products.add(new Smartphone(2, "Smartphone B", 699, 150,
                new ArrayList<>(), "Brand Y", "Model 2", "Affordable smartphone with good performance", "Smartphone",
=======
        products.add(new Smartphone(1, "Smartphone A", 799, 100,
                "Images/Home/monitor.png", "Brand X", "Model 1", "High-end smartphone with great features", "Smartphone",
                "512GB", 6.5, "Black"));
        products.add(new Smartphone(2, "Smartphone B", 699, 150,
                "Images/Home/monitor.png", "Brand Y", "Model 2", "Affordable smartphone with good performance", "Smartphone",
>>>>>>> Stashed changes
                "256GB", 6.0, "Silver"));

        return products;
    }

<<<<<<< Updated upstream
    private static List<Laptop> generateMockDataLaptop() {
        List<Laptop> products = new ArrayList<>();

        // Mock data for laptops
        products.add(new Laptop(3, "Laptop A", 1299, 50,
                new ArrayList<>(), "Brand Z", "Model 3", "Powerful laptop for professional use", "Laptop",
                "1TB SSD", "Intel i7", "16GB"));
        products.add(new Laptop(4, "Laptop B", 999, 80,
                new ArrayList<>(), "Brand W", "Model 4", "Mid-range laptop suitable for everyday tasks", "Laptop",
                "512GB SSD", "Intel i5", "8GB"));
        return products;
    }

    private static List<Camera> generateMockDataCamera() {
        List<Camera> products = new ArrayList<>();
        // Mock data for cameras
        products.add(new Camera(5, "Camera A", 599, 30,
                new ArrayList<>(), "Brand V", "Model 5", "Compact camera for photography enthusiasts", "Camera",
                "Compact"));
        products.add(new Camera(5, "Camera B", 399, 20,
                new ArrayList<>(), "Brand X", "Model 6", "Compact camera for photography enthusiasts", "Camera",
                "Compact"));
        return products;
    }

    private static List<Smartwatch> generateMockDataSmartwatches() {
        List<Smartwatch> products = new ArrayList<>();
        // Mock data for smartwatches
        products.add(new Smartwatch(6, "Smartwatch A", 299, 80,
                new ArrayList<>(), "Brand U", "Model 6", "Feature-rich smartwatch for fitness tracking", "Smartwatch",
                "1.3 inches", "Red"));
        products.add(new Smartwatch(7, "Smartwatch B", 199, 120,
                new ArrayList<>(), "Brand T", "Model 7", "Affordable smartwatch with basic features", "Smartwatch",
                "1.1 inches", "Blue"));
        return products;
    }

    private static List<Monitor> generateMockDataMonitor() {
        List<Monitor> products = new ArrayList<>();
        // Mock data for monitors
        products.add(new Monitor(8, "Monitor A", 399, 40,
                new ArrayList<>(), "Brand S", "Model 8", "High-quality monitor for gaming and multimedia", "Monitor",
                144, "27 inches", "2560x1440"));
        products.add(new Monitor(9, "Monitor B", 249, 60,
                new ArrayList<>(), "Brand R", "Model 9", "Budget-friendly monitor for everyday use", "Monitor",
                60, "24 inches", "1920x1080"));
        return products;
    }
=======
//    private static List<Laptop> generateMockDataLaptop() {
//        List<Laptop> products = new ArrayList<>();
//
//        // Mock data for laptops
//        products.add(new Laptop(3, "Laptop A", 1299, 50,
//                new ArrayList<>(), "Brand Z", "Model 3", "Powerful laptop for professional use", "Laptop",
//                "1TB SSD", "Intel i7", "16GB"));
//        products.add(new Laptop(4, "Laptop B", 999, 80,
//                new ArrayList<>(), "Brand W", "Model 4", "Mid-range laptop suitable for everyday tasks", "Laptop",
//                "512GB SSD", "Intel i5", "8GB"));
//        return products;
//    }
//
//    private static List<Camera> generateMockDataCamera() {
//        List<Camera> products = new ArrayList<>();
//        // Mock data for cameras
//        products.add(new Camera(5, "Camera A", 599, 30,
//                new ArrayList<>(), "Brand V", "Model 5", "Compact camera for photography enthusiasts", "Camera",
//                "Compact"));
//        products.add(new Camera(5, "Camera B", 399, 20,
//                new ArrayList<>(), "Brand X", "Model 6", "Compact camera for photography enthusiasts", "Camera",
//                "Compact"));
//        return products;
//    }
//
//    private static List<Smartwatch> generateMockDataSmartwatches() {
//        List<Smartwatch> products = new ArrayList<>();
//        // Mock data for smartwatches
//        products.add(new Smartwatch(6, "Smartwatch A", 299, 80,
//                new ArrayList<>(), "Brand U", "Model 6", "Feature-rich smartwatch for fitness tracking", "Smartwatch",
//                "1.3 inches", "Red"));
//        products.add(new Smartwatch(7, "Smartwatch B", 199, 120,
//                new ArrayList<>(), "Brand T", "Model 7", "Affordable smartwatch with basic features", "Smartwatch",
//                "1.1 inches", "Blue"));
//        return products;
//    }
//
//    private static List<Monitor> generateMockDataMonitor() {
//        List<Monitor> products = new ArrayList<>();
//        // Mock data for monitors
//        products.add(new Monitor(8, "Monitor A", 399, 40,
//                new ArrayList<>(), "Brand S", "Model 8", "High-quality monitor for gaming and multimedia", "Monitor",
//                144, "27 inches", "2560x1440"));
//        products.add(new Monitor(9, "Monitor B", 249, 60,
//                new ArrayList<>(), "Brand R", "Model 9", "Budget-friendly monitor for everyday use", "Monitor",
//                60, "24 inches", "1920x1080"));
//        return products;
//    }
>>>>>>> Stashed changes

    private static List<ShoppingCartObj> generateMockShoppingCartObjs() {
        List<ShoppingCartObj> cartProducts = new ArrayList<>();

        cartProducts.add(new ShoppingCartObj("Monitor A", 399, 1,
                "34 inches", ProductCategory.Monitor, "Images/Home/monitor.png", 1, "boy@gmail.com"));
        cartProducts.add(new ShoppingCartObj("Smartphone X", 899, 2,
                "256GB", ProductCategory.Smartphone, "Images/Home/phone.png", 2, "girl@gmail.com"));
        cartProducts.add(new ShoppingCartObj("Laptop Y", 1299, 1,
                "512GB", ProductCategory.Laptop, "Images/Home/laptop.png", 3, "bi@gmail.com"));
        return cartProducts;
    }

    private static List<NewestProductObj> generateMockNewestItems() {
        List<NewestProductObj> newestItems = new ArrayList<>();

        newestItems.add(new NewestProductObj(5, "Laptop Beta", 150000, "Images/ProductCategory&Details/Laptops/AcerChromebookSpin.png"));
        newestItems.add(new NewestProductObj(1, "Monitor A", 250000, "Images/ProductCategory&Details/Monitors/AsusProArtDisplayPA278CV.png"));
        newestItems.add(new NewestProductObj(2, "Smartphone X", 100000, "Images/ProductCategory&Details/Phones/i14p.png"));
        newestItems.add(new NewestProductObj(3, "Laptop Y", 250000, "Images/ProductCategory&Details/Laptops/HPSpectre.png"));
        newestItems.add(new NewestProductObj(4, "Laptop Z", 350000, "Images/ProductCategory&Details/Laptops/AcerChromebookSpin.png"));

        return newestItems;
    }

}
