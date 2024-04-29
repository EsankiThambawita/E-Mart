/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function deleteProduct(productId) {
    if (confirm("Are you sure you want to delete this product?")) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/AdminDeleteProductServlet", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                // Reload the page after successful deletion
                location.reload();
            }
        };
        xhr.send("productId=" + productId);
    }
}

