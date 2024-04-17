/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Model.BaseProduct;
import java.util.*;

/**
 *
 * @author robin
 */
public class Smartphone extends BaseProduct {

    private int storageCapacity;
    private Double screenSize;
    private String color;

    public Smartphone(int productId, String productName, double price, int quantity, List<String> photos,
            String brand, String modelName, String productDescription, String category,
            int storageCapacity, Double screenSize, String color) {
        super(productId, productName, price, quantity, photos, brand, modelName, productDescription, category);
        this.storageCapacity = storageCapacity;
        this.screenSize = screenSize;
        this.color = color;
    }

    // Getters and Setters for specific fields (omitted for brevity)

    public int getStorageCapacity() {
        return storageCapacity;
    }

    public void setStorageCapacity(int storageCapacity) {
        this.storageCapacity = storageCapacity;
    }

    public Double getScreenSize() {
        return screenSize;
    }

    public void setScreenSize(Double screenSize) {
        this.screenSize = screenSize;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
}
