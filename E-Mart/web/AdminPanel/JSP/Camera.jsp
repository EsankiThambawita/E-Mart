<%-- 
    Document   : Camera
    Created on : Apr 29, 2024, 5:10:36 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Model.DAO"%>
<%@page import="Model.Smartphone"%>
<%@page import="Controller.AdminEditProductServlet"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Products</title>
    <link rel="stylesheet" href="/AdminPanel/CSS/Products.css">
    <link rel="stylesheet" href="/AdminPanel/CSS/navbar.css">
    <link rel="stylesheet" href="/AdminPanel/CSS/Menu.css">
    <link rel="stylesheet" href="/AdminPanel/CSS/form.css">
    <link rel="stylesheet" href="/AdminPanel/CSS/horizontal-menu.css">
    <link rel="stylesheet" href="/AdminPanel/CSS/AddProducts.css">
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
            <ul class="horizontal-menu">
                <li><a href="/AdminPanel/JSP/Products.jsp">Smartphones</a></li>
                <li><a href="/AdminPanel/JSP/Laptop.jsp">Laptops</a></li>
                <li><a href="/AdminPanel/JSP/Camera.jsp">Cameras</a></li>
                <li><a href="/AdminPanel/JSP/Monitor.jsp">Monitors</a></li>
                <li><a href="/AdminPanel/JSP/Smartwatch.jsp">Smartwatches</a></li>
            </ul>

            <table id="product-table">
                <thead>
                    <tr>
                        <th>Product ID</th>
                        <th>Product Name</th>
                        <th>Category</th>
                        <th>Pieces</th>
                        <th>Price</th>
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
                        <td><%= item.getPrice() %></td>
                        <td>
                            <button class="button1" onclick="openForm('<%= item.getProductId() %>')">
                                <img src="/AdminPanel/Images/pen.svg" alt="Edit" style="width: 20px; height: 20px;">
                            </button>
                            <div class="form-popup" id="myForm_<%= item.getProductId() %>">
                                <form action="/AdminEditProductServlet" class="form-container" method="post">
                                    <h1>Edit Product</h1>
                                    <label for="pieces"><b>Quantity</b></label>
                                    <input type="number" placeholder="Enter quantity" name="quantity" required><br>
                                    <label for="price"><b>Price</b></label>
                                    <input type="number" step="0.01" placeholder="Enter Price" name="price" required><br>
                                    <input type="hidden" name="productId" value="<%= item.getProductId() %>">
                                    <input type="hidden" name="category" value="<%= item.getCategory() %>">
                                    <button type="submit" class="btn">Save Changes</button>
                                    <button type="button" class="btn cancel" onclick="closeForm('<%= item.getProductId() %>')">Close</button>
                                </form>
                            </div>
                            <button class="button2" onclick="deleteProduct('<%= item.getProductId() %>')">
                                <img src="/AdminPanel/Images/delete.svg" alt="Delete" style="width: 20px; height: 20px;">
                            </button>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>

            <button class="add-products-btn" onclick="opentheForm()">Add More Products</button>
            <div id="addProductModal" class="modal" style="display: none;">
                <div class="modal-content">
                    <span class="close" onclick="closetheForm()">&times;</span>
                    <h2>Add Product</h2>
                    <form id="addProductForm" method="POST" action="/AdminAddProductServlet">
                        <label for="productId">Product ID:</label>
                        <input type="text" id="productId" name="productId" required><br>
                        <label for="productName">Product Name:</label>
                        <input type="text" id="productName" name="productName" required><br>
                        <label for="category">Category:</label>
                        <input type="text" id="category" name="category" required><br>
                        <label for="pieces">Pieces:</label>
                        <input type="number" id="pieces" name="pieces" required><br>
                        <label for="price">Price:</label>
                        <input type="number" id="price" name="price" required><br>
                        <button type="submit" onclick="saveProduct()">Save</button>

                    </form>
                </div>
            </div>

            <!--<div class="pagination">
                <span>Pages:</span>
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a> 
            </div>-->
        </div>
    </div>

    <script>
        function openForm(productId) {
            var formId = "myForm_" + productId;
            document.getElementById(formId).style.display = "block";
        }

        function closeForm(productId) {
            var formId = "myForm_" + productId;
            document.getElementById(formId).style.display = "none";
        }

        function opentheForm() {
            document.getElementById("addProductModal").style.display = "block";
        }

        function closetheForm() {
            document.getElementById("addProductModal").style.display = "none";
        }
    </script>

    <script src="/AdminPanel/JS/delete.js"></script>
    
</body>
</html>
