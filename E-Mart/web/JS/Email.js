/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

window.addEventListener('DOMContentLoaded', function() {
    // Retrieve the emailSent attribute value from the HTML element
    var emailSent = document.getElementById("emailSent").value;

    // Convert the attribute value to a boolean
    emailSent = (emailSent === "true");

    // Show notification based on the value of emailSent
    if (emailSent) {
        alert("Email sent successfully!");
    } else {
        alert("Failed to send the email. Please try again later.");
    }
});

