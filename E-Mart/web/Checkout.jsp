<%-- 
    Document   : Checkout
    Created on : Apr 12, 2024, 10:05:16?AM
    Author     : hp
--%>

<%@page import="java.util.Map" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.Map.Entry" %>
<%@page import="java.util.List"%>
<%@page import="Model.DAO"%>
<%@page import="Model.ShoppingCartObj"%>
<%@page import="java.time.LocalDate" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Checkout</title>
        <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="CSS/Checkout.css"/>
        <!-- Add Font Awesome CDN -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    </head>
    <body style="background-color: #000000; color: #ffffff;">
        <%@ include file="Navbar.jsp" %>
        <div class="container">
            <h2><i class="fas fa-shopping-cart"></i> Checkout</h2>
            <h3>Cart <i class="fas fa-shopping-cart"></i></h3>
            <form action="CheckoutServlet" method="post">
            <table>
                <tr>
                    <th>Product</th>
                    <th>Price</th>
                </tr>
                <% 
                    String email = (String) session.getAttribute("email");
                    List<ShoppingCartObj> cartItems = DAO.getAllCartItems(email);
                    for (ShoppingCartObj item : cartItems) {
                %>
                <input type="hidden" name="orderDate" value="<%= LocalDate.now() %>"> 
                <tr>
                    <td>
                        <%= item.getProductName() %>
                    </td>
                    <td><%= item.getProductPrice() %></td>
                </tr>
                <% } %>
                <tr>
                    <% 
                            int quantity = 0;
                            int total = 0;
                            for (ShoppingCartObj item : cartItems) {
                            total += item.getTotalPrice();
                            quantity += item.getQuantity();
                        }
                    %>
                    <td><b>Total:</b></td>
                    <td>
                        <input type="hidden" name="totalPrice" value="<%= total %>"> 
                        <input type="hidden" name="quantity" value="<%= quantity %>"> 
                        <b>$<%= total %></b>
                    </td>
                </tr>
            </table>

            <h3>Billing Details <i class="fas fa-user"></i></h3>
          
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
                <input type="hidden" name="action" value="checkout"> <!-- Hidden field for action -->
                <h3>Payment Method <i class="fas fa-credit-card"></i></h3>
                <div class="form-group">
                    <label for="cashOnDelivery">Cash on Delivery</label>
                    <input type="radio" id="cashOnDelivery" name="paymentMethod" value="cod" checked>
                </div>

                <input type="submit" value="Submit Payment" class="btn btn-darkblue">
            </form>
        </div>




        <%@ include file="Footer.html" %>
        <script src="JS/Common.js"></script>
    </body>
</html>
