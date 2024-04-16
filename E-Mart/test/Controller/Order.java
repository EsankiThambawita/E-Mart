/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

/**
 *
 * @author hp
 */


import java.util.Date; // Import Date class for representing order date

public class Order {
    private Date date; // Date of the order
    private String orderNumber; // Unique order number
    private String orderStatus; // Status of the order
    private String itemsPurchased; // Description of items purchased
    private int quantity; // Quantity of items
    private double totalPrice; // Total price of the order
    private String shippingAddress; // Shipping address
    private String billingAddress; // Billing address
    
    // Constructor
    public Order(Date date, String orderNumber, String orderStatus, String itemsPurchased,
                 int quantity, double totalPrice, String shippingAddress, String billingAddress) {
        this.date = date;
        this.orderNumber = orderNumber;
        this.orderStatus = orderStatus;
        this.itemsPurchased = itemsPurchased;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.shippingAddress = shippingAddress;
        this.billingAddress = billingAddress;
    }

    // Getters and setters
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getItemsPurchased() {
        return itemsPurchased;
    }

    public void setItemsPurchased(String itemsPurchased) {
        this.itemsPurchased = itemsPurchased;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public String getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(String billingAddress) {
        this.billingAddress = billingAddress;
    }
}
