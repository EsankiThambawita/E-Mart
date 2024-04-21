<%-- 
    Document   : EditDetails
    Created on : Apr 14, 2024, 3:36:48?PM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Model.User" %>
<%@ page import="Model.userDao" %>
<%
    // Retrieve the logged-in user's email from the session or request
    String userEmail = (String) request.getSession().getAttribute("email");

    // Call getUserByEmail method to retrieve user data
    userDao userDao = new userDao();
    User user = userDao.getUserByEmail(userEmail);

    // Populate input fields with user data
    String username = user.getUsername();
    String email = user.getEmail();
    String contactNumber = user.getContactNumber();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Details</title>
     <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/EditDetails.css" rel="stylesheet" type="text/css"/>
</head>
<body>
  <%@ include file="Navbar.html" %>
          <div class="body-wrapper">

<form id="editForm" action="SaveDetailsServlet" method="post"  style="border: 2px solid #007bff; padding: 20px;">

    <h2 style="text-align: center; margin-top: 0;">Edit Details</h2>


    
    <label for="username">Name:</label>
    <input type="text" id="username" name="username" placeholder="XYZ" value="<%= username %>"><br><br>

    
    <label for="email">Email Adress:</label>
    <input type="email" id="email" name="email"  placeholder="emartshop@gmail.com" value="<%= email %>"><br><br>
    
    
    <label for="ContactNumber">Contact Number:</label>
    <input type="tel" id="ContactNumber" name="ContactNumber" placeholder="07XXXXXXXX" value="<%= contactNumber %>"><br><br>
    
    <button type="submit">Save Changes</button>
        </form>
        </div>       
         
</body>
</html>

