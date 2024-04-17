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

<form id="editForm" action="#" method="post"  style="border: 2px solid #007bff; padding: 20px;">

    <h2 style="text-align: center; margin-top: 0;">Edit Details</h2>

    <label for="fullName">Full Name:</label>
    <input type="text" id="fullName" name="fullName" placeholder="Bob Buttons"><br><br>
    
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" placeholder="Bobb"><br><br>
    
     <label for="email">Address:</label>
    <input type="text" id="address" name="address" placeholder="abc/Galle street,Galle"><br><br>
    
    <label for="email">Email:</label>
    <input type="email" id="email" name="email"  placeholder="bob@gmail.com"><br><br>
    
    
    <label for="ContactNumber">Contact Number:</label>
    <input type="tel" id="ContactNumber" name="ContactNumber" placeholder="1234567891"><br><br>
    
    <button type="submit">Save Changes</button>
        </form>
        </div>       
         
</body>
</html>

