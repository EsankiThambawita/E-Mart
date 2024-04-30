<%@ page import="java.util.List" %>
<%@ page import="Model.Order" %>
<%--
    Document   : OrderHistory
    Created on : Apr 11, 2024, 7:51:51 PM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>PurchaseHistory.Order History</title>
    <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/OrderHistory.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<!--<%@ include file="Navbar.html" %>-->
<div class="body-wrapper">
    <div class="container">

        <div class="form-container profile-form" style="border: 2px solid #9696A1; background-color: #1a1a1a;">
            <a href="Profile.jsp" class="return-icon" style="position: absolute; top: 120px; left: 300px;">
                <img src="Images/OrderHistory/ReturnArrow.svg" class="return-icon" style="width: 30px; height: auto;">
            </a>

            <table>
                <caption><h2 class="order-history">PurchaseHistory.Order History</h2></caption>
                <thead>
                <tr>
                    <th style="color: white;">Date</th>
                    <th style="color: white;">PurchaseHistory.Order Number</th>
                    <th style="color: white;">PurchaseHistory.Order Status</th>
                    <th style="color: white;">Items Purchased</th>
                    <th style="color: white;">Quantity</th>
                    <th style="color: white;">Total Price</th>
                </tr>
                </thead>
                <tbody>
                <% for (Order order : (List<Order>) request.getAttribute("order")){ %>
                <tr>
                    <td><%= order.getOrderDate()%></td>
                    <td><%= order.getOrderID()%></td>
                    <td><%= order.getOrderStatus()%></td>
                    <td><%= order.getName()%></td>
                    <td><%= order.getQuantity()%></td>
                    <td><%= order.getTotalPrice()%></td>

                </tr>

                <%}%>
                </tbody>
            </table><br><br>

        </div>
    </div>
</div>
<!--<%@ include file="Footer.html" %>-->
<script src="JS/Common.js"></script>
</body>
</html>