/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.*;

/**
 *
 * @author robin
 */
public class Smartwatches extends BaseProduct {

    private String screenSize;
    private String color;

    public Smartwatches(int productId, String productName, double price, int quantity, List<String> photos,
            String brand, String modelName, String productDescription, String category,
            String screenSize, String color) {
        super(productId, productName, price, quantity, photos, brand, modelName, productDescription, category);
        this.screenSize = screenSize;
        this.color = color;
    }

    // Getters and Setters for specific fields (omitted for brevity)

    public String getScreenSize() {
        return screenSize;
    }

    public void setScreenSize(String screenSize) {
        this.screenSize = screenSize;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
}
