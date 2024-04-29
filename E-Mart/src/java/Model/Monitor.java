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

    public Monitor(int productId, String productName, int price, int quantity, String photo1,String photo2,String photo3,String photo4,
            String brand, String modelName, String productDescription, String category,
            int refreshRate, String screenSize, String resolution) {
        super(productId, productName, price, quantity, photo1,photo2,photo3, photo4, brand, modelName, productDescription, category);
        this.screenSize = screenSize;
        this.refreshRate = refreshRate;
        this.resolution = resolution;
    }

    public Monitor(){
        
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
