<%-- 
    Document   : Profile
    Created on : Apr 11, 2024, 7:48:20?PM
    Author     : User
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
        <link href="CSS/Profile.css" rel="stylesheet" type="text/css"/>
         <script>
        function updateFileName() {
            var fileInput = document.getElementById('profile-picture');
            var fileName = fileInput.value.split('\\').pop(); // Get the file name
            var fileNamePlaceholder = document.getElementById('file-name-placeholder');
            fileNamePlaceholder.textContent = fileName || "No file chosen"; // Update the content of the placeholder span
        } 
    </script>
</head>
<body>
    <div class="container">
        <div class="sidebar"><br>
            <div class="sidebar-item">
                <a href="Profile.jsp">
                  <img src="Images/Profile/ProfileIcon.png">                    
                    <span>Profile</span>
                </a>
            </div>
            <div class="sidebar-item">
                <a href="TrackOrder.jsp">
              <img src="Images/Profile/TrackOrder.png">
                <span>Track Current Orders</span>
                </a>
            </div>
            <div class="sidebar-item">
                <a href="OrderHistory.jsp">
              <img src="Images/Profile/OrderHistoryIcon.png">
                <span>Order History</span>
                </a>
            </div>
            <div class="sidebar-item">
                 <a href="MyReturns.jsp">
                     <img src="Images/Profile/MyReturnsIcon.png"><br>
                    <span>My<br> Returns</span>
                </a>
            </div>
        </div>

        <div class="form-container profile-form">
        <div class="user-image-container">
                <img src="Images/Profile/ProfilePlaceholder.png">
            </div>
           <form action="ProfilePictureServlet" method="post" enctype="multipart/form-data">
                <table>
                    <tr> 
                        <th><h1>Profile</h1></th>
                        <th><div class="user-image"></div></th>   
                    </tr>
                 <tr>
                     <th>Username</th>
                      <th>Password</th>
                       <th>Email</th>
                      
                 </tr>
                 <tr>
                    <td><input type="text" id="username" name="username"></td>
                    <td><input type="email" id="email" name="email"></td>
                    <td><input type="password" id="password" name="password"></td>
                 </tr>   
                 <tr>
                     <th>Contact Number</th>
                 </tr>
                 <tr>
                     <td><input type="tel" id="contact-number" name="contact-number"></td>
                 </tr>
            </table>
            <div class="change-password">
                 <a href="ChangePassword.jsp">Change Password?</a>
           </div><br>
            <div class="button-row">
                    <label for="profile-picture" class="choose-file-label" style="color: white;">Change Profile Picture?</label>
                    <input type="file" id="profile-picture" name="profile-picture" accept="image/*" onchange="updateFileName()">
                    <input type="submit" value="Save" class="save-button">
                </div>
                <div>   
        </form>
</div>
</div>
</body>
</html>

