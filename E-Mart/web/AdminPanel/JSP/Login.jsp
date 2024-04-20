<%-- 
    Document   : Login
    Created on : Apr 20, 2024, 6:00:24 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In</title>
        <link rel="stylesheet" href="/AdminPanel\CSS\Login.css"/>
    </head>
    <body>
        
        <div class="container">
            <div class="card">
                <div class="image-column">
                    <img src="/AdminPanel/Images/cute.jpg" alt="Login Image">
                </div>
                <div class="form-column">
                    <h2>Login</h2>
                    <form>
                        <div class="input-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="input-group">
                            <label for="password">Password:</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <button type="submit">Login</button>
                        <button type="button" class="google-login">Login with Google</button>
                    </form>
                    <div class="links">
                        <a href="#">Forgot password?</a>
                        <span>|</span>
                        <a href="#">Create an account</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
