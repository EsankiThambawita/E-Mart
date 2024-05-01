<%-- 
    Document   : resetPassword
    Created on : Apr 20, 2024, 12:53:48 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>reset Password</title>
           <link href="CSS\ForgotPassword.css" rel="stylesheet" type="text/css"/> 
           
    </head>

    <div class="form-wrapper">
        <h2 style="text-align: center;">Reset Password!</h2>
        <form action="UpdatePasswordServlet  "  method=" post">
         
            <br>
            <h4> <label for="mobileNumber" name="mobileNumber">Enter new password</label></h4>
            
            <br>
            
            <div class="form-control">
               <input type="password" name="password" placeholder="Enter new password" required>
            </div>
            
 <h4> <label for="Confirmnewpassword" name="Confirmnewpassword">Confirm new password</label></h4>
            
            <br>
            
            <div class="form-control">
                 <input type="password" name="confirmPassword" placeholder="Confirm new password" required>
          
            </div>
            
  <button class=" " type="submit">Submit</button>
             
              
        </form>  
    </div>
</body> 
</html>