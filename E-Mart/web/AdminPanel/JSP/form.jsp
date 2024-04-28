<%-- 
    Document   : form
    Created on : Apr 28, 2024, 7:45:11 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="/AdminPanel/CSS/form.css"/>
    </head>
    <body>
        <!-- A button to open the popup form -->
        <button class="open-button" onclick="openForm()">Open Form</button>

        <!-- The form -->
        <div class="form-popup" id="myForm">
          <form action="/Controller/AdminEditProductServlet" class="form-container">
            <h1>Edit</h1>

            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>

            <button type="submit" class="btn">Login</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
          </form>
        </div>
    </body>
</html>
