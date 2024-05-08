/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author robin
 */
public class AdminOrderObj {

    private Date orderDate;
    private int orderNumber;
    private String orderStatus;
    private String productId;
    private int quantity;
    private int totalPrice;
    private String shippingAddress;
    private String customerName;
    private String feedback;
    private String email;
    private String productName;

    public AdminOrderObj(Date orderDate, int orderNumber, String orderStatus, String productId, int quantity, int totalPrice, String shippingAddress, String customerName, String feedback, String email) {
        this.orderDate = orderDate;
        this.orderNumber = orderNumber;
        this.orderStatus = orderStatus;
        this.productId = productId;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.shippingAddress = shippingAddress;
        this.customerName = customerName;
        this.feedback = feedback;
        this.email = email;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public int getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(int orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    void setProductName(String productName) {
        this.productName = productName;
    }
    
    public String getProductName() {
        return productName;
    }

}
