<%-- 
    Document   : Register
    Created on : Apr 20, 2024, 6:30:49 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="/AdminPanel\CSS\Register.css"/>
    </head>
    <body>
        <div class="container">
            <div class="card">
                <div class="image-column">
                    <img src="/AdminPanel/Images/dog.png" alt="Login Image" style="width: 100%; height: 100%; object-fit: cover;">
                </div>
                <div class="form-column">
                    <h2>Register</h2>
                    <form>
                        <div class="input-group">
                            <div class="half-width">
                                <label for="firstname">First Name:</label>
                                <input type="text" id="firstname" name="firstname" required>
                            </div>
                            <div class="half-width"> <!-- Add class to the last name input -->
                                <label for="lastname">Last Name:</label>
                                <input type="text" id="lastname" name="lastname" required>
                            </div>
                        </div>
                        <div class="input-group" style="width: 500px;">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required style="width: 483px;">
                        </div>
                        <div class="input-group">
                            <div class="half-width">
                                <label for="password">Password:</label>
                                <input type="password" id="password" name="password" required>
                            </div>
                            <div class="half-width">
                                <label for="repeatPassword">Repeat Password:</label>
                                <input type="password" id="repeatPassword" name="repeatPassword" required>
                            </div>
                        </div>
                        <button type="submit">Register</button>
                    </form>
                    <div class="links">
                        <a href="#">Already have an account? Login here</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
