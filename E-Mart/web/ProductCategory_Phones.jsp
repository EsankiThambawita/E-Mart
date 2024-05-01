<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Phones</title>

        <link rel="stylesheet" type="text/css" href="CSS/ProductCategoryStyles.css">
        <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    </head>
    <body>
        <%@ include file="Navbar.html" %>
        <div class="category-icons">
            <div>
                <i class="fas fa-mobile" style="color: #3B7BF8;"></i>
            </div>
            <div>
                <a href="ProductCategory_Laptops.jsp">
                    <i class="fas fa-laptop"></i>
                </a>
            </div>
            <div>
                <a href="ProductCategory_Cameras.jsp">
                    <i class="fas fa-camera-retro"></i>
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
            <div class="card">
                <form id="productForm" action="ProductServlet" method="get">
                    <input type="hidden" name="id" value="1">
                    <a href="#" onclick="document.getElementById('productForm').submit();">
                        <img src="Images/ProductCategory&Details/Phones/s24u.webp" alt="product 1">
                    </a>
                </form>
                <h2>Samsung Galaxy S24 Ultra</h2>
                <h3>Rs. 100000</h3>

                <form id="buttonForm" action="#" method="post">
                    <input type="hidden" id="productID" name="id" value="1">    
                    <div class="btn-container">
                        <button class="buy" onclick="document.getElementById('buttonForm').action='CheckoutServlet';">Buy Now</button>
                        <button class="cart" onclick="document.getElementById('buttonForm').action='CartServlet';">Add to Cart</button>
                    </div>
                </form>
            
            </div>

            <hr class="vertical-line"/>

            <div class="card">
                <form id="productForm" action="ProductServlet" method="get">
                    <input type="hidden" name="id" value="2">
                    <a href="#" onclick="document.getElementById('productForm').submit();">
                        <img src="Images/ProductCategory&Details/Phones/s22u.webp" alt="product 1">
                    </a>
                </form>    
                <h2>Samsung Galaxy S22 Ultra</h2>
                <h3>Rs. 100000</h3>

               <form id="buttonForm" action="#" method="post">
                    <input type="hidden" id="productID" name="id" value="2">    
                    <div class="btn-container">
                        <button class="buy" onclick="document.getElementById('buttonForm').action='CheckoutServlet';">Buy Now</button>
                        <button class="cart" onclick="document.getElementById('buttonForm').action='CartServlet';">Add to Cart</button>
                    </div>
                </form>
            </div>

            <hr class="vertical-line"/>

            <div class="card">
                <form id="productForm" action="ProductServlet" method="get">
                    <input type="hidden" name="id" value="3">
                    <a href="#" onclick="document.getElementById('productForm').submit();">
                        <img src="Images/ProductCategory&Details/Phones/i14p.png" alt="product 1">
                    </a>
                </form>    
                <h2>Apple Iphone 14 Pro</h2>
                <h3>Rs. 100000</h3>

                 <form id="buttonForm" action="#" method="post">
                    <input type="hidden" id="productID" name="id" value="3">    
                    <div class="btn-container">
                        <button class="buy" onclick="document.getElementById('buttonForm').action='CheckoutServlet';">Buy Now</button>
                        <button class="cart" onclick="document.getElementById('buttonForm').action='CartServlet';">Add to Cart</button>
                    </div>
                </form>
            </div>

            <hr class="vertical-line"/>

            <div class="card">
                <form id="productForm" action="ProductServlet" method="get">
                    <input type="hidden" name="id" value="4">
                    <a href="#" onclick="document.getElementById('productForm').submit();">
                        <img src="Images/ProductCategory&Details/Phones/i15p.png" alt="product 1">
                    </a>
                </form>
                <h2>Apple Iphone 15 Pro</h2>
                <h3>Rs. 100000</h3>

                 <form id="buttonForm" action="#" method="post">
                    <input type="hidden" id="productID" name="id" value="4">    
                    <div class="btn-container">
                        <button class="buy" onclick="document.getElementById('buttonForm').action='CheckoutServlet';">Buy Now</button>
                        <button class="cart" onclick="document.getElementById('buttonForm').action='CartServlet';">Add to Cart</button>
                    </div>
                </form>
            </div>
        </div>
        <%@ include file="Footer.html" %>
        <script src="JS/Common.js"></script>
    </body>
</html>
