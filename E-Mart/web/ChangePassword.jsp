<%-- 
    Document   : ChangePassword
    Created on : Apr 14, 2024, 3:36:48?PM
    Author     : User
--%>
<%@ page import="Model.SignUpUser" %>
<%@ page import="Model.userDao" %>

<%
    String error = request.getParameter("error");
    String errorMessage = "";
    if (error != null && error.equals("1")) {
        errorMessage = "Incorrect current password. Please try again.";
    } else if (error != null && error.equals("2")) {
        errorMessage = "New password and confirm new password do not match.";
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
     <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/ChangePassword.css" rel="stylesheet" type="text/css"/>
     <script> 
     function validation() {
        var NewPassword = document.getElementById("NewPassword").value;
        var ReConfirmPassword = document.getElementById("ReConfirmPassword").value;

        if ( !NewPassword || !ReConfirmPassword) {
            alert("All fields must be filled out.");
            return false;
        }

        if (NewPassword.length < 8) {
            alert("Password must be at least 8 characters long.");
            return false;
        }

        if (NewPassword !== ReConfirmPassword) {
            alert("Passwords do not match.");
            return false;
        }

        return true;
    }
    </script>
</head>
<body>
    <%@ include file="Navbar.html" %>
    <div class="body-wrapper">
        <div style="color: red;"><%= errorMessage %></div>
        <form action="ChangePasswordController" onsubmit="return validation()" method="post" style="border: 2px solid #007bff; background-color: #1a1a1a; width: 600px; height: 450px;">
            <a href="Profile.jsp">Back to Profile</a>
            <h2 style="text-align: center;">Change Password</h2>

            <br><label for="email">Email Address:</label>
            <input type="email" id="email" name="email" placeholder=" emartshop@gmail.com"  style="width: 585px;">
            <br><br>
            <label for="newpassword">Enter New Password:</label>
            <input type="password" id="NewPassword" name="NewPassword" placeholder="Password (8+ characters)"><br><br>

            <label for="ReConfirmPassword">ReConfirm Password:</label>
            <input type="password" id="ReConfirmPassword" name="ReConfirmPassword" placeholder=" Password (8+ characters)"><br><br>  
            <button type="submit">Save Changes</button>   
        </form>
    </div>
</body>
</html>

