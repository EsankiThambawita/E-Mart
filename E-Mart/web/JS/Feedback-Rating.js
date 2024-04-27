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


function submitFeedback() {
    // Get feedback value
    var feedbackValue = document.querySelector('input[name="rating"]:checked').value;

    // Send feedback value to the server
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'FeedbackServlet', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            // Feedback submitted successfully
            alert(xhr.responseText); // Show success message
        }
    };
    xhr.send('feedback=' + encodeURIComponent(feedbackValue));
}
