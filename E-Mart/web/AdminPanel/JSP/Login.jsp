<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In</title>
        <link rel="stylesheet" href="/AdminPanel/CSS/Login.css"/>
    </head>
    <body>
        
        <div class="container">
            <div class="card">
                <div class="image-column">
                    <img src="/AdminPanel/Images/cute.jpg" alt="Login Image">
                </div>
                <div class="form-column">
                    <h2>Login</h2>
                    <form action="/AdminLoginServlet" method="POST" >
                        <div class="input-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="input-group">
                            <label for="password">Password:</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <button type="submit" id="loginButton">Login</button>
                    </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
