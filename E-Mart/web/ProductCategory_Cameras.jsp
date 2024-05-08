<%@page import="java.util.List"%>
<%@page import="Model.DAO"%>
<%@page import="Model.Camera"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Cameras</title>
        <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="CSS/ProductCategoryStyles.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    </head>
    <body>
        <%@ include file="Navbar.jsp" %>
        <div class="category-icons">
            <div>
                <a href="ProductCategory_Phones.jsp">
                    <i class="fas fa-mobile"></i>
                </a>
            </div>
            <div>
                <a href="ProductCategory_Laptops.jsp">
                    <i class="fas fa-laptop"></i>
                </a>
            </div>
            <div>
                <a href="ProductCategory_Cameras.jsp">
                    <i class="fas fa-camera-retro" style="color: #3B7BF8;"></i>
                </a>
            </div>
            <div>
                <a href="ProductCategory_Smartwatches.jsp">
                    <i class="fas fa-clock"></i>
                </a>
            </div>
            <div>
                <a href="ProductCategory_Monitors.jsp">
                    <i class="fas fa-desktop"></i>
                </a>
            </div>  
        </div>

        <div class="card-container">
            <hr class="vertical-line"/> 
            <% 
            List<Camera> products = DAO.getAllCamera();
            for (Camera item : products) {
            %>
            <div class="card">
                <form id="productForm_<%= item.getProductId() %>" action="ProductInfoServlet" method="get">
                    <input type="hidden" name="productID" value="<%= item.getProductId() %>">
                    <input type="hidden" id="category" name="category" value="<%= item.getCategory() %>">
                    <a href="#" onclick="document.getElementById('productForm_<%= item.getProductId() %>').submit();">
                        <img src="<%= item.getPhoto1() %>" alt="product 1">
                    </a>
                </form>
                <h2><%= item.getProductName() %></h2>
                <h3><%= item.getPrice() %></h3>

                <form id="buttonForm_<%= item.getProductId() %>" action="#" method="get">
                    <input type="hidden" id="productID" name="ID" value="<%= item.getProductId() %>">   
                    <input type="hidden" id="productName" name="productName" value="<%= item.getProductName() %>"> 
                    <input type="hidden" id="productPrice" name="productPrice" value="<%= item.getPrice() %>">
                    <input type="hidden" id="quantity" name="quantity" value="<%= item.getQuantity() %>">
                    <input type="hidden" id="description" name="description" value="<%= item.getProductDescription() %>">
                    <input type="hidden" name="category" value="<%= item.getCategory() %>">
                    <input type="hidden" name="iconPath" value="<%= item.getPhoto1() %>">
                    <div class="btn-container">
                        <button value="buy" name="action" onclick="document.getElementById('buttonForm_<%= item.getProductId() %>').action = 'ShoppingServlet';">Buy Now</button>
                        <button value="cart" name="action" onclick="document.getElementById('buttonForm_<%= item.getProductId() %>').action = 'ShoppingServlet';">Add to Cart</button>
                    </div>
                </form>

            </div>
            <hr class="vertical-line"/>      
            <% } %>
        </div>
        <%@ include file="Footer.html" %>
        <script src="JS/Common.js"></script>
    </body>
</html>
