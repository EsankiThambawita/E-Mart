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

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1, width=device-width" />

        <link rel="stylesheet" href="CSS/Common.css">
        <link rel="stylesheet" href="CSS/Navbar.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <link href="CSS\TrackOrder.css" rel="stylesheet" />
        <script>
            function validation() {
                var username = document.getElementById("username").value;


                if (!username || !email || !password || !confirmPassword || !contactNumber) {
                    alert("All fields must be filled out.");
                    return false;
                }

                if (password.length < 8) {
                    alert("Password must be at least 8 characters long.");
                    return false;
                }

                if (password !== confirmPassword) {
                    alert("Passwords do not match.");
                    return false;
                }

                if (!/^\d{10}$/.test(contactNumber)) {
                    alert("Contact number must be a 10-digit number.");
                    return false;
                }

                return true;
            }

        </script>
    </head>

    <body>
        <%@ include file="Navbar.html" %>
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
           // Get the cart items from the stored place
           List<ShoppingCartObj> cartItems = (List<ShoppingCartObj>) session.getAttribute("cartItems"); // session

           int totalQuantity = 0;

           // Check if cartItems is not null before iterating over it
           if (cartItems != null) {
               // Iterate over cart items and sum up their quantities
               for (ShoppingCartObj item : cartItems) {
                   totalQuantity += item.getQuantity();
               }
           }
            %>
            <div class="order-tracking-card">
                <div class="order-details-row">
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Order Number</h2>
                        <p class="order-detail-col-content"> <%= request.getAttribute("orderNumber") %> </p>
                    </div>
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Item purchased </h2>  <!-- here -->
                        <div class="order-detail-col-content">
                            <% List<String> selectedItems = (List<String>) request.getAttribute("selectedItems");
                            if (selectedItems != null && !selectedItems.isEmpty()) {
                                for (String item : selectedItems) { %>
                            <p><%= item %></p>
                            <% }
                       } %>
                        </div>
                    </div>
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Quantity </h2><!-- here -->
                        <p class="order-detail-col-content"> <%= totalQuantity %> </p><!-- here -->
                    </div>
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Order Number</h2>
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
                                <div class="progress-bar-progress"></div>
                            </div>
                        </div>
                        <div class="tracking-milestones">
                            <div class="tracking-mile">
                                <img class="tracking-mile-icon inactive" src="Images/TrackOrder/OrderProcessingIcon.png" alt="Processing">
                                <p class="tracking-mile-des">Order Processing</p>
                            </div>
                            <div class="tracking-mile">
                                <img class="tracking-mile-icon inactive" src="Images/TrackOrder/OutForDeliveryIcon.png" alt="Delivery">
                                <p class="tracking-mile-des">Out For Delivery</p>
                            </div>
                            <div class="tracking-mile">
                                <img class="tracking-mile-icon inactive" src="Images/TrackOrder/DeliveredIcon.png" alt="Delivered">
                                <p class="tracking-mile-des">Delivered</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <script>
                function confirmCancellation() {
                    // Display confirmation popup
                    var confirmed = confirm("Are you sure you want to cancel the order?");

                    // If user confirms, proceed with canceling the orderdiliverd sataus

                    if (confirmed) {
                        // Redirect to cancel order servlet or perform cancelation logic here
                        window.location.href = "CancelOrderServlet";
                    }
                }
            </script>       
            <script>
                // Get the order status from the servlet attribute
                var orderStatus = '<%= request.getAttribute("orderStatus") %>';

                // Update the border color and status text based on the order status
                var orderStatusIcon = document.getElementById("orderStatusIcon");
                var orderStatusText = document.getElementById("orderStatusText");

                switch (orderStatus) {
                    case "Processing":
                        orderStatusIcon.classList.add("active");
                        orderStatusText.innerText = "Order Processing";
                        // Update progress bar
                        var progressBar = document.querySelector(".progress-bar-progress");
                        progressBar.style.width = "20%";
                        break;
                    case "OutForDelivery":
                        orderStatusIcon.classList.remove("active");
                        orderStatusIcon.classList.add("inactive");
                        orderStatusIcon.style.borderColor = "#3B7BF8"; // Change to the desired color
                        orderStatusText.innerText = "Out For Delivery";
                        // Update progress bar
                        var progressBar = document.querySelector(".progress-bar-progress");
                        progressBar.style.width = "51%";
                        break;
                    case "Delivered":
                        orderStatusIcon.classList.remove("active");
                        orderStatusIcon.classList.add("inactive");
                        orderStatusIcon.style.borderColor = "#3B7BF8"; // Change to the desired color
                        orderStatusText.innerText = "Delivered";
                        // Update progress bar
                        var progressBar = document.querySelector(".progress-bar-progress");
                        progressBar.style.width = "100%";
                        break;
                    default:
                        break;
                }
            </script>
            <%@ include file="Footer.html" %>
            <script src="JS/Common.js"></script>
    </body>
</html>