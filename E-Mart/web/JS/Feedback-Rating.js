/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let stars = document.querySelectorAll('input');
let showValue = document.querySelector('#rating-value');

stars.forEach(star => {
    star.addEventListener('click', function() {
        showValue.innerHTML = this.value + " out of 5";
    });
});
