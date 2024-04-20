<%-- 
    Document   : Profile
    Created on : Apr 11, 2024, 7:48:20?PM
    Author     : User
--%>
<%@ page import="Model.User" %>
<%@ page import="Model.userDao" %>
<%
    // Retrieve the logged-in user's email from the session or request
    String userEmail = (String) request.getSession().getAttribute("userEmail");

    // Call getUserByEmail method to retrieve user data
    userDao userDao = new userDao();
    User user = userDao.getUserByEmail(userEmail);

    // Populate input fields with user data
    String username = user.getUsername();
    String email = user.getEmail();
    String password = user.getPassword();
    String contactNumber = user.getContactNumber();
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile Page</title>
        <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Profile.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@ include file="Navbar.html" %>
        <div class="body-wrapper">
            <div class="container">
                <div class="sidebar" style="border: 2px solid #007bff;"><br>
                    <div class="sidebar-item">
                        <a href="Profile.jsp">
                            <img src="Images/Profile/Profile.svg">                    
                            <span>Profile</span>
                        </a>
                    </div>
                    <div class="sidebar-item">
                        <a href="TrackOrder.jsp">
                            <img src="Images/Profile/TrackOrder.svg">
                            <span>Track Current Orders</span>
                        </a>
                    </div>
                    <div class="sidebar-item">
                        <a href="OrderHistory.jsp">
                            <img src="Images/Profile/OrderHistory.svg">
                            <span>Order History</span>
                        </a>
                    </div>
                    <div class="sidebar-item">
                        <a href="MyReturns.jsp">
                            <img src="Images/Profile/MyReturns.svg"><br>
                            <span>My<br> Returns</span>
                        </a>
                    </div>
                </div>

              <div class="form-container profile-form" action="ProfilePictureServlet" method="post" enctype="multipart/form-data" style="border: 2px solid #007bff; height: 530px; margin-top: 30px">
              <div class="user-image-container" style="position: relative;">
              <img src="Images/Profile/ProfilePlaceholder.svg" id="profile-pic">
                <a href="EditDetails.jsp">
              <div class="edit-profile-tooltip" style="position: absolute; top: -45px; right: -20px; opacity: 0.7; transition: opacity 0.3s ease;" onmouseover="this.style.opacity = '1';" onmouseout="this.style.opacity = '0.7';">

              <img src="Images/Profile/EditProfile.svg" alt="Edit Details" class="edit-icon" title="Edit Profile" style="width: 20px; height: 20px; color: #59E3FF;">
              </div>
              </a>
              </div>
                        <table>
                            <tr> 
                                <th><h1>Profile</h1></th>
                                <th><div class="user-image"></div></th>   
                            </tr>
                            <tr>
                   
                                <th>Name</th>
                               <th>Email</th>
                            </tr>
                            <tr>
                             
    <th>Name</th>
                               <th>Email</th>
                            </tr>
                            <tr>
                             
                                <td><input type="text" id="username" name="username" value="<%= username %>"></td>
                               <td><input type="email" id="email" name="email" value="<%= email %>"></td>
                            </tr>   
                            <tr>
                                <th>Password</th>
                                
                                <th>Contact Number</th>
                            </tr>
                            <tr>
                                <td><input type="password" id="password" name="password" value="<%= password %>"></td>
                                
                                <td> <input type="tel" id="contact-number" name="ContactNumber" value="<%= contactNumber %>"></td>
                            </tr>
                        </table><br>
                       <table>
  <tr>
    <td>
      <div class="button-row change-email">
        <label for="input-file" style="color: #59E3FF; text-decoration: underline; cursor: pointer;">Update Image?</label>
        <input type="file" accept="image/jpeg, image/png, image/jpg" id="input-file" style="display: none;">
      </div>
    </td>
    <td>
      <a href="ChangePassword.jsp" style="color: #59E3FF;">Change Password</a>
    </td>
  </tr> 
</table>

                         <script>
        window.onload = function() {
            let profilePic = document.getElementById("profile-pic");
            let inputFile = document.getElementById("input-file");
            let chooseFile = document.getElementById("choose-file");

            inputFile.onchange = function() {
                if (validateFile(inputFile)) {
                    profilePic.src = URL.createObjectURL(inputFile.files[0]);
                } else {
                    input.value = ""; // Clear the file input field if validation fails
                }
            };

            document.querySelector('label[for="input-file"]').addEventListener('click', function() {
                chooseFile.click();
            });
        };

        function validateFile(input) {
            var file = input.files[0];
            var allowedTypes = ["image/jpeg", "image/png", "image/jpg"]; // Allowed image types

            if (file && !allowedTypes.includes(file.type)) {
                // File is not an image, show an error message
                alert("Please select a valid image file (JPEG, PNG, JPG).");
                return false;
            }
            return true;
        }
    </script>
              </div>
            </div>
        </div>
         <%@ include file="Footer.html" %>
         <script src="JS/Common.js"></script>  
</body>
</html>

