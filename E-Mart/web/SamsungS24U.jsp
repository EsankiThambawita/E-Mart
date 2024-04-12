<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Samsung Galaxy S24 Ultra</title>

    <link rel="stylesheet" type="text/css" href="../../CSS/ProductDetailsStyles.css">

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
            <img src="../../Images/S24/s24u.webp" class="thumbnail" id="ProductImg">
            
            <div class="small-img-row">
                <div class="small-img-col">
                    <img src="../../Images/S24/s24u.webp" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="../../Images/S24/1.jpg" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="../../Images/S24/2.jpg" width="100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="../../Images/S24/3.jpg" width="100%" class="small-img">
                </div>
            </div>

        </div>

        <hr class="vertical-line"/>

        <!--Right product info and stuff-->
        <div class="right-column">
            <h1 class="name">Samsung Galaxy S24 Ultra</h1>
            <h3 class="price">Rs.100000</h3>

            <!--In stock/out of stock square thingy-->
            <div class="availability">In Stock</div>

            <!--Product details table-->
            <table class="info-table">
                <tr>
                    <td>Brand</td>
                    <td>SAMSUNG</td>
                </tr>
                <tr>
                    <td>Model Name</td>
                    <td>Galaxy S24 Ultra</td>
                </tr>
                <tr>
                    <td>Storage Capacity</td>
                    <td>512 GB</td>
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
            
            <p class="description">Introducing the Samsung Galaxy S24 Ultra: a flagship smartphone redefining excellence. Its 6.8-inch Dynamic AMOLED display, 108MP quad-camera system, and the latest Snapdragon processor deliver unmatched performance. 
                With 5G connectivity and all-day battery life, stay connected and productive effortlessly. Plus, enjoy precise control with the included S Pen for enhanced creativity and productivity. 
                Experience innovation at its finest with the Galaxy S24 Ultra.
            </p>
        </div>

    </container>
    
    <script src="../../JS/ProductDetailsScript.js"></script>
    
</body>
</html>
