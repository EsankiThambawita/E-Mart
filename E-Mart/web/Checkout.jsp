<%-- 
    Document   : Checkout
    Created on : Apr 12, 2024, 10:05:16?AM
    Author     : hp
--%>

<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map.Entry" %>

<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" type="text/css" href="CSS/Checkout.css"/>
    <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
    <!-- Add Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body style="background-color: #000000; color: #ffffff;">
    <div class="container">
        <h2><i class="fas fa-shopping-cart"></i> Checkout</h2>
        <h3>Cart <i class="fas fa-shopping-cart"></i></h3>
        <table>
            <tr>
                <th>Product</th>
                <th>Price</th>
            </tr>
            <% 
            Map<String, Double> cart = (Map<String, Double>) session.getAttribute("cart");
            if (cart != null) {
                double total = 0;
                for (Map.Entry<String, Double> entry : cart.entrySet()) { %>
                    <tr>
                        <td><%= entry.getKey() %></td>
                        <td>$<%= entry.getValue() %></td>
                    </tr>
                    <% total += entry.getValue();
                } %>
                <tr>
                    <td><b>Total:</b></td>
                    <td><b>$<%= total %></b></td>
                </tr>
            <% } else { %>
                <tr>
                    <td colspan="2">Your cart is empty</td>
                </tr>
            <% } %>
        </table>

        <h3>Billing Details <i class="fas fa-user"></i></h3>
        <form action="CartController" method="post">
            <div class="form-group">
                <label><i class="fas fa-user"></i> Full Name:</label><br>
                <input type="text" name="fullName" required placeholder="John Doe"><br>
            </div>
            <div class="form-group">
                <label><i class="fas fa-envelope"></i> Email:</label><br>
                <input type="email" name="email" required placeholder="john@example.com"><br>
            </div>
            <div class="form-group">
                <label><i class="fas fa-map-marker-alt"></i> Address:</label><br>
                <input type="text" name="address" required placeholder="123 Street, City"><br>
            </div>
            <div class="form-group">
                <label><i class="fas fa-city"></i> City:</label><br>
                <input type="text" name="city" required placeholder="City"><br>
            </div>
            <div class="form-group">
                <label><i class="fas fa-flag"></i> State:</label><br>
                <input type="text" name="state" required placeholder="State"><br>
            </div>
            <div class="form-group">
                <label><i class="fas fa-mail-bulk"></i> Zip:</label><br>
                <input type="text" name="zip" required placeholder="Zip"><br>
            </div>
            
            <h3>Payment Method <i class="fas fa-credit-card"></i></h3>
            <div class="form-group">
                <label><i class="fab fa-cc-visa"></i> Card Type:</label><br>
                <select name="cardType" required>
                    <option value="visa">Visa</option>
                    <option value="mastercard">Mastercard</option>
                    <option value="amex">American Express</option>
                    <option value="discover">Discover</option>
                </select><br>
            </div>
            <div class="form-group">
                <label><i class="fas fa-user"></i> Name on Card:</label><br>
                <input type="text" name="cardName" required placeholder="John Doe"><br>
            </div>
            <div class="form-group">
                <label><i class="fas fa-credit-card"></i> Credit Card Number:</label><br>
                <input type="text" name="cardNumber" required placeholder="1111-2222-3333-4444"><br>
            </div>
            <div class="form-group">
                <label><i class="fas fa-calendar-alt"></i> Expiry Date (MM/YYYY):</label><br>
                <input type="text" name="expiryDate" required placeholder="MM/YYYY"><br>
            </div>
            <div class="form-group">
                <label><i class="fas fa-lock"></i> CVV:</label><br>
                <input type="text" name="cvv" required placeholder="CVV"><br>
            </div>
            
            <input type="submit" value="Submit Payment" class="btn btn-darkblue">
        </form>
    </div>
    
   
    <!-- Adding Cart functionality -->
    <script>
        function addToCart(productName, productPrice) {
            document.getElementById("productName").value = productName;
            document.getElementById("productPrice").value = productPrice;
            document.getElementById("action").value = "add";
            document.getElementById("cartForm").submit();
        }
        
        function removeFromCart(productName) {
            document.getElementById("productName").value = productName;
            document.getElementById("action").value = "remove";
            document.getElementById("cartForm").submit();
        }
        
        function updateCart(productName, productPrice) {
            var quantity = document.getElementById(productName).value;
            document.getElementById("productName").value = productName;
            document.getElementById("productPrice").value = productPrice;
            document.getElementById("quantity").value = quantity;
            document.getElementById("action").value = "update";
            document.getElementById("cartForm").submit();
        }
    </script>
    
    <form id="cartForm" action="CartController" method="post" style="display: none;">
        <input type="hidden" id="productName" name="productName">
        <input type="hidden" id="productPrice" name="productPrice">
        <input type="hidden" id="quantity" name="quantity" value="1">
        <input type="hidden" id="action" name="action">
    </form>
</body>
</html>
