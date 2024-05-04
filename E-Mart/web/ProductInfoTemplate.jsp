<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.xml.transform.Result" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Samsung Galaxy S22 Ultra</title>
        
        <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="../../CSS/ProductDetailsStyles.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>


    </head>

    <body>
        <%@ include file="Navbar.jsp" %>
        <!-- Retrieve the product Details from the servlet -->

        <%
            String productName = (String) request.getAttribute("productName");
            int price = (int) request.getAttribute("price");
            String brand = (String) request.getAttribute("brand");
            String modelName = (String) request.getAttribute("modelName");
            String storageCapacity = (String) request.getAttribute("storageCapacity");
            double screenSize = (double) request.getAttribute("screenSize");
            String color = (String) request.getAttribute("color");
            String productDescription = (String) request.getAttribute("productDescription");
            String photo1 = (String) request.getAttribute("photo1");
            String photo2 = (String) request.getAttribute("photo2");
            String photo3 = (String) request.getAttribute("photo3");
            String photo4 = (String) request.getAttribute("photo4");
        %>

        <!--Main container to contain the 2 columns-->
    <container class="container">

        <!--Left gallery-->
        <div class="left-column">
            <img src="<%= photo1 %>" class="thumbnail" id="ProductImg">

            <div class="small-img-row">
                <div class="small-img-col">
                    <img src="<%= photo1 %>" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="<%= photo2 %>" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="<%= photo3 %>" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="<%= photo4 %>" width="100%" class="small-img">
                </div>
            </div>


    </div>

    <hr class="vertical-line"/>

    <!--Right product info and stuff-->
    <div class="right-column">
        <h1 class="name"><%= productName %></h1>
        <h3 class="price"><%= price %></h3>

        <!--In stock/out of stock square thingy-->
        <div class="availability">In Stock</div>

        <!--Product details table-->
        <table class="info-table">
            <tr>
                <td>Brand</td>
                <td><%= brand %></td>
            </tr>
            <tr>
                <td>Model Name</td>
                <td><%= modelName %></td>
            </tr>
            <tr>
                <td>Storage Capacity</td>
                <td><%= storageCapacity %></td>
            </tr>
            <tr>
                <td>Screen Size</td>
                <td><%= screenSize %></td>
            </tr>
            <tr>
                <td>Color</td>
                <td><%= color %></td>
            </tr>
        </table>
            <form action="ShoppingServlet" method="post">
                <input type="hidden" name="ID" calue="<%= productID %>">
                <div class="option-buttons">
                    <button type="submit" class="buy-now" name="action" value="buy_now">Buy Now</button>
                    <button type="submit" class="add-to-cart" name="action" value="add_to_cart">Add to Cart</button>
                </div>
            </form>
        </div>

            <div class="favourite">
                <i id="wishlist-icon" class="far fa-star"></i><p>Wishlist</p>
            </div>

            <p class="description"><%= productDescription %>
            </p>
        </div>

    </container>

    <script src="../../JS/ProductDetailsScript.js"></script>

</body>
</html>
