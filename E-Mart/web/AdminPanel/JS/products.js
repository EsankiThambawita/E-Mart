/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function showProducts(category) {
        // Send an AJAX request to fetch products of the selected category
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // Update the table with the received data
                document.getElementById("productTable").innerHTML = this.responseText;
            }
        };
        xhttp.open("GET", "getProducts.jsp?category=" + category, true);
        xhttp.send();
    }
