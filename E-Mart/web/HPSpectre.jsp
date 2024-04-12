<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>HP Spectre</title>

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
        <img src="../../Images/HPSpectre/HPSpectre.png" class="thumbnail" id="ProductImg">

        <div class="small-img-row">
            <div class="small-img-col">
                <img src="../../Images/HPSpectre/HPSpectre.png" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="../../Images/HPSpectre/1.jpg" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="../../Images/HPSpectre/2.jpg" width="100%" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="../../Images/HPSpectre/3.jpg" width="100%" class="small-img">
            </div>
        </div>

    </div>

    <hr class="vertical-line"/>

    <!--Right product info and stuff-->
    <div class="right-column">
        <h1 class="name">HP Spectre x360</h1>
        <h3 class="price">Rs.100000</h3>

        <!--In stock/out of stock square thingy-->
        <div class="availability">In Stock</div>

        <!--Product details table-->
        <table class="info-table">
            <tr>
                <td>Brand</td>
                <td>HP</td>
            </tr>
            <tr>
                <td>Model Name</td>
                <td>Spectre</td>
            </tr>
            <tr>
                <td>Storage Capacity</td>
                <td>512 GB</td>
            </tr>
            <tr>
                <td>CPU</td>
                <td>Intel Core i7</td>
            </tr>
            <tr>
                <td>Memory</td>
                <td>16 GB</td>
            </tr>
        </table>
        <div class="option-buttons">
            <button class="buy-now">Buy Now</button>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="favourite">
            <i id="wishlist-icon" class="far fa-star"></i><p>Wishlist</p>
        </div>

        <p class="description">The HP Spectre is a luxurious and high-performance laptop designed for professionals and creatives. It features a sleek, ultra-thin design with a premium build quality and stunning aesthetics.
            The laptop comes in a variety of screen sizes and resolutions, including 4K OLED, providing vibrant colors and sharp details. Powered by the latest Intel processors, it delivers powerful performance for multitasking and demanding tasks.
            The Spectre boasts exceptional battery life, ensuring all-day productivity. Its backlit keyboard and precision touchpad offer a comfortable and efficient user experience. Security features such as facial recognition and a fingerprint reader provide advanced protection for your data.
            The HP Spectre is an elegant and versatile laptop that combines style with top-tier performance.
        </p>
    </div>

</container>

<script src="../../JS/ProductDetailsScript.js"></script>

</body>
</html>
