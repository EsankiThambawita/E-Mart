<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Apple iPhone 15 Pro</title>

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
        <img src="Images/ProductCategory&Details/AppleS9/AppleS9.png" class="thumbnail" id="ProductImg">

        <div class="small-img-row">
            <div class="small-img-col">
                <img src="Images/ProductCategory&Details/AppleS9/AppleS9.png" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="Images/ProductCategory&Details/AppleS9/1.jpg" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="Images/ProductCategory&Details/AppleS9/2.jpg" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="Images/ProductCategory&Details/AppleS9/3.jpg" width="100%" class="small-img">
            </div>
        </div>

    </div>

    <hr class="vertical-line"/>

    <!--Right product info and stuff-->
    <div class="right-column">
        <h1 class="name">Apple iPhone 15 Pro</h1>
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
                <td>iPhone 15 Pro</td>
            </tr>
            <tr>
                <td>Storage Capacity</td>
                <td>128 GB</td>
            </tr>
            <tr>
                <td>Screen Size</td>
                <td>6.1 Inches</td>
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

        <p class="description">The Apple Watch Series 9 is a sleek and advanced smartwatch offering improved health and fitness tracking, including heart rate, sleep, and workout modes. It features a Retina display with always-on functionality and is powered by a fast S9 chip for smooth performance. With ultra-wideband technology, precise location tracking, and up to 18 hours of battery life, this watch keeps up with your daily routine. Siri integration and customizable case materials and bands enhance its versatility and style, making the Series 9 a perfect companion for staying connected and healthy.
        </p>
    </div>

</container>

<script src="JS/ProductDetailsScript.js"></script>

</body>
</html>