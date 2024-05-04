<%-- 
    Document   : TrackOrder
    Created on : Apr 11, 2024, 7:52:16?PM
    Author     : User
--%>

<!-- <%-- Document : TrackOrder Created on : Apr 11, 2024, 7:52:16?PM Author : User --%> -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Controller.TrackOrderServlet" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.ShoppingCartObj" %>
<%@page import="Model.DAO"%>
<%@page import="Model.AdminOrderObj"%>


<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1, width=device-width" />

        <link rel="stylesheet" href="CSS/Common.css">
        <link rel="stylesheet" href="CSS/Navbar.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <link href="CSS\TrackOrder.css" rel="stylesheet" />

    </head>

    <body>
        <%@ include file="Navbar.jsp" %>
        <!-- Start Body Wrapper -->
        <div class="body-wrapper">

            <div class="headingTitle">
                <a href="Profile.jsp" style="display: inline-block;">
                    <img class="returnButton" src="Images/TrackOrder/returnButton.png" alt="Return" style="cursor: pointer;">
                </a>

                <h1 class="section-title">
                    Track your order
                </h1>
            </div>
            <% 
    List<AdminOrderObj> orders = DAO.getAdminOrders();
    for (AdminOrderObj order : orders) {
            %>
            <div class="order-tracking-card">
                <div class="order-details-row">
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Order Number</h2>
                        <p class="order-detail-col-content"> <%= order.getOrderNumber() %> </p>
                    </div>
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Item purchased </h2>
                        <%= order.getProductName() %>
                        <div class="order-detail-col-content">

                        </div>
                    </div>
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Quantity </h2>
                        <p class="order-detail-col-content"><%= order.getQuantity() %> </p>
                    </div>

                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Actions</h2>
                        <a href="MyReturns.jsp" class="button-white">Return</a>
                        <a href="" class="button-acrylic">Cancel Order</a>
                    </div>
                </div>
                <div class="order-tracking-row">
                    <div class="tracking-header-row">
                        <h2 class="order-detail-col-title title">Order Status</h2>
                    </div>

                    <div class="progress-visual">
                        <div class="tracking-progress">
                            <div class="progress-bar">
                                <div class="progress-bar-progress" id="progressBar_<%= order.getOrderNumber() %>"></div>
                            </div>
                        </div>
                        <div class="tracking-milestones">
                            <input type="hidden" name="orderStatus" id="orderStatus_<%= order.getOrderNumber() %>" value="<%= order.getOrderStatus() %>">
                            <div class="tracking-mile">
                                <img class="tracking-mile-icon inactive" id="processingIcon_<%= order.getOrderNumber() %>" src="Images/TrackOrder/OrderProcessingIcon.png" alt="Processing">
                                <p class="tracking-mile-des">Order Processing</p>
                            </div>
                            <div class="tracking-mile">
                                <img class="tracking-mile-icon inactive" id="deliveryIcon_<%= order.getOrderNumber() %>" src="Images/TrackOrder/OutForDeliveryIcon.png" alt="Delivery">
                                <p class="tracking-mile-des">Out For Delivery</p>
                            </div>
                            <div class="tracking-mile">
                                <img class="tracking-mile-icon inactive" id="deliveredIcon_<%= order.getOrderNumber() %>" src="Images/TrackOrder/DeliveredIcon.png" alt="Delivered">
                                <p class="tracking-mile-des">Delivered</p>
                            </div>

                            <script>
                                document.addEventListener("DOMContentLoaded", function () {
                                    // Get the order status from the hidden input field
                                    var orderStatus = document.getElementById("orderStatus_<%= order.getOrderNumber() %>").value;

                                    // Update the class of the tracking-mile-icon elements based on the order status
                                    switch (orderStatus.toLowerCase()) {
                                        case "processing":
                                            document.getElementById("processingIcon_<%= order.getOrderNumber() %>").classList.remove("inactive");
                                            document.getElementById("processingIcon_<%= order.getOrderNumber() %>").classList.add("active");
                                            updateProgressBar(<%= order.getOrderNumber() %>, 20); // Set progress to 20%
                                            break;
                                        case "outfordelivery":
                                            document.getElementById("deliveryIcon_<%= order.getOrderNumber() %>").classList.remove("inactive");
                                            document.getElementById("deliveryIcon_<%= order.getOrderNumber() %>").classList.add("active");
                                            updateProgressBar(<%= order.getOrderNumber() %>, 51); // Set progress to 51%
                                            break;
                                        case "delivered":
                                            document.getElementById("deliveredIcon_<%= order.getOrderNumber() %>").classList.remove("inactive");
                                            document.getElementById("deliveredIcon_<%= order.getOrderNumber() %>").classList.add("active");
                                            updateProgressBar(<%= order.getOrderNumber() %>, 100); // Set progress to 100%
                                            break;
                                        default:
                                            break;
                                    }
                                });

                                // Function to update the width of the progress bar
                                function updateProgressBar(orderNumber, progress) {
                                    var progressBar = document.getElementById("progressBar_" + orderNumber);
                                    if (progressBar) {
                                        progressBar.style.width = progress + "%";
                                    }
                                }
                            </script>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>




        <%@ include file="Footer.html" %>
        <script src="JS/Common.js"></script>
    </body>
</html>