<%-- 
    Document   : Profile
    Created on : Apr 20, 2024, 7:23:33 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="/AdminPanel/CSS/Profile.css"/>
        <link rel="stylesheet" href="/AdminPanel/CSS/navbar.css"/>
        <link rel="stylesheet" href="/AdminPanel/CSS/Menu.css"/>
    </head>
    <body>
        <div class="left-section">
            <%@ include file="Menu.html" %>
        </div>
        
        <div class="right-section">
        <div class="navbar">
            <%@ include file="navbar.html" %>
        </div>
        <div class="container">
            <div class="profile-card">
                <div class="profile-pic">
                    <img src="/AdminPanel/Images/profile.png" alt="Profile Picture">
                    <div class="edit-profile-pic">
                        <button>Edit Profile Picture</button>
                    </div>
                </div>
                <div class="user-settings card">
                    <h2>User Settings</h2>
                    <form>
                        <div class="input-group">
                            <label for="firstName">First Name:</label>
                            <input type="text" id="firstName" name="firstName" required>
                        </div>
                        <div class="input-group">
                            <label for="lastName">Last Name:</label>
                            <input type="text" id="lastName" name="lastName" required>
                        </div>
                        <div class="input-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <button type="submit">Save Settings</button>
                    </form>
                </div>
                <div class="contact-settings card">
                    <h2>Contact Settings</h2>
                    <form>
                        <div class="input-group">
                            <label for="address">Address:</label>
                            <input type="text" id="address" name="address">
                        </div>
                        <div class="input-group">
                            <label for="city">City:</label>
                            <input type="text" id="city" name="city">
                        </div>
                        <button type="submit">Save Settings</button>
                    </form>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>
