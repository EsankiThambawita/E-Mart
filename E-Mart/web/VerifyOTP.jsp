<%-- 
    Document   : VerifyOTP
    Created on : Apr 20, 2024, 12:33:38 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
           <link href="CSS\ForgotPassword.css" rel="stylesheet" type="text/css"/> 
      
    </head>
    <body>
       
       <% String requestId = (String) request.getAttribute("requestId"); %>
    
    <div class="form-wrapper">
      
        <form action="VerifyCodeServlet  "  method=" post">
         
            <h5 style="color:white;">
                Please enter the Verification code,
            </h5>
            <br>
          <label for="text" name="verificationCode">verification Code</label></h4>
            <br>
            <br>
            <div class="form-control">
               <input type="text" name="verificationCode" placeholder="Enter verification code" required>
            </div>

            
  <button class=" " type="submit">Verify</button>
        
              
        </form>  
    </div>
</body> 
</html>
