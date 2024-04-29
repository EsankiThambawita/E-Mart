/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function saveProduct() {
    // Get form data
    var productId = document.getElementById("productId").value;
    var productName = document.getElementById("productName").value;
    var category = document.getElementById("category").value;
    var pieces = document.getElementById("pieces").value;
    var price = document.getElementById("price").value;

    // Validate form data
    if (!productId || !productName || !category || !pieces || !price) {
        alert("Please fill out all fields.");
        return;
    }

    // Create form data object
    var formData = new FormData();
    formData.append("productId", productId);
    formData.append("productName", productName);
    formData.append("category", category);
    formData.append("pieces", pieces);
    formData.append("price", price);

    // AJAX request to servlet
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "/AdminAddProductServlet", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                // Show success message after successful insertion
                alert("New product added");
                // Reload the page after successful insertion
                location.reload();
            } else {
                // Show error message if insertion fails
                alert("Failed to add new product. Please try again. Status: " + xhr.status);
                console.error(xhr.statusText);
            }
        }
    };
    xhr.send(formData); // Send form data to servlet
}

