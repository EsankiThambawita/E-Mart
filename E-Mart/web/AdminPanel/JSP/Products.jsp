<%-- 
    Document   : Products
    Created on : Apr 20, 2024, 7:46:23 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Model.DAO"%>
<%@page import="Model.Smartphone"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
        <link rel="stylesheet" href="/AdminPanel/CSS/Products.css"/>
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
                <h1>Products</h1>
                <div class="search-bar">
                    <input type="text" placeholder="Search...">
                    <button type="submit">Search</button>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Pieces</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                  
                    <tbody>
                        <% 
                    List<Smartphone> products = DAO.getAllSmartphones();
                    for (Smartphone item : products) {
                    %>
                    <tr>
                        <td><%= item.getProductId() %></td>
                        <td><%= item.getProductName() %></td>
                        <td><%= item.getCategory() %></td>
                        <td><%= item.getQuantity() %></td>
                        <td>$<%= item.getPrice() %></td>
                        <td>In Stock</td>
                        <td>
                            <button class="button1"><img src="/AdminPanel/Images/pen.svg" alt="Edit" style="width: 20px; height: 20px;"/></button>
                            <button class="button2"><img src="/AdminPanel/Images/delete.svg" alt="Delete" style="width: 20px; height: 20px;"/></button>
                        </td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
                <button class="add-products-btn">Add More Products</button>
                <div class="pagination">
                    <span>Pages:</span>
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <!-- Add more pagination links here -->
                </div>
            </div>
        </div>
    </body>
</html>
