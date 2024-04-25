/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author robin
 */
public class StringToProductCategoryConverter {

    public static ProductCategory convert(String categoryString) {
        switch (categoryString.toLowerCase()) {
            case "camera":
                return ProductCategory.Camera;
            case "smartphone":
                return ProductCategory.Smartphone;
            case "laptop":
                return ProductCategory.Laptop;
            case "monitor":
                return ProductCategory.Monitor;
            case "smartwatch":
                return ProductCategory.Smartwatch;
            default:
                throw new IllegalArgumentException("Invalid product category: " + categoryString);
        }
    }
}
