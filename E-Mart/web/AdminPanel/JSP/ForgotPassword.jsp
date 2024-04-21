<%-- 
    Document   : ForgotPassword
    Created on : Apr 20, 2024, 7:03:20 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password?</title>
        <link rel="stylesheet" href="/AdminPanel\CSS\ForgotPassword.css"/>
    </head>
    <body>
        <div class="container">
        <div class="card">
            <div class="image-column">
                <img src="/AdminPanel/Images/butterfly.png" alt="Forgot Password Image" style="width: 100%; height: 100%; object-fit: cover;">
            </div>
            <div class="form-column">
                <h2>Forgot Password?</h2><h5>Don't worry. Enter your email address and we will send you a link to reset your password.</h5>
                <form>
                    <div class="input-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required style="width: 100%;">
                    </div>
                    <button type="submit">Reset Password</button>
                </form>
                <div class="links">
                    <a href="#">Remembered your password? Login here</a>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
