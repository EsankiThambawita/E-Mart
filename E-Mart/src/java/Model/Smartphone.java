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
public class Smartphone extends BaseProduct {

    private String storageCapacity;
    private Double screenSize;
    private String color;

    public Smartphone(int productId, String productName, float price, int quantity, String photo1,
            String brand, String modelName, String productDescription, String category,
            String storageCapacity, Double screenSize, String color) {
        super(productId, productName, price, quantity, photo1, brand, modelName, productDescription, category);
        this.storageCapacity = storageCapacity;
        this.screenSize = screenSize;
        this.color = color;
    }

    // Getters and Setters for specific fields (omitted for brevity)

    public String getStorageCapacity() {
        return storageCapacity;
    }

    public void setStorageCapacity(String storageCapacity) {
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
