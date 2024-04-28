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
        <link rel="stylesheet" href="/AdminPanel/CSS/dropdown.css"/>
         <link rel="stylesheet" href="/AdminPanel/CSS/form.css"/>
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
                <div class="dropdown">
                  <button class="dropbtn">Product Categories</button>
                  <div class="dropdown-content">
                    <a href="#" onclick="showProducts('Smartphones')">Smartphones</a>
                    <a href="#" onclick="showProducts('Laptops')">Laptops</a>
                    <a href="#" onclick="showProducts('Cameras')">Cameras</a>
                    <a href="#" onclick="showProducts('Monitors')">Monitors</a>
                    <a href="#" onclick="showProducts('Smartwatches')">Smartwatches</a>
                  </div>
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
                        <% DAO.getAllSmartphones();
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
                            <button class="button1" onclick="openForm()">
                                <img src="/AdminPanel/Images/pen.svg" alt="Edit" style="width: 20px; height: 20px;"/>
                            </button>
                                
                                <!-- The form -->
                                <div class="form-popup" id="myForm">
                                    <form action="/Controller/AdminEditProductServlet" class="form-container" method="post">
                                        <h1>Edit Product</h1>

                                        <label for="pieces"><b>Pieces</b></label>
                                        <input type="number" placeholder="Enter Pieces" name="pieces" required><br>

                                        <label for="price"><b>Price</b></label>
                                        <input type="number" step="0.01" placeholder="Enter Price" name="price" required><br>

                                        <label for="status"><b>Status</b></label>
                                        <input type="text" placeholder="Enter Status" name="status" required><br>

                                        <!-- Hidden input field to store the product ID -->
                                        <input type="hidden" name="productId" id="productId">

                                        <button type="submit" class="btn">Save Changes</button>
                                        <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
                                    </form>
                                </div>
                                
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
        <script src="/AdminPanel/JS/form.js"></script>
    </body>
</html>
