<%-- 
    Document   : Contact
    Created on : Apr 11, 2024, 5:25:22 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contact Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/Contact.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/NavBar.css" rel="stylesheet" type="text/css"/>
    <script src="https://kit.fontawesome.com/7942e54de0.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="wrapper-center bg-accent-1 contact-page-content">
    <img src="/letter_send 1.png" alt="" class="bg-graphic">
    <div class="content-cards">
        <div class="content-card bg-accent-2">
            <h3 class="c-card-tittle">Contact Information</h3>
            <p class="description">Experience the E-Mart difference for yourself! Contact us today to discuss flagship models to budget-friendly options, find your perfect fit at E-Mart.</p>
            <div class="contactlinks">
                <div class="contact-link">
                    <i class="fa-solid fa-phone-volume"></i>
                    <span class="c-link-text">+94 00 000 0000</span>
                </div>
                <div class="contact-link">
                    <i class="fa-solid fa-envelope"></i>
                    <span class="c-link-text">demo@gmail.com</span>
                </div>
                <div class="contact-link">
                    <i class="fa-solid fa-location-dot"></i>
                    <span class="c-link-text">70, Horton Place, Colombo, Sri Lanka</span>
                </div>
            </div>
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3961.630551289352!2d80.54815007589576!3d6.814710993182925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zNsKwNDgnNTMuMCJOIDgwwrAzMycwMi42IkU!5e0!3m2!1sen!2slk!4v1712511102827!5m2!1sen!2slk"
                        width="400" height="225" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>

            <div class="socialButtons">
                <i class="fa-brands fa-facebook"></i>
                <i class="fa-brands fa-square-instagram"></i>
                <i class="fa-brands fa-tiktok"></i>
            </div>
        </div>

        <div class="c-contact-form">
            <form action="" class="contact-form">
                <div class="contact-form-row">
                    <div class="contact-input-area">
                        <label for="firstName" class="form-label">First Name</label>
                        <input type="text" class="contact-form-control" id="firstName" placeholder="Rove">
                    </div>
                    <div class="contact-input-area">
                        <label for="lastName" class="form-label">Last Name</label>
                        <input type="text" class="contact-form-control" id="lastName" placeholder="Dough">
                    </div>
                </div>
                <div class="contact-form-row">
                    <div class="contact-input-area">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="contact-form-control" id="email" placeholder="demo@gmail.com">
                    </div>
                    <div class="contact-input-area">
                        <label for="phoneNumber" class="form-label">Phone Number</label>
                        <input type="text" class="contact-form-control" id="phoneNumber" placeholder="+94 000 000 0000">
                    </div>
                </div>
                <div class="contact-form-row">
                    <div class="contact-input-area">
                        <label for="subject" class="form-label">Select Subject?</label>
                        <div class="subjects">
                            <div class="radio-input-area">
                                <input class="form-check-input" type="radio" checked name="gridRadios" id="gridRadios" value="option2">
                                <span class="checkmark"></span>
                                <label class="form-check-label" for="gridRadios">General Inquiry</label>
                            </div>
                            <div class="radio-input-area">
                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option2">
                                <label class="form-check-label" for="gridRadios1">Product Inquiry</label>
                            </div>
                            <div class="radio-input-area">
                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                <label class="form-check-label" for="gridRadios2">Technical Assistance</label>
                            </div>
                            <div class="radio-input-area">
                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option2">
                                <label class="form-check-label" for="gridRadios3">Other</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="contact-form-row">
                    <div class="contact-input-area">
                        <label for="message" class="form-label">Message</label>
                        <textarea class="contact-form-control" id="message" rows="3" placeholder="Type your message here"></textarea>
                    </div>
                </div>
                <div class="contact-form-row c-action">
                    <button type="submit" class="btn primary-btn order-btn">Send Message</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
