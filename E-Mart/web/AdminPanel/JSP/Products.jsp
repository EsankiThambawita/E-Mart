<%-- 
    Document   : Products
    Created on : Apr 20, 2024, 7:46:23 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
        <link rel="stylesheet" href="/AdminPanel\CSS\Products.css"/>
    </head>
    <body>
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
                    <% for (int i = 0; i < 10; i++) { %>
                    <tr>
                        <td>12345</td>
                        <td>
                            <img src="/AdminPanel/Images/S24.png" alt="Product Image">
                            <span>Samsung Galaxy S24 Ultra</span>
                        </td>
                        <td>Category <%= i + 1 %></td>
                        <td>10</td>
                        <td>100,000</td>
                        <td>In Stock</td>
                        <td>
                            <button class="button1"><img src="/AdminPanel/Images/pen.svg" alt="alt" style="width: 30px; height: 30px;"/></button>
                            <button class="button2"><img src="/AdminPanel/Images/delete.svg" alt="alt" style="width: 30px; height: 30px;"/></button>
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
    </body>
</html>
