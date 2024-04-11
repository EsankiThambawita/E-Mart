<%-- 
    Document   : ChangePassword
    Created on : Apr 11, 2024, 7:51:30?PM
    Author     : User
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link href="CSS/ChangePassword.css" rel="stylesheet" />
    </head>
    <body>
         
      <div class="container">
        <div class="form-container profile-form">
             <h2 class="change-password">Change Password</h2>
               <form method="post" action="Profile.jsp">
            <table>
                 <tr>
                     <th>Enter Current Password</th>
                     <td><input type="password" id="currentpassword" name="currentpassword"></td>
                 </tr>
                 <tr>
                    <th>Enter New Password</th>
                    <td><input type="password" id="newpassword" name="newpassword"></td>
                 </tr>
                 <tr>
                    <th>Confirm New Password</th>
                    <td><input type="password" id="confirmpassword" name="confirmpassword"></td>
                 </tr>
                 
                   <tr>
                    <td colspan="2"><button class="apply-button">Apply</button></td>
                </tr> 
            </table>
        </div>
      </div>
</body>
</html>
    
