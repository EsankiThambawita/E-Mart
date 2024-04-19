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
public class Monitor extends BaseProduct {

    private String screenSize;
    private int refreshRate;
    private String resolution;

    public Monitor(int productId, String productName, double price, int quantity, List<String> photos,
            String brand, String modelName, String productDescription, String category,
            int refreshRate, String screenSize, String resolution) {
        super(productId, productName, price, quantity, photos, brand, modelName, productDescription, category);
        this.screenSize = screenSize;
        this.refreshRate = refreshRate;
        this.resolution = resolution;
    }

    // Getters and Setters for specific fields (omitted for brevity)

    public String getScreenSize() {
        return screenSize;
    }

    public void setScreenSize(String screenSize) {
        this.screenSize = screenSize;
    }

    public int getRefreshRate() {
        return refreshRate;
    }

    public void setRefreshRate(int refreshRate) {
        this.refreshRate = refreshRate;
    }

    public String getResolution() {
        return resolution;
    }

    public void setResolution(String resolution) {
        this.resolution = resolution;
    }
}
