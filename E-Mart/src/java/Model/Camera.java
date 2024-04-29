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

    public Camera(int productId, String productName, int price, int quantity, String photo1, String photo2,String photo3,String photo4,
            String brand, String modelName, String productDescription, String category,
            String formFactor) {
        super(productId, productName, price, quantity, photo1,photo2,photo3, photo4, brand, modelName, productDescription, category);
        this.formFactor = formFactor;
    }

    public Camera() {
        
    }

    public String getFormFactor() {
        return formFactor;
    }

    public void setFormFactor(String formFactor) {
        this.formFactor = formFactor;
    }
}
