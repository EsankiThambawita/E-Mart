<%-- 
    Document   : OrderConfirmation
    Created on : Apr 11, 2024, 4:43:46 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Confirmation</title>
        <link href="CSS/OrderConfirmation.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
    <div class="confirmation">
      <h1>Thank you for your order!</h1>
      <div class="order-summary">
        <h2>Order Summary</h2>
        <div class="line"></div>
        <div class="item">
          <span class="number">1)</span>
          <span class="name">Iphone 14 pro</span>
          <span class="amount">3 items</span>
          <span class="price">LKR 300,000</span>
        </div>
        
        <div class="item">
          <span class="number">2)</span>
          <span class="name">Iphone 14 pro</span>
          <span class="amount">3 items</span>
          <span class="price">LKR 300,000</span>
        </div>
        
        <div class="item">
          <span class="number">3)</span>
          <span class="name">Iphone 14 pro</span>
          <span class="amount">3 items</span>
          <span class="price">LKR 300,000</span>
        </div>
        
        <div class="line"></div>
        
        <div class="button-container">
          <button class="button button1">Order History</button>
          <button class="button button2">Continue Shopping</button>
          <span class="text1">Total -</span>
          <span class="text2">LKR 900,000</span>
        </div>

        
      </div>
    </div>
            
    <div class="feedback">
      <h3>How was your shopping experience?</h3>
      <div class="stars">
        <img src="Images/OrderConfirmation/Star.png" alt="Star" class="star-full">
        <img src="Images/OrderConfirmation/Star.png" alt="Star" class="star-full">
        <img src="Images/OrderConfirmation/Star.png" alt="Star" class="star-full">
        <img src="Images/OrderConfirmation/Star-Empty.png" alt="Star" class="star-empty">
        <img src="Images/OrderConfirmation/Star-Empty.png" alt="Star" class="star-empty">
      </div>
    </div>
  </div>

    </body>
</html>
