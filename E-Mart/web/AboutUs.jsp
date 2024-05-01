<%-- 
    Document   : AboutUs
    Created on : Apr 12, 2024, 11:15:37 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/AboutUs.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <%@ include file="Navbar.jsp" %>
        <!--        <div id="wave"></div>-->

        <h1 class="center">Why Us?</h1>
        <div style="display:flex;">
            <div class="container-left">
                <div class="circle"></div>
                <div class="circle"></div>
                <div class="text">Upgrade your life with E-Mart: Where every click brings you closer to the latest in digital innovation. Shop smarter, live better.</div>
           
            </div>

            <div class="container-right">
                <div class="row">
                    <!-- our mission -->
                    <div class="column">
                        <div class="card">
                            <div class="container" >
                                <h2>Our Mission </h2>
                                <p class="title">"Our mission at E-mart is to democratize education by providing accessible, high-quality e-courses that empower individuals to enhance their skills, pursue their passions, and achieve their personal and professional goals."</p>
                            </div>
                        </div>
                    </div>


                    <div class="column">
                        <div class="card">
                            <div class="container">
                                <h2>Our Vision</h2>
                                <p class="title">
                                    "Our vision at E-mart is to revolutionize education by providing a dynamic platform where anyone can explore, learn, and excel, regardless of their background or location. We aspire to become the premier destination for e-courses, inspiring lifelong learning and innovation."</p>
                            </div>
                        </div>
                    </div>


                    <div class="column">
                        <div class="card">
                            <div class="container">
                                <h2>Our Values </h2>
                                <p class="title">"E-mart offers high-quality e-courses for all, anytime, anywhere. With expert partnerships, we provide engaging content. Our platform encourages interactive learning through forums and live sessions, fostering peer collaboration. Tailoring courses to individual needs and goals, we empower lifelong learners for personal and professional success."</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="Footer.html" %>
        <script src="JS/Common.js"></script>
    </body>
</html>


