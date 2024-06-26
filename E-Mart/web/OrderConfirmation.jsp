<%-- 
    Document   : OrderConfirmation
    Created on : Apr 11, 2024, 4:43:46 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="Model.DAO"%>
<%@page import="Model.ShoppingCartObj"%>
<%@page import="Controller.OrderConfirmationServlet"%>
<%@page import="Model.AdminOrderObj"%>


<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.DataOutputStream" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.net.URL" %>

<% String recentEmail = ""; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Confirmation</title>
        <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/OrderConfirmation.css" rel="stylesheet" type="text/css"/>
        <script src="JS/Feedback-Rating.js" defer></script>
    </head>
    <body>
        <input type="hidden" id="emailSent" value="<%= request.getAttribute("emailSent") %>">

        <%@ include file="Navbar.jsp" %>
        <div class="container">

            <div class="confirmation">
                <h1>Thank you for your order!</h1>
                <div class="order-summary">
                    <h2>Order Summary</h2>
                    <div class="line"></div>
                    <% 
                        String email = (String) session.getAttribute("email");
                        List<ShoppingCartObj> confirmItems = DAO.getAllCartItems(email); 
                        if(confirmItems != null) {
                            int itemCount = 1; // Counter variable for item count
                            for(ShoppingCartObj item : confirmItems) {
                    %>
                    <div class="item">
                        <span class="number"><%= itemCount++ %>)</span>
                        <span class="name"><%= item.getProductName() %></span>
                        <span class="amount"><%= item.getQuantity() %> items</span>
                        <span class="price">LKR <%= item.getProductPrice() * item.getQuantity() %></span>
                    </div>
                    <% 
                        }
                    }
                    %>
                    <!--                    <div class="item">
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
                                        </div>-->


                    <div class="line"></div>

                    <div class="button-container">
                        <button class="button button1" onclick="window.location.href = 'OrderHistory.jsp';">Order History</button>
                        <button class="button button2" onclick="window.location.href = 'ProductCategory_Phones.jsp';">Continue Shopping</button>
                        <span class="text1">Total -</span>
                        <% 
                                    int total = 0;
                                    for (ShoppingCartObj item : confirmItems) {
                                        total += item.getTotalPrice();
                                    }
                        %>
                        <span class="text2">LKR <%= total %></span>
                    </div>


                </div>
            </div>


            <div class="feedback">
                <h3>How was your shopping experience?</h3>

                <!-- Star rating section -->
                <div class="stars">
                    <fieldset class="rating">
                        <input type="radio" id="star5" name="rating" value="5"/><label for="star5" class="full" title="Awesome"></label>
                        <input type="radio" id="star4" name="rating" value="4"/><label for="star4" class="full"></label>
                        <input type="radio" id="star3" name="rating" value="3"/><label for="star3" class="full"></label>
                        <input type="radio" id="star2" name="rating" value="2"/><label for="star2" class="full"></label>
                        <input type="radio" id="star1" name="rating" value="1"/><label for="star1" class="full"></label>
                    </fieldset>
                </div>
                <!-- Submit button -->
                <div>
                    <%
                        List<AdminOrderObj> orders = DAO.getAdminOrders();
                        int lastOrderId = 0; // Initialize with 0 or any other default value
                        int lastIndex = orders.size() - 1;
                        if (lastIndex >= 0) {
                            // Get the orderId of the last order
                            lastOrderId = orders.get(lastIndex).getOrderNumber();
                            recentEmail = orders.get(lastIndex).getEmail();
                        }
                    %>

                    <button type="button" class="submit-feedback" onclick="submitFeedback()" data-orderid="<%= lastOrderId %>">
                        Submit Feedback
                    </button>

                </div>

            </div>


        </div>

        <%
        String apiKey = "mlsn.1e09da5329b79f474aff9bc3ccb8ddc06df779561f248f8fc202c9764dea4a33";
        String senderEmail = "MS_1iz77E@trial-k68zxl2enw9lj905.mlsender.net";
        String recipientEmail = recentEmail;

        String url = "https://api.mailersend.com/v1/email";
        String payload = "{\n" +
        "    \"from\": {\n" +
        "        \"email\": \"" + senderEmail + "\"\n" +
        "    },\n" +
        "    \"to\": [\n" +
        "        {\n" +
        "            \"email\": \"" + recipientEmail + "\"\n" +
        "        }\n" +
        "    ],\n" +
        "    \"subject\": \"Thank You for Your Purchase!\",\n" +
        "    \"html\": \"Dear Customer,<br>Thank you for choosing E-mart! We appreciate your support and hope you enjoy your recent purchase. If you have any questions, feel free to reach out to us.<br>Best regards,<br>E-mart.\"\n" +
        "}";

        try {
        URL obj = new URL(url);
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();

        con.setRequestMethod("POST");
        con.setRequestProperty("Content-Type", "application/json");
        con.setRequestProperty("X-Requested-With", "XMLHttpRequest");
        con.setRequestProperty("Authorization", "Bearer " + apiKey);

        con.setDoOutput(true);
        DataOutputStream wr = new DataOutputStream(con.getOutputStream());
        wr.writeBytes(payload);
        wr.flush();
        wr.close();

        int responseCode = con.getResponseCode();
        System.out.println("Response Code : " + responseCode);

        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        String inputLine;
        StringBuilder MailResponse = new StringBuilder();

        while ((inputLine = in.readLine()) != null) {
        MailResponse.append(inputLine);
        }
        in.close();
        } catch (Exception e) { %>

        <code><%= e.toString() %></code>

        <% } %>





        <%@ include file="Footer.html" %>
        <script src="JS/Common.js"></script>
        <script src="JS/Email.js"></script>
        <script src="JS/Feedback-Rating.js"></script>
    </body>
</html>
