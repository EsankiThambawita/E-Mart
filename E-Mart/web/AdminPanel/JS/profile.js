/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.getElementById("edit-profile-pic-button").addEventListener("click", function() {
    document.getElementById("profile-pic-input").click(); // Simulate a click on the hidden file input
});

document.getElementById("profile-pic-input").addEventListener("change", function() {
    var file = this.files[0]; // Get the selected file
    if (file) {
        // Create a FileReader to read the file
        var reader = new FileReader();
        reader.onload = function(e) {
            var img = new Image();
            img.onload = function() {
                var canvas = document.createElement("canvas");
                var ctx = canvas.getContext("2d");
                
                // Set canvas dimensions to match image dimensions
                canvas.width = 150; // Set your desired width
                canvas.height = 150; // Set your desired height
                
                // Draw the image onto the canvas
                ctx.drawImage(img, 0, 0, canvas.width, canvas.height);
                
                // Update the profile picture image with the cropped image
                document.getElementById("profile-image").src = canvas.toDataURL();
            };
            img.src = e.target.result; // Set the image source to the loaded data URL
        };
        reader.readAsDataURL(file); // Read the file as a data URL
    }
});

