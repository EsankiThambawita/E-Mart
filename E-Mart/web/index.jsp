<%-- 
    Document   : Home
    Created on : Apr 11, 2024, 3:53:02 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Model.DAO"%>
<%@page import="Model.NewestProductObj"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Home.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <%@ include file="Navbar.jsp" %>

        <% DAO.getAllSmartphones(); %>
        <% DAO.getNewArrivals(); %>

        <!-- Home page UI -->
        <div class="container">
            <img src="Images/Home/lens.jpg" alt="Background Image" class="background-image">
            <div class="gradient-overlay"></div>
            <div class="content">
                <h1>Discover Smart Connections with<br>E-Mart Smartphones</h1>
                <p>Explore the latest in smartphone technology and<br>connectivity. From flagship models to budget-friendly<br>
                    options, find your perfect fit at E-Mart.</p>
                <div class="buttons">
                    <a href="AboutUs.jsp">
                        <button class="button1">About Us</button>
                    </a>
                    <a href="ProductCategory_Cameras.jsp">
                        <button class="button2">Start Shopping</button>
                    </a>
                </div>
            </div>
        </div>

        <!-- Second Section -->
        <div class="second-section">
            <h2 class="Topic">Best Sellers</h2>
            <div class="rectangle-container">
                <div class="rectangle">
                    <a href="ProductCategory_Phones.jsp">
                        <div class="img-container">
                            <img src="Images/Home/S24.png" alt="Product Image">
                        </div>
                        <span class="text1">Samsung Galaxy S24</span>
                        <span class="text2">LKR 400,000</span>
                    </a>

                </div>

                <div class="rectangle">
                    <a href="ProductCategory_Phones.jsp">
                        <div class="img-container">
                            <img src="Images/Home/S22.png" alt="Product Image">
                        </div>
                        <span class="text1">Samsung Galaxy S22</span>
                        <span class="text2">LKR 300,000</span>
                    </a>

                </div>

                <div class="rectangle">
                    <a href="ProductCategory_Phones.jsp">
                        <div class="img-container">
                            <img src="Images/Home/iphone14.png" alt="Product Image">
                        </div>
                        <span class="text1">Iphone 14</span>
                        <span class="text2">LKR 350,000</span>
                    </a>

                </div>

                <div class="rectangle">
                    <a href="ProductCategory_Phones.jsp">
                        <div class="img-container">
                            <img src="Images/Home/iphone15.png" alt="Product Image">
                        </div>
                        <span class="text1">Iphone 15</span>
                        <span class="text2">LKR 500,000</span>
                    </a>

                </div>
            </div>
        </div>

        <!-- Third Section -->
        <div class="second-section">
            <h2 class="Topic">New Arrivals</h2>
            <div class="rectangle-container">
                <% 
            List<NewestProductObj> newArrivals = DAO.getNewArrivals();
            for (int i = 0; i < 4 && i < newArrivals.size(); i++) {
                NewestProductObj newItems = newArrivals.get(i);
                %>
                <div class="rectangle">
                    <a href="ProductCategory_Cameras.jsp">
                        <div class="img-container">
                            <img src="<%= newItems.getIconPath() %>" alt="Product Image">
                        </div>
                        <span class="text1"><%= newItems.getProductName() %></span>
                        <span class="text2">LKR <%= newItems.getProductPrice() %></span>
                    </a>
                </div>
                <% } %>
            </div>

            <!--                <div class="rectangle">
                                <a href="abc.jsp">
                                    <img src="Images/Home/SONY alpha.png" alt="Product Image">
                                    <span class="text1">SONY Alpha 9 II</span>
                                    <span class="text2">LKR 300,000</span>
                                </a>
                                
                            </div>
            
                            <div class="rectangle">
                                <a href="abc.jsp">
                                    <img src="Images/Home/SONY RX10.png" alt="Product Image">
                                    <span class="text1">SONY RX10 IV</span>
                                    <span class="text2">LKR 450,000</span>
                                </a>
                                
                            </div>
            
                            <div class="rectangle">
                                <a href="abc.jsp">
                                    <img src="Images/Home/iphone15.png" alt="Product Image">
                                    <span class="text1">Iphone 15</span>
                                    <span class="text2">LKR 500,000</span>
                                </a>
                                
                            </div>-->
        </div>

        <!--Fourth section -->
        <div class="categories-text">Categories</div>

        <div class="category-container">
            <a href="ProductCategory_Phones.jsp" class="category1">
                <div class="column1">
                    <img src="Images/Home/phone.png" alt="Image 1" style="height: 160px; width: 100px;">
                </div>
                <div class="column2">
                    <div class="line1">Smartphones</div>
                    <div class="line2">Explore our sleek smartphones, packed with cutting-edge tech for seamless connectivity and entertainment</div>
                </div>
            </a>

            <a href="ProductCategory_Laptops.jsp" class="category2">
                <div class="column1">
                    <img src="Images/Home/laptop.png" alt="Image 2" style="height: 130px; width: 120px;">
                </div>
                <div class="column2">
                    <div class="line1">Laptops</div>
                    <div class="line2">Enhance productivity with our versatile range of laptops, meticulously designed to meet your diverse needs.</div>
                </div>
            </a>

            <a href="ProductCategory_Cameras.jsp" class="category3">
                <div class="column1">
                    <img src="Images/Home/camera.png" alt="Image 3" style="height: 130px; width: 110px;">
                </div>
                <div class="column2">
                    <div class="line1">Cameras</div>
                    <div class="line2">Capture life's moments in stunning detail with our carefully curated selection of cameras.</div>
                </div>
            </a>
        </div>

        <!-- Fifth section -->
        <div class="nextcategory-container">
            <a href="ProductCategory_Smartwatches.jsp" class="category4">
                <div class="column1">
                    <img src="Images/Home/watch.png" alt="Image 3" style="height: 150px; width: 130px;">
                </div>
                <div class="column2">
                    <div class="line1">Smart<br><br>Watches</div>
                    <div class="line2">Stay connected, organized, and impeccably stylish with our innovative collection of smartwatches."</div>
                </div>
            </a>

            <a href="ProductCategory_Monitors.jsp" class="category5">
                <div class="column1">
                    <img src="Images/Home/monitor.png" alt="Image 3" style="height: 130px; width: 130px;">
                </div>
                <div class="column2">
                    <div class="line1">Monitors</div>
                    <div class="line2">Immerse yourself in breathtaking visuals with our premium lineup of meticulously engineered monitors.</div>
                </div>
            </a>
        </div>


        <!-- Sixth section -->
        <div class="longrectangle-container">
            <div class="longrectangle">
                <p class="sentence">Experience Next-Level Performance with E-Mart Electronics</p>
                <button class="start-shopping" onclick="window.location.href = 'ProductCategory_Phones.jsp';">Start Shopping</button>
            </div>
        </div>
        <%@ include file="Footer.html" %>
        <script src="JS/Common.js"></script>
    </body>
</html>
