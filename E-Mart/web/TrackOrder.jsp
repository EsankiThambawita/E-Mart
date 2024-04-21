<%-- 
    Document   : TrackOrder
    Created on : Apr 11, 2024, 7:52:16?PM
    Author     : User
--%>

<!-- <%-- Document : TrackOrder Created on : Apr 11, 2024, 7:52:16?PM Author : User --%> -->

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1, width=device-width" />

        <link rel="stylesheet" href="CSS/Common.css">
        <link rel="stylesheet" href="CSS/Navbar.css">
        <link rel="stylesheet" href="CSS/Footer.css">
        <link href="CSS/TrackOrder.css" rel="stylesheet" />
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
            <div class="order-tracking-card">
                <div class="order-details-row">
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Order Number</h2>
                        <p class="order-detail-col-content">#2346</p>
                    </div>
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Order Number</h2>
                        <div class="order-detail-col-content">
                            <img src="assets/img/product_images/iPhone14.png" alt="" class="order-item-image">
                            <span class="order-item-name">Apple iPhone 14 Pro</span>
                        </div>
                    </div>
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Order Number</h2>
                        <p class="order-detail-col-content">#2346</p>
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
                                <img class="tracking-mile-icon active" src="Images/TrackOrder/OrderProcessingIcon.png" alt="Processing">
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

            <div class="order-tracking-card">
                <div class="order-details-row">
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Order Number</h2>
                        <p class="order-detail-col-content">#2346</p>
                    </div>
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Order Number</h2>
                        <div class="order-detail-col-content">
                            <img src="assets/img/product_images/iPhone14.png" alt="" class="order-item-image">
                            <span class="order-item-name">Apple iPhone 14 Pro</span>
                        </div>
                    </div>
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Order Number</h2>
                        <p class="order-detail-col-content">#2346</p>
                    </div>
                    <div class="order-details-col">
                        <h2 class="order-detail-col-title">Order Number</h2>
                        <a href="MyReturns.jsp" class="button-white">Return</a>
                        <button id="cancelButton" onclick="confirmCancellation()">Cancel Order</button>

<script>
function confirmCancellation() {
    // Display confirmation popup
    var confirmed = confirm("Are you sure you want to cancel the order?");
    
    // If user confirms, proceed with canceling the order
    if (confirmed) {
        // Redirect to cancel order servlet or perform cancelation logic here
        window.location.href = "CancelOrderServlet";
    }
}
</script>

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
                                <img class="tracking-mile-icon active" src="Images/TrackOrder/OrderProcessingIcon.png" alt="Processing">
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
        </div>
        <%@ include file="Footer.html" %>
        <script src="JS/Common.js"></script>
    </body>

</html>