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
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Reload the page after successful insertion
            location.reload();
        }
    };
    xhr.send(formData); // Send form data to servlet
}
