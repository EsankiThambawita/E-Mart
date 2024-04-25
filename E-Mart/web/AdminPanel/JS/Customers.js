/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.addEventListener("DOMContentLoaded", function () {
    const editButtons = document.querySelectorAll(".editBtn");
    const editFormContainer = document.getElementById("editFormContainer");
    const editForm = document.getElementById("editForm");

    editButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            // Show the edit form popup
            editFormContainer.style.display = "block";
        });
    });

    document.getElementById("cancelBtn").addEventListener("click", function () {
        // Hide the edit form popup when cancel button is clicked
        editFormContainer.style.display = "none";
    });

    document.getElementById("saveBtn").addEventListener("click", function () {
        // Handle form submission here (e.g., send data to server or update the DOM)
        // Once saved, hide the edit form popup
        editFormContainer.style.display = "none";
    });
});
