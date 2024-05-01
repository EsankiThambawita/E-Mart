<nav id="topNav" class="collapse">
    <div class="nav-content">
        <img class="nav-brand" src="Images/Navbar/E-MartLogo.svg" alt="E-Mart">
        <div class="nav-links">
            <a href="index.jsp" class="nav-link home-link">Home</a>
            <a href="ProductCategory_Cameras.jsp" class="nav-link products-link">Products</a>
            <a href="AboutUs.jsp" class="nav-link aboutUs-link">About Us</a>
            <a href="Contact.jsp" class="nav-link support-link">Support</a>
        </div>
    </div>
    <div class="nav-actions">
        <div class="nav-action-buttons">
            <% 
                String loggedInUser = (String) session.getAttribute("email");
                if (loggedInUser != null) { // User is logged in
            %>
            <a href="Profile.jsp" class="nav-button">
                <img src="Images/Navbar/profile.svg" alt="User" class="nav-button-icon">
            </a>
            <% } else { // User is not logged in %>
            <a href="SignUp.jsp" class="nav-button sign">
                <span class="indicator">SignUp</span>
                <img src="Images/Navbar/profile.svg" alt="User" class="nav-button-icon">
            </a>
            <% } %>
            <a href="ShoppingCart.jsp" class="nav-button">
                <img src="Images/Navbar/cart.svg" alt="" class="nav-button-icon">
            </a>
        </div>
    </div>
    <div class="hamburger" onclick="expandNavBar();">
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
    </div>
</nav>
