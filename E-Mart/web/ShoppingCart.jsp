<%-- 
    Document   : ShoppingCart
    Created on : Mar 31, 2024, 9:27:57 PM
    Author     : robin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Model.DAO"%>
<%@page import="Model.ShoppingCartObj"%>
<%@ page import="javax.servlet.http.*" %>

<%
    if (session == null || session.getAttribute("email") == null) {
        response.sendRedirect("SignIn.jsp"); // Redirect to the login page if not logged in
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shopping Cart</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/ShoppingCart.css" rel="stylesheet" type="text/css">
        <script src="https://kit.fontawesome.com/7942e54de0.js" crossorigin="anonymous"></script>
    </head>


    <body>
        <%@ include file="Navbar.jsp" %>
        <div class="wrapper-center d-flex mt-5 pt-5 mb-5">
            <h1 class="title">Thank you for your purchase</h1>

            <div class="card bg-dark order-card">
                <div class="card-body text-white">
                    <h3 class="card-title">Order Summary</h3>
                    <hr>
                    <div class="container text-center" id="orderItemsList">
                        <%
                            // Retrieve email from session attribute
                            String email = (String) session.getAttribute("email");

                            // Check if email is not null
                            if (email != null) {
                                // Retrieve cart items from DAO using email
                                List<ShoppingCartObj> cartItems = DAO.getAllCartItems(email);

                                // Check if cartItems is not null
                                if (cartItems != null) {
                                    // Iterate over cartItems and display each item
                                    for (ShoppingCartObj item : cartItems) {
                        %>
                        <div class="row">
                            <div class="col-md-auto item-icon">
                                <img alt="<%= item.getIconPath() %>" src=<%= item.getIconPath() %> />
                            </div>
                            <div class="col text-start">
                                <div class="phoneDetails">
                                    <span class="model"><%= item.getProductName() %></span>
                                    <span class="varient"><%= item.getDescription() %></span>
                                </div>
                            </div>
                            <div class="col col-lg-2 qty-group">
                                <!--                                <div class="qty">
                                                                    <i class="fa-solid fa-minus button-qty bg-gray qty-remove"></i>
                                                                </div>-->
                                <span class="qtyAmount"><%= item.getQuantity() %></span>
                                <!--                        //         <div class="qty">
                                                                    <i class="fa-solid fa-add button-qty bg-accent qty-add"></i>
                                                                </div>-->
                            </div>
                            <div class="col col-lg-2">
                                LKR <%= item.getProductPrice() %>
                            </div>
                            <form action="/DeleteShoppingItem" method="post" class="col col-lg-2 qty-group">
                                <input type="hidden" name="recordId" value="<%= item.getRecordId() %>">
                                <button type="submit"><img src="/AdminPanel/Images/delete.svg" alt="Delete" style="width: 20px; height: 20px; display: flex; flex-direction: row;"></button>
                            </form>
                        </div>
                        <% 
                                    } 
                                } 
                            } 
                        %>
                    </div>

                    <hr>

                    <div class="container">
                        <div class="row">
                            <div class="col order-btns">
                                <form action="ClearCart" method = "POST">
                                    <button type="submit" class="btn btn-outline-secondary text-white order-btn" onclick="return confirmClear()">Clear Cart</button>
                                </form>
                                <button type="button" class="btn primary-btn order-btn"  onclick="window.location.href = 'Checkout.jsp';">Checkout</button>
                            </div>
                            <div class="col text-end order-total">
                                <span>Total - </span>
                                <% 
                                    int total = 0;
                                    String temail = (String) session.getAttribute("email");
                                    if (email != null) {
                                        List<ShoppingCartObj> cartItems = DAO.getAllCartItems(temail);
                                        if (cartItems != null) {
                                            for (ShoppingCartObj item : cartItems) {
                                                total += item.getTotalPrice();
                                            }
                                        }
                                    }
                                %>
                                <span>LKR <%= total %></span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <%@ include file="Footer.html" %>
        <script>
            function confirmClear() {
                var confirmed = confirm("Are you sure you want to clear the cart?");
                if (confirmed) {
                    return true; // Proceed with form submission
                } else {
                    return false; // Cancel form submission
                }
            }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="JS/Common.js"></script>
    </body>
</html>