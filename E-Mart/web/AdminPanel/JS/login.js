/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


    document.getElementById("loginButton").addEventListener("click", function() {
        var email = document.getElementById("email").value.trim();
        var password = document.getElementById("password").value.trim();
        
        // Basic validation
        if (email === "" || password === "") {
            alert("Please fill in both email and password fields.");
            return; // Prevent form submission
        }

        // Submit the form if validation passes
        document.getElementById("loginForm").submit();
    });


