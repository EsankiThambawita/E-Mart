package Model;

import java.util.*;
/**
 *
 * @author robin
 */
public abstract class BaseProduct {
  private int productId;
  private String productName;
  private double price;
  private int quantity;
  private List<String> photos;
  private String brand;
  private String modelName;
  private String productDescription;
  private String category;

  // Getters and Setters (omitted for brevity)

  public BaseProduct(int productId, String productName, double price, int quantity, List<String> photos,
                     String brand, String modelName, String productDescription, String category) {
    this.productId = productId;
    this.productName = productName;
    this.price = price;
    this.quantity = quantity;
    this.photos = photos;
    this.brand = brand;
    this.modelName = modelName;
    this.productDescription = productDescription;
    this.category = category;
  }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public List<String> getPhotos() {
        return photos;
    }

    public void setPhotos(List<String> photos) {
        this.photos = photos;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

  @Override
  public String toString() {
    return "BaseProduct [productId=" + productId + ", name=" + productName + "]";
  }
}

