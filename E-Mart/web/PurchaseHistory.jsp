<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 4/19/2024
  Time: 10:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Order History</title>
    <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/OrderHistory.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<%@ include file="Navbar.html" %>
<div class="body-wrapper">
    <div class="container">

        <div class="form-container profile-form" style="border: 2px solid #9696A1; background-color: #1a1a1a;">
            <a href="Profile.jsp" class="return-icon" style="position: absolute; top: 120px; left: 300px;">
                <img src="Images/OrderHistory/ReturnArrow.svg" class="return-icon" style="width: 30px; height: auto;">
            </a>

            <table>
                <caption><h2 class="order-history">Order History</h2></caption>
                <thead>
                <tr>
                    <th>Date</th>
                    <th>Order Number</th>
                    <th>Order Status</th>
                    <th>Items Purchased</th>
                    <th>Quantity</th>
                    <th>Total Price</th>
                </tr>
                </thead>
                <tbody>
                <!-- Iterate over purchase history list and populate table rows -->
                <c:forEach var="order" items="${purchaseHistory}">
                    <tr>
                        <td><c:out value="${order.date}" /></td>
                        <td><c:out value="${order.orderNumber}" /></td>
                        <td><c:out value="${order.orderStatus}" /></td>
                        <td><c:out value="${order.itemsPurchased}" /></td>
                        <td><c:out value="${order.quantity}" /></td>
                        <td><c:out value="${order.totalPrice}" /></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <br><br>

        </div>
    </div>
</div>
<%@ include file="Footer.html" %>
<script src="JS/Common.js"></script>
</body>
</html>



</body>
</html>
