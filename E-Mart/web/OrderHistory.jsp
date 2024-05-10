
<%--
    Document   : OrderHistory
    Created on : Apr 11, 2024, 7:51:51 PM
    Author     : User
--%>
<%@ page import="java.util.List" %>
<%@ page import="Model.Order" %>
<%@page import="Model.DAO"%>
<%@page import="Model.AdminOrderObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*" %>

<%
    if (session == null || session.getAttribute("email") == null) {
        response.sendRedirect("SignIn.jsp"); // Redirect to the login page if not logged in
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Purchase History</title>
    <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/OrderHistory.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<%@ include file="Navbar.jsp" %>
<div class="body-wrapper" style="margin-top: 100px; margin-bottom: 200px;">
    <div class="container">

        <div class="form-container profile-form" style="border: 2px solid #9696A1; background-color: #1a1a1a;">
            <a href="Profile.jsp" class="return-icon" style="position: absolute; top: 120px; left: 300px;">
                <img src="Images/OrderHistory/ReturnArrow.svg" class="return-icon" style="width: 30px; height: auto;">
            </a>

            <table>
                <caption><h2 class="order-history">Purchase History</h2></caption>
                <thead>
                <tr>
                    <th style="color: white;">Date</th>
                    <th style="color: white;">Order Number</th>
                    <th style="color: white;">Order Status</th>
                    <th style="color: white;">Items Purchased</th>
                    <th style="color: white;">Quantity</th>
                    <th style="color: white;">Total Price</th>
                </tr>
                </thead>
                <tbody>
                <% 
                    List<AdminOrderObj> orders = DAO.getAdminOrders();
                    for (AdminOrderObj order : orders) {
                %>
                <tr>
                    <td><%= order.getOrderDate()%></td>
                    <td><%= order.getOrderNumber()%></td>
                    <td><%= order.getOrderStatus()%></td>
                    <td><%= order.getProductName()%></td>
                    <td><%= order.getQuantity()%></td>
                    <td><%= order.getTotalPrice()%></td>

                </tr>

                <%}%>
                </tbody>
            </table><br><br>

        </div>
    </div>
</div>
<%@ include file="Footer.html" %>
<script src="JS/Common.js"></script>
</body>
</html>

