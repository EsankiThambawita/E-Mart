<%-- 
    Document   : Smartwatch
    Created on : Apr 29, 2024, 5:11:39 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Model.DAO"%>
<%@page import="Model.Smartwatch"%>
<%@page import="Controller.AdminEditSmartwatchServlet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
        <link rel="stylesheet" href="/AdminPanel/CSS/Products.css">
        <link rel="stylesheet" href="/AdminPanel/CSS/navbar.css">
        <link rel="stylesheet" href="/AdminPanel/CSS/Menu.css">
        <link rel="stylesheet" href="/AdminPanel/CSS/horizontalMenu.css">
        <link rel="stylesheet" href="/AdminPanel/CSS/editForm.css">
        <link rel="stylesheet" href="/AdminPanel/CSS/AddProductsForm.css">
    </head>
    <body>
        <div class="left-section">
            <%@ include file="Menu.html" %>
        </div>

        <div class="right-section">

            <div class="container">
                <h1>Smartwatches</h1>
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
                            <th>Photo 1</th>
                            <th>Photo 2</th>
                            <th>Photo 3</th>
                            <th>Photo 4</th>
                            <th>Brand</th>
                            <th>Model Name</th>
                            <th>Product Description</th>
                            <th>Screen Size</th>
                            <th>Color</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                        List<Smartwatch> products = DAO.getAllSmartwatches();
                        for (Smartwatch item : products) {
                        %>
                        <tr>
                            <td><%= item.getProductId() %></td>
                            <td><%= item.getProductName() %></td>
                            <td><%= item.getCategory() %></td>
                            <td><%= item.getQuantity() %></td>
                            <td><%= item.getPrice() %></td>
                            <td><%= item.getPhoto1() %></td>
                            <td><%= item.getPhoto2() %></td>
                            <td><%= item.getPhoto3() %></td>
                            <td><%= item.getPhoto4() %></td>
                            <td><%= item.getBrand() %></td>
                            <td><%= item.getModelName() %></td>
                            <td><%= item.getProductDescription() %></td>
                            <td><%= item.getScreenSize() %></td>
                            <td><%= item.getColor() %></td>
                            <td>
                                <button class="button1" onclick="openForm('<%= item.getProductId() %>')">
                                    <img src="/AdminPanel/Images/pen.svg" alt="Edit" style="width: 20px; height: 20px;">
                                </button>
                                <div class="form-popup" id="myForm_<%= item.getProductId() %>">
                                    <form action="/AdminEditSmartwatchServlet" class="form-container" method="post">
                                        <h1>Edit Smartwatch</h1>
                                        <label for="pieces"><b>Quantity</b></label>
                                        <input type="number" placeholder="Enter quantity" name="quantity" value="<%= item.getQuantity() %>" required><br>
                                        <label for="price"><b>Price</b></label>
                                        <input type="number" step="0.01" placeholder="Enter Price" name="price" value="<%= item.getPrice() %>" required><br>
                                        <input type="hidden" name="productId" value="<%= item.getProductId() %>">
                                        <input type="hidden" name="category" value="<%= item.getCategory() %>">
                                        <label for="productName"><b>Product Name</b></label>
                                        <input type="text" placeholder="Enter product name" name="productName" value="<%= item.getProductName() %>" required><br>
                                        <label for="brand"><b>Brand</b></label>
                                        <input type="text" placeholder="Enter brand" name="brand" value="<%= item.getBrand() %>" required><br>
                                        <label for="modelName"><b>Model Name</b></label>
                                        <input type="text" placeholder="Enter model name" name="modelName" value="<%= item.getModelName() %>" required><br>
                                        <label for="productDescription"><b>Product Description</b></label>
                                        <textarea placeholder="Enter product description" name="productDescription" required><%= item.getProductDescription() %></textarea><br>
                                        <label for="screenSize"><b>Screen Size</b></label>
                                        <input type="text" placeholder="Enter screen size" name="screenSize" value="<%= item.getScreenSize() %>" required><br>
                                        <label for="color"><b>Color</b></label>
                                        <input type="text" placeholder="Enter color" name="color" value="<%= item.getColor() %>"><br>
                                        <label for="photo1"><b>Photo 1</b></label>
                                        <input type="text" placeholder="Enter URL for photo 1" name="photo1" value="<%= item.getPhoto1() %>"><br>
                                        <label for="photo2"><b>Photo 2</b></label>
                                        <input type="text" placeholder="Enter URL for photo 2" name="photo2" value="<%= item.getPhoto2() %>"><br>
                                        <label for="photo3"><b>Photo 3</b></label>
                                        <input type="text" placeholder="Enter URL for photo 3" name="photo3" value="<%= item.getPhoto3() %>"><br>
                                        <label for="photo4"><b>Photo 4</b></label>
                                        <input type="text" placeholder="Enter URL for photo 4" name="photo4" value="<%= item.getPhoto4() %>"><br>
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
                        <h2>Add Smartwatch</h2>
                        <form id="addSmartwatchForm" method="POST" action="/AdminAddSmartwatchServlet">
                            <label for="productId">Product ID:</label>
                            <input type="text" id="productId" name="productId" required><br>
                            <label for="productName">Product Name:</label>
                            <input type="text" id="productName" name="productName" required><br>
                            <label for="category">Category:</label>
                            <select id="category" name="category" required>
                                <option value="">Select a category</option>
                                <option value="camera">Camera</option>
                                <option value="smartphone">Smartphone</option>
                                <option value="smartwatch">Smartwatch</option>
                                <option value="laptop">Laptop</option>
                                <option value="monitor">Monitor</option>
                            </select><br>
                            <label for="pieces">Pieces:</label>
                            <input type="number" id="pieces" name="pieces" required><br>
                            <label for="price">Price:</label>
                            <input type="number" id="price" name="price" required><br>
                            <label for="photo1">Photo 1 URL:</label>
                            <input type="text" id="photo1" name="photo1"><br>
                            <label for="photo2">Photo 2 URL:</label>
                            <input type="text" id="photo2" name="photo2"><br>
                            <label for="photo3">Photo 3 URL:</label>
                            <input type="text" id="photo3" name="photo3"><br>
                            <label for="photo4">Photo 4 URL:</label>
                            <input type="text" id="photo4" name="photo4"><br>
                            <label for="brand">Brand:</label>
                            <input type="text" id="brand" name="brand"><br>
                            <label for="modelName">Model Name:</label>
                            <input type="text" id="modelName" name="modelName"><br>
                            <label for="productDescription">Product Description:</label>
                            <textarea id="productDescription" name="productDescription" required></textarea><br>
                            <label for="screenSize">Screen Size:</label>
                            <input type="text" id="screenSize" name="screenSize"><br>
                            <label for="color">Color:</label>
                            <input type="text" id="color" name="color"><br>
                            <button type="submit">Save</button>
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

        <script src="/AdminPanel/JS/deleteSmartwatch.js"></script>

    </body>
</html>