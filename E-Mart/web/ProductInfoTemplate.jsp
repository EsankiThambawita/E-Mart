<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.xml.transform.Result" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Samsung Galaxy S22 Ultra</title>

    <link rel="stylesheet" type="text/css" href="../../CSS/ProductDetailsStyles.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>


</head>

<body>
<!-- Retrieve the product Details from the servlet -->
<%
    try{
        ResultSet productRS = (ResultSet) request.getAttribute("productResultSet");
        while (productRS.next()) {
    %>
<!--Main container to contain the 2 columns-->
<container class="container">

    <!--Left gallery-->
    <div class="left-column">
        <img src="<%= productRS.getString("photo1") %>" class="thumbnail" id="ProductImg">

        <div class="small-img-row">
            <div class="small-img-col">
                <img src="<%= productRS.getString("photo2") %>" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="<%= productRS.getString("photo3") %>" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="<%= productRS.getString("photo4") %>" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="<%= productRS.getString("photo5") %>" width="100%" class="small-img">
            </div>
        </div>

    </div>

    <hr class="vertical-line"/>

    <!--Right product info and stuff-->
    <div class="right-column">
        <h1 class="name"><%= productRS.getString("productName") %></h1>
        <h3 class="price"><%= productRS.getInt("price") %></h3>

        <!--In stock/out of stock square thingy-->
        <div class="availability">In Stock</div>

        <!--Product details table-->
        <table class="info-table">
            <tr>
                <td>Brand</td>
                <td><%= productRS.getString("brand") %></td>
            </tr>
            <tr>
                <td>Model Name</td>
                <td><%= productRS.getString("modelName") %></td>
            </tr>
            <tr>
                <td>Storage Capacity</td>
                <td><%= productRS.getString("storageCapacity") %></td>
            </tr>
            <tr>
                <td>Screen Size</td>
                <td><%= productRS.getDouble("screenSize") %></td>
            </tr>
            <tr>
                <td>Color</td>
                <td><td><%= productRS.getString("color") %></td></td>
            </tr>
        </table>
        <div class="option-buttons">
            <button class="buy-now">Buy Now</button>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="favourite">
            <i id="wishlist-icon" class="far fa-star"></i><p>Wishlist</p>
        </div>

        <p class="description"><%= productRS.getString("productDescription") %>
        </p>
    </div>

</container>
<%
}
    productRS.close(); //close the resultset
    }catch(SQLException e){
        e.printStackTrace();
}

%>

<script src="../../JS/ProductDetailsScript.js"></script>

</body>
</html>
