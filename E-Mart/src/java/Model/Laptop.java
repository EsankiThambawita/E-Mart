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
public class Laptop extends BaseProduct{
    private String storageCapacity;
    private String CPU;
    private String memory;

    public Laptop(int productId, String productName, float price, int quantity, String photos,
            String brand, String modelName, String productDescription, String category,
            String storageCapacity, String CPU, String memory) {
        super(productId, productName, price, quantity, photos, brand, modelName, productDescription, category);
        this.storageCapacity = storageCapacity;
        this.CPU = CPU;
        this.memory = memory;
    }
    
    public Laptop(){
        
    }

    public String getStorageCapacity() {
        return storageCapacity;
    }

    public void setStorageCapacity(String storageCapacity) {
        this.storageCapacity = storageCapacity;
    }

    public String getCPU() {
        return CPU;
    }

    public void setCPU(String CPU) {
        this.CPU = CPU;
    }

    public String getMemory() {
        return memory;
    }

    public void setMemory(String memory) {
        this.memory = memory;
    }
}
