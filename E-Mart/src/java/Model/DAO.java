/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author robin
 */
public class DAO {
    
    public static List<Smartphone> getAllSmartphones(){
        return generateMockDataSmartphone();
    }
    
    public static List<Laptop> getAllLaptops(){
        return generateMockDataLaptop();
    }

    public static List<Camera> getAllCamera(){
        return generateMockDataCamera();
    }
    
    public static List<Smartwatches> getAllSmartwatches(){
        return generateMockDataSmartwatches();
    }
    
    public static List<Monitor> getAllMonitor(){
        return generateMockDataMonitor();
    }
    
    //Mock Data
    private static List<Smartphone> generateMockDataSmartphone() {
        List<Smartphone> products = new ArrayList<>();

        // Mock data for smartphones
        products.add(new Smartphone(1, "Smartphone A", 799.99, 100,
                new ArrayList<>(), "Brand X", "Model 1", "High-end smartphone with great features", "Smartphone",
                "512GB", 6.5, "Black"));
        products.add(new Smartphone(2, "Smartphone B", 699.99, 150,
                new ArrayList<>(), "Brand Y", "Model 2", "Affordable smartphone with good performance", "Smartphone",
                "256GB", 6.0, "Silver"));

        return products;
    }

    private static List<Laptop> generateMockDataLaptop() {
        List<Laptop> products = new ArrayList<>();

        // Mock data for laptops
        products.add(new Laptop(3, "Laptop A", 1299.99, 50,
                new ArrayList<>(), "Brand Z", "Model 3", "Powerful laptop for professional use", "Laptop",
                "1TB SSD", "Intel i7", "16GB"));
        products.add(new Laptop(4, "Laptop B", 999.99, 80,
                new ArrayList<>(), "Brand W", "Model 4", "Mid-range laptop suitable for everyday tasks", "Laptop",
                "512GB SSD", "Intel i5", "8GB"));
        return products;
    }

    private static List<Camera> generateMockDataCamera() {
        List<Camera> products = new ArrayList<>();
        // Mock data for cameras
        products.add(new Camera(5, "Camera A", 599.99, 30,
                new ArrayList<>(), "Brand V", "Model 5", "Compact camera for photography enthusiasts", "Camera",
                "Compact"));
        products.add(new Camera(5, "Camera B", 399.99, 20,
                new ArrayList<>(), "Brand X", "Model 6", "Compact camera for photography enthusiasts", "Camera",
                "Compact"));
        return products;
    }

    private static List<Smartwatches> generateMockDataSmartwatches() {
        List<Smartwatches> products = new ArrayList<>();
        // Mock data for smartwatches
        products.add(new Smartwatches(6, "Smartwatch A", 299.99, 80,
                new ArrayList<>(), "Brand U", "Model 6", "Feature-rich smartwatch for fitness tracking", "Smartwatch",
                "1.3 inches", "Red"));
        products.add(new Smartwatches(7, "Smartwatch B", 199.99, 120,
                new ArrayList<>(), "Brand T", "Model 7", "Affordable smartwatch with basic features", "Smartwatch",
                "1.1 inches", "Blue"));
        return products;
    }

    private static List<Monitor> generateMockDataMonitor() {
        List<Monitor> products = new ArrayList<>();
        // Mock data for monitors
        products.add(new Monitor(8, "Monitor A", 399.99, 40,
                new ArrayList<>(), "Brand S", "Model 8", "High-quality monitor for gaming and multimedia", "Monitor",
                144, "27 inches", "2560x1440"));
        products.add(new Monitor(9, "Monitor B", 249.99, 60,
                new ArrayList<>(), "Brand R", "Model 9", "Budget-friendly monitor for everyday use", "Monitor",
                60, "24 inches", "1920x1080"));
        return products;
    }
    
    

}
