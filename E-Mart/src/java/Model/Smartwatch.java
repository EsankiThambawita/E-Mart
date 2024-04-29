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
public class Smartwatch extends BaseProduct {

    private String screenSize;
    private String color;

    public Smartwatch(int productId, String productName, int price, int quantity, String photo1, String photo2, String photo3, String photo4,
            String brand, String modelName, String productDescription, String category,
            String screenSize, String color) {
        super(productId, productName, price, quantity, photo1, photo2, photo3, photo4, brand, modelName, productDescription, category);
        this.screenSize = screenSize;
        this.color = color;
    }

    // Getters and Setters for specific fields (omitted for brevity)
    public Smartwatch() {

    }

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
