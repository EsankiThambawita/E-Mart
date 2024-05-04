<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>SmartWatches</title>

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
                    <i class="fas fa-camera-retro"></i>
                </a>
            </div>
            <div>
                <a href="ProductCategory_Smartwatches.jsp">
                    <i class="fas fa-clock"  style="color: #3B7BF8;"></i>
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
                    <input type="hidden" name="id" value="13">
                    <a href="#" onclick="document.getElementById('productForm').submit();">
                        <img src="Images/ProductCategory&Details/SmartWatches/AppleS9.png" alt="product 1">
                    </a>
                <h2>Apple Watch S9</h2>
                <h3>Rs. 100000</h3>

                 <form id="buttonForm" action="#" method="post">
                    <input type="hidden" id="productID" name="id" value="13">    
                    <div class="btn-container">
                        <button class="buy" onclick="document.getElementById('buttonForm').action='CheckoutServlet';">Buy Now</button>
                        <button class="cart" onclick="document.getElementById('buttonForm').action='CartServlet';">Add to Cart</button>
                    </div>
                </form>
            </div>

            <hr class="vertical-line"/>

            <div class="card">
                <form id="productForm" action="ProductServlet" method="get">
                    <input type="hidden" name="id" value="14">
                    <a href="#" onclick="document.getElementById('productForm').submit();">
                        <img src="Images/ProductCategory&Details/SmartWatches/GalaxyWatch7.webp" alt="product 1">
                    </a>
                </form>   
                <h2>Samsung Galaxy Watch 6</h2>
                <h3>Rs. 100000</h3>

                <form id="buttonForm" action="#" method="post">
                    <input type="hidden" id="productID" name="id" value="14">    
                    <div class="btn-container">
                        <button class="buy" onclick="document.getElementById('buttonForm').action='CheckoutServlet';">Buy Now</button>
                        <button class="cart" onclick="document.getElementById('buttonForm').action='CartServlet';">Add to Cart</button>
                    </div>
                </form>
            </div>

            <hr class="vertical-line"/>

            <div class="card">
                <form id="productForm" action="ProductServlet" method="get">
                    <input type="hidden" name="id" value="15">
                    <a href="#" onclick="document.getElementById('productForm').submit();">
                        <img src="Images/ProductCategory&Details/SmartWatches/GooglePixel2.png" alt="product 1">
                    </a>
                </form>    
                <h2>Goolge Pixel Watch 2</h2>
                <h3>Rs. 100000</h3>

                 <form id="buttonForm" action="#" method="post">
                    <input type="hidden" id="productID" name="id" value="15">    
                    <div class="btn-container">
                        <button class="buy" onclick="document.getElementById('buttonForm').action='CheckoutServlet';">Buy Now</button>
                        <button class="cart" onclick="document.getElementById('buttonForm').action='CartServlet';">Add to Cart</button>
                    </div>
                </form>
            </div>

            <hr class="vertical-line"/>

            <div class="card">
                <form id="productForm" action="ProductServlet" method="get">
                    <input type="hidden" name="id" value="16">
                    <a href="#" onclick="document.getElementById('productForm').submit();">
                        <img src="Images/ProductCategory&Details/SmartWatches/OneplusWatch.png" alt="product 1">
                    </a>
                </form>    
                <h2>OnePlus Watch 2</h2>
                <h3>Rs. 100000</h3>

                <form id="buttonForm" action="#" method="post">
                    <input type="hidden" id="productID" name="id" value="16">    
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
