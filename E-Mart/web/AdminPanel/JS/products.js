/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function handleEditButtonClick(productId) {
    // Redirect to the AdminEditProductServlet with the productId as a parameter
    window.location.href = "/Controller/AdminEditProductServlet.java?productId=" + productId;
}
