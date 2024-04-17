<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Apple iPhone 14 Pro</title>

    <link rel="stylesheet" type="text/css" href="CSS/ProductDetailsStyles.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>


</head>

<body>

<!--Main container to contain the 2 columns-->
<container class="container">

    <!--Left gallery-->
    <div class="left-column">
        <img src="Images/ProductCategory&Details/i14p/i14p.png" class="thumbnail" id="ProductImg">

        <div class="small-img-row">
            <div class="small-img-col">
                <img src="Images/ProductCategory&Details/i14p/i14p.png" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="Images/ProductCategory&Details/i14p/1.jpg" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="Images/ProductCategory&Details/i14p/2.jpg" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="Images/ProductCategory&Details/i14p/3.jpg" width="100%" class="small-img">
            </div>
        </div>

    </div>

    <hr class="vertical-line"/>

    <!--Right product info and stuff-->
    <div class="right-column">
        <h1 class="name">Apple iPhone 14 Pro</h1>
        <h3 class="price">Rs.100000</h3>

        <!--In stock/out of stock square thingy-->
        <div class="availability">In Stock</div>

        <!--Product details table-->
        <table class="info-table">
            <tr>
                <td>Brand</td>
                <td>Apple</td>
            </tr>
            <tr>
                <td>Model Name</td>
                <td>iPhone 14 Pro</td>
            </tr>
            <tr>
                <td>Storage Capacity</td>
                <td>256 GB</td>
            </tr>
            <tr>
                <td>Screen Size</td>
                <td>6.8 Inches</td>
            </tr>
            <tr>
                <td>Color</td>
                <td></td>
            </tr>
        </table>
        <div class="option-buttons">
            <button class="buy-now">Buy Now</button>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="favourite">
            <i id="wishlist-icon" class="far fa-star"></i><p>Wishlist</p>
        </div>

        <p class="description">The iPhone 14 Pro combines cutting-edge technology and stunning design. Featuring a 6.1-inch Super Retina XDR display with ProMotion, it offers vibrant colors and smooth, responsive performance.
            Powered by the A16 Bionic chip, it delivers exceptional speed and efficiency for multitasking and advanced camera features. The Pro camera system includes a 48MP main camera for ultra-high-resolution photos and a range of creative photography options.
            The device supports 5G connectivity and comes with a longer battery life for all-day use. With Face ID, Ceramic Shield, and water resistance, the iPhone 14 Pro is both secure and durable.
        </p>
    </div>

</container>

<script src="JS/ProductDetailsScript.js"></script>

</body>
</html>
