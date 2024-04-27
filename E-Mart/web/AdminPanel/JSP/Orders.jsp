<%-- 
    Document   : Orders
    Created on : Apr 20, 2024, 9:05:47 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orders</title>
        <link rel="stylesheet" href="/AdminPanel/CSS/Orders.css"/>
        <link rel="stylesheet" href="/AdminPanel/CSS/navbar.css"/>
        <link rel="stylesheet" href="/AdminPanel/CSS/Menu.css"/>
    </head>
    <body>
        <div class="left-section">
            <%@ include file="Menu.html" %>
        </div>
        
        <div class="right-section">
        <div class="navbar">
            <%@ include file="navbar.html" %>
        </div>
        <div class="container">
            <h1>Orders</h1>
            <table>
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer Name</th>
                        <th>Product Name</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                        <th>Status</th>
                        <th>Feedback</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < 10; i++) { %>
                    <tr>
                        <td><%= i + 1 %></td>
                        <td>Customer <%= i + 1 %></td>
                        <td>Product <%= i + 1 %></td>
                        <td><%= i + 1 %></td>
                        <td>$<%= (i + 1) * 10 %>.00</td>
                        <td>Processing</td>
                        <td></td>
                        <td><button class="b1">Edit</button><button class="b2">Delete</button></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
        </div>
    </body>
</html>
