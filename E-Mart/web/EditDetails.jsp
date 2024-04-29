<%-- 
    Document   : EditDetails
    Created on : Apr 14, 2024, 3:36:48?PM
    Author     : User
--%>

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

                <p ><a href="Profile.jsp" style="color: white;">Back to Profile</a></p><h2 style="text-align: center; margin-top: 0;">Edit Details</h2>
                
                <label for="email">Email Adress:</label>
                <input type="email" id="email" name="email"  placeholder="Email Adress Used to SignUp" value=""><br><br>


                <label for="username">Name:</label>
                <input type="text" id="username" name="username" placeholder="XYZ" value=""><br><br>

                <label for="ContactNumber">Contact Number:</label>
                <input type="tel" id="ContactNumber" name="contactNumber" placeholder="07XXXXXXXX" value=""><br><br>

                <button type="submit">Save Changes</button>
            </form>
        </div>       

    </body>
</html>

