<%-- 
    Document   : ChangeEmail
    Created on : Apr 16, 2024, 6:39:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Email</title>
     <link href="CSS/Common.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/Navbar.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/Footer.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/EmailOTP.css" rel="stylesheet" type="text/css"/>
     <script src="https://smtpjs.com/v3/smtp.js">
</script>
</head>
<body>
  <%@ include file="Navbar.html" %>
        <div class="body-wrapper">

<form id="editForm" action="#" method="post"  style="border: 2px solid #007bff; padding: 20px;"> 
<body>
	<div class="form">
		<h1>Authentication</h1>
		<input type="email" id="email" placeholder="Enter Email...">
		<div class="otpverify">
			<input type="text" id="otp_inp" placeholder="Enter the OTP sent to your Email...">
			<button class="btn" id="otp-btn">Verify</button>
		</div>
		<button class="btn" onclick="sendOTP()">Send OTP</button>
	</div>
    <script>
function sendOTP() {
	const email = document.getElementById('email');
	const otpverify = document.getElementsByClassName('otpverify')[0];

	let otp_val = Math.floor(Math.random() * 10000);

	let emailbody = `<h2>Your OTP is </h2>${otp_val}`;
	Email.send({
    SecureToken : " c1480e6a-3516-418c-848f-80c78f834fe3 ",
    To : email.value,
    From : "fadheesha@gmail.com",
    Subject : "Email OTP using JavaScript",
    Body : emailbody,
}).then(

	message => {
		if (message === "OK") {
			alert("OTP sent to your email " + email.value);

			otpverify.style.display = "flex";
			const otp_inp = document.getElementById('otp_inp');
			const otp_btn = document.getElementById('otp-btn');

			otp_btn.addEventListener('click', () => {
				if (otp_inp.value == otp_val) {
					alert("Email address verified...");
				}
				else {
					alert("Invalid OTP");
				}
			})
		}
	}
);
}       
    </script>
</body>
</html>
