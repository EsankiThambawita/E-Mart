<%-- 
    Document   : Orders
    Created on : Apr 20, 2024, 9:05:47 PM
    Author     : Esanki Lakvindee
--%>
<%@page import="java.util.List"%>
<%@page import="Model.DAO"%>
<%@page import="Model.AdminOrderObj"%>
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
                            <th>Date</th>
                            <th>Order ID</th>
                            <th>Customer Name</th>
                            <th>Products</th>
                            <th>Quantity</th>
                            <th>Total Price</th>
                            <th>Feedback</th>
                            <th>Status</th>
                            <th>Change Order Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            List<AdminOrderObj> orders = DAO.getAdminOrders();
                            for (AdminOrderObj order : orders) {
                        %>
                        <tr>
                            <td>1/23/2024</td>
                            <td><%= order.getOrderDate() %></td>
                            <td><%= order.getCustomerName() %></td>
                            <td><%= 1 %></td>
                            <td><%=  1 %></td>
                            <td>$<%= 1  %></td>
                            <td>4 star</td>
                            <td>Processing</td>
                            <td><button>Processing</button>
                                <button>Delivering</button>
                                <button>Delivered</button>
                            </td>
                            <td><button>Delete</button></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
