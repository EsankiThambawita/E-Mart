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
            String category = (String) request.getAttribute("category");
            if(category.equals("smartphone")) {
            
            String productName = (String) request.getAttribute("productName");
            int productID = (int) request.getAttribute("productID");
            int price = (int) request.getAttribute("price");
            String brand = (String) request.getAttribute("brand");
            String modelName = (String) request.getAttribute("modelName");
            String storageCapacity = (String) request.getAttribute("storageCapacity");
            String screenSize = (String) request.getAttribute("screenSize");
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
            <form action="ShoppingServlet" method="get">
                <input type="hidden" id="productID" name="ID" value="<%= productID %>">   
                <input type="hidden" id="productName" name="productName" value="<%= productName %>"> 
                <input type="hidden" id="productPrice" name="productPrice" value="<%= price %>">
                <input type="hidden" id="quantity" name="quantity" value=1>
                <input type="hidden" id="description" name="description" value="<%= productDescription %>">
                <input type="hidden" name="category" value="<%= category %>">
                <input type="hidden" name="iconPath" value="<%= photo1 %>">
                <div class="option-buttons">
                    <button class="buy-now" name="action" value="buy" onclick="document.getElementById('buttonForm_<%= productID %>').action = 'ShoppingServlet';">Buy Now</button>
                    <button class="add-to-cart" name="action" value="cart" onclick="document.getElementById('buttonForm_<%= productID %>').action = 'ShoppingServlet';">Add to Cart</button>
                </div>
            </form>

            <div class="favourite">
                <i id="wishlist-icon" class="far fa-star"></i><p>Wishlist</p>
            </div>

            <p class="description"><%= productDescription %>
            </p>

        </div>            
    </container>
    <%}
            else if(category.equals("smartwatch")) {
            String productName = (String) request.getAttribute("productName");
            int productID = (int) request.getAttribute("productID");
            int price = (int) request.getAttribute("price");
            String brand = (String) request.getAttribute("brand");
            String modelName = (String) request.getAttribute("modelName");
            String screenSize = (String) request.getAttribute("screenSize");
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
                    <td>Screen Size</td>
                    <td><%= screenSize %></td>
                </tr>
                <tr>
                    <td>Color</td>
                    <td><%= color %></td>
                </tr>
            </table>
            <form action="ShoppingServlet" method="get">
                <input type="hidden" id="productID" name="ID" value="<%= productID %>">   
                <input type="hidden" id="productName" name="productName" value="<%= productName %>"> 
                <input type="hidden" id="productPrice" name="productPrice" value="<%= price %>">
                <input type="hidden" id="quantity" name="quantity" value=1>
                <input type="hidden" id="description" name="description" value="<%= productDescription %>">
                <input type="hidden" name="category" value="<%= category %>">
                <input type="hidden" name="iconPath" value="<%= photo1 %>">
                <div class="option-buttons">
                    <button class="buy-now" name="action" value="buy" onclick="document.getElementById('buttonForm_<%= productID %>').action = 'ShoppingServlet';">Buy Now</button>
                    <button class="add-to-cart" name="action" value="cart" onclick="document.getElementById('buttonForm_<%= productID %>').action = 'ShoppingServlet';">Add to Cart</button>
                </div>
            </form>

            <div class="favourite">
                <i id="wishlist-icon" class="far fa-star"></i><p>Wishlist</p>
            </div>

            <p class="description"><%= productDescription %>
            </p>

        </div>            
    </container>
    <%}
    else if(category.equals("monitor")) {
    String productName = (String) request.getAttribute("productName");
    int productID = (int) request.getAttribute("productID");
    int price = (int) request.getAttribute("price");
    String brand = (String) request.getAttribute("brand");
    String modelName = (String) request.getAttribute("modelName");
    String refreshRate = (String) request.getAttribute("refreshRate");
    String screenSize = (String) request.getAttribute("screenSize");
    String resolution = (String) request.getAttribute("resolution");
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
                    <td>Refresh Rate</td>
                    <td><%= refreshRate %></td>
                </tr>
                <tr>
                    <td>Screen Size</td>
                    <td><%= screenSize %></td>
                </tr>
                <tr>
                    <td>Resolution</td>
                    <td><%= resolution %></td>
                </tr>
            </table>
            <form action="ShoppingServlet" method="get">
                <input type="hidden" id="productID" name="ID" value="<%= productID %>">   
                <input type="hidden" id="productName" name="productName" value="<%= productName %>"> 
                <input type="hidden" id="productPrice" name="productPrice" value="<%= price %>">
                <input type="hidden" id="quantity" name="quantity" value=1>
                <input type="hidden" id="description" name="description" value="<%= productDescription %>">
                <input type="hidden" name="category" value="<%= category %>">
                <input type="hidden" name="iconPath" value="<%= photo1 %>">
                <div class="option-buttons">
                    <button class="buy-now" name="action" value="buy" onclick="document.getElementById('buttonForm_<%= productID %>').action = 'ShoppingServlet';">Buy Now</button>
                    <button class="add-to-cart" name="action" value="cart" onclick="document.getElementById('buttonForm_<%= productID %>').action = 'ShoppingServlet';">Add to Cart</button>
                </div>
            </form>

            <div class="favourite">
                <i id="wishlist-icon" class="far fa-star"></i><p>Wishlist</p>
            </div>

            <p class="description"><%= productDescription %>
            </p>

        </div>            
    </container>

    <%}
    else if(category.equals("laptop")) {
    String productName = (String) request.getAttribute("productName");
    int productID = (int) request.getAttribute("productID");
    int price = (int) request.getAttribute("price");
    String brand = (String) request.getAttribute("brand");
    String modelName = (String) request.getAttribute("modelName");
    String storageCapacity = (String) request.getAttribute("storageCapacity");
    String cpu = (String) request.getAttribute("cpu");
    String memory = (String) request.getAttribute("memory");
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
                    <td>CPU</td>
                    <td><%= cpu %></td>
                </tr>
                <tr>
                    <td>Memory</td>
                    <td><%= memory %></td>
                </tr>
            </table>
            <form action="ShoppingServlet" method="get">
                <input type="hidden" id="productID" name="ID" value="<%= productID %>">   
                <input type="hidden" id="productName" name="productName" value="<%= productName %>"> 
                <input type="hidden" id="productPrice" name="productPrice" value="<%= price %>">
                <input type="hidden" id="quantity" name="quantity" value=1>
                <input type="hidden" id="description" name="description" value="<%= productDescription %>">
                <input type="hidden" name="category" value="<%= category %>">
                <input type="hidden" name="iconPath" value="<%= photo1 %>">
                <div class="option-buttons">
                    <button class="buy-now" name="action" value="buy" onclick="document.getElementById('buttonForm_<%= productID %>').action = 'ShoppingServlet';">Buy Now</button>
                    <button class="add-to-cart" name="action" value="cart" onclick="document.getElementById('buttonForm_<%= productID %>').action = 'ShoppingServlet';">Add to Cart</button>
                </div>
            </form>

            <div class="favourite">
                <i id="wishlist-icon" class="far fa-star"></i><p>Wishlist</p>
            </div>

            <p class="description"><%= productDescription %>
            </p>

        </div>            
    </container>

    <%}
    else if(category.equals("camera")) {
    String productName = (String) request.getAttribute("productName");
    int productID = (int) request.getAttribute("productID");
    int price = (int) request.getAttribute("price");
    String brand = (String) request.getAttribute("brand");
    String modelName = (String) request.getAttribute("modelName");
    String formFactor = (String) request.getAttribute("formFactor");
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
                    <td>Form Factor</td>
                    <td><%= formFactor %></td>
                </tr>
            </table>
            <form action="ShoppingServlet" method="get">
                <input type="hidden" id="productID" name="ID" value="<%= productID %>">   
                <input type="hidden" id="productName" name="productName" value="<%= productName %>"> 
                <input type="hidden" id="productPrice" name="productPrice" value="<%= price %>">
                <input type="hidden" id="quantity" name="quantity" value=1>
                <input type="hidden" id="description" name="description" value="<%= productDescription %>">
                <input type="hidden" name="category" value="<%= category %>">
                <input type="hidden" name="iconPath" value="<%= photo1 %>">
                <div class="option-buttons">
                    <button class="buy-now" name="action" value="buy" onclick="document.getElementById('buttonForm_<%= productID %>').action = 'ShoppingServlet';">Buy Now</button>
                    <button class="add-to-cart" name="action" value="cart" onclick="document.getElementById('buttonForm_<%= productID %>').action = 'ShoppingServlet';">Add to Cart</button>
                </div>
            </form>

            <div class="favourite">
                <i id="wishlist-icon" class="far fa-star"></i><p>Wishlist</p>
            </div>

            <p class="description"><%= productDescription %>
            </p>

        </div>            
    </container>
    <%}%>
    <script src="../../JS/ProductDetailsScript.js"></script>

</body>
</html>
