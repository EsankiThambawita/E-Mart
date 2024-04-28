/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function showProducts(category) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            // Update table with received data
            document.getElementById("productTable").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "ProductsServlet?category=" + category, true);
    xhttp.send();
}