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
public class Camera extends BaseProduct {

    private String formFactor;

    public Camera(int productId, String productName, float price, int quantity, List<String> photos,
            String brand, String modelName, String productDescription, String category,
            String formFactor) {
        super(productId, productName, price, quantity, photos, brand, modelName, productDescription, category);
        this.formFactor = formFactor;
    }

    public String getFormFactor() {
        return formFactor;
    }

    public void setFormFactor(String formFactor) {
        this.formFactor = formFactor;
    }
}
