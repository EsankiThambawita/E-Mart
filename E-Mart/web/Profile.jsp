<%-- 
    Document   : Profile
    Created on : Apr 11, 2024, 7:48:20?PM
    Author     : User
--%>
<%@ page import="Model.SignUpUser" %>
<%@ page import="Model.userDao" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
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
        <%@ include file="Navbar.jsp" %>
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
                    <br>
                    <h1>Profile</h1>
                    <%
                        SignUpUser user = (SignUpUser) request.getAttribute("user");
                        if (user != null) {
                    %>
                    <p>Name: <%= user.getUsername() %></p>
                    <br>
                    <p>Email: <%= user.getEmail() %></p>
                    <br>
                    <p> Contact Number:<%= user.getContactNumber() %></p>
                    <!-- Add more fields as needed -->
                    <% } else { %>
                    <p><span style="font-weight: bold;">Name:</span> <%= session.getAttribute("username")%></p>
                    <br>
                    <p><span style="font-weight: bold;">Email:</span><%= session.getAttribute("email")%> </p>
                    <br>
                    <p> <span style="font-weight: bold;">Contact Number:</span><%= session.getAttribute("contactNumber")%></p>
                    <% } %>
                    <form action="ProfilePictureServlet" method="post" enctype="multipart/form-data">
                        <table>
                            <tr>
                                <td>
                                    <div class="button-row change-email">
                                        <label for="input-file" style="color: #59E3FF; text-decoration: underline; cursor: pointer;">Update Image</label>
                                        <input type="file" accept="image/jpeg, image/png, image/jpg" id="input-file" style="display: none;">
                                    </div>
                                </td>
                                <td>
                                    <a href="ChangePassword.jsp" style="color: #59E3FF;">Change Password</a>
                                </td>
                            </tr> 
                        </table>
                    </form>
                    <br>
                    <p style="text-align: center;"><a href="#" id="logout-link" style="color: white;">Log Out</a></p>
                    <script>
                        window.onload = function () {
                            let profilePic = document.getElementById("profile-pic");
                            let inputFile = document.getElementById("input-file");
                            let chooseFile = document.getElementById("choose-file");

                            inputFile.onchange = function () {
                                if (validateFile(inputFile)) {
                                    profilePic.src = URL.createObjectURL(inputFile.files[0]);
                                } else {
                                    input.value = ""; // Clear the file input field if validation fails
                                }
                            };

                            document.querySelector('label[for="input-file"]').addEventListener('click', function () {
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
                        document.getElementById("logout-link").addEventListener("click", function (event) {
                            event.preventDefault(); // Prevent default behavior of the anchor tag

                            // Send an AJAX request to the server to invalidate the session
                            var xhr = new XMLHttpRequest();
                            xhr.open("GET", "LogoutServlet", true); // Replace "LogoutServlet" with the actual servlet URL for logout
                            xhr.onreadystatechange = function () {
                                if (xhr.readyState === 4 && xhr.status === 200) {
                                    // Redirect the user to the login page or any other appropriate page after logout
                                    window.location.href = "index.jsp"; // Replace "login.html" with the actual login page URL
                                }
                            };
                            xhr.send();
                        });
                    </script>
                </div>
            </div>
        </div>
        <%@ include file="Footer.html" %>
        <script src="JS/Common.js"></script>  
        <%
            if (session == null || session.getAttribute("email") == null) {
                response.sendRedirect("SignIn.jsp"); // Redirect to the login page if not logged in
            }
        %>
    </body>
</html>

