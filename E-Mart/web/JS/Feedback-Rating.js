/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
document.addEventListener('DOMContentLoaded', function() {
    const stars = document.querySelectorAll('.star');
    
    stars.forEach(star => {
        star.addEventListener('click', function() {
            const starId = parseInt(star.id.replace('star', ''));
            toggleStars(starId);
        });
    });
});

function toggleStars(clickedStarId) {
    const stars = document.querySelectorAll('.star');
    
    stars.forEach((star, index) => {
        if (index < clickedStarId) {
            star.src = 'Images/OrderConfirmation/Star.png';
        } else {
            star.src = 'Images/OrderConfirmation/Star-Empty.png';
        }
    });
}



