<%-- 
    Document   : ForgetPassword
    Created on : Apr 13, 2024, 3:58:48 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
           <link href="CSS/ForgotPassword.css" rel="stylesheet" type="text/css"/> 
           <script type="text/javascript">
 
    $(document).ready(function() {
        $("#resetForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                }      
            },
             
            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address"
                }
            }
        });
 
    });
</script>
    </head>

    <div class="form-wrapper">
        <h2 style="text-align: center;">Forgot Password?</h2>
        <form action="#"  method=" post">
         
            <h5 style="color:white;">
                Please enter your login email, we'll send a new random password to your Email-inbox:
            </h5>
            <br>
            <h4> <label for="email">Email</label></h4>
            
            <br>
            
            <div class="form-control">
                <input type="text" id="email" required>
                <label>emartshop@gmail.com</label>
            </div>

            
  <button class=" " type="submit">Send The New Password</button>
                <h6 style="color:white;">
            Note: for security reason,you must change your password after logging in.Using profile change password.
            </h6>
              
        </form>  
    </div>
</body> 
</html>


