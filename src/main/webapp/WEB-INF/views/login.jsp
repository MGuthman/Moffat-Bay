<!-- Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon -->

<!-- Author: M.Guthman
Date: 09/03/2023 -->

<!DOCTYPE html>
<html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<head>
	<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="css/loginPageStyle.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://use.typekit.net/lot0wjb.css">
</head>

<body>
	<header>
		<a href="home"><img id=logo src="_images/MB_Title_Logo_3.png"></img></a>
		<!-- USER ICON-->
		<a href="login"><i class="fa fa-user-circle-o" style="float: right; font-size: 56px; color: #554D41"></i></a>
	</header>

	<div class="wrapper">
		<form:form action="/login" method="post" id="loginForm">

			<h1>LOGIN</h1>

			<label for="username">Username or Email Address</label>
			<input type="text" id="username" name="username" required="required"><br>
			<label for="password">Password</label>
			<input type="password" id="password" name="password" required="required"><br>
			<button type="button" onclick="clearFields()">Cancel</button>
			<button type="submit" id="submitButton" class="disabled-button">Login</button>
			<br />
			<br />
			<br />
			<br />
			<a href="/register" method="get">Create New Account</a>
		</form:form>
		<div class="image">
			<img id=login-image src="_images/MoffatBay_Lodge_Photo.jpg"></img>
		</div>
	</div>
	<script>

		//Clear all fields when the user clicks on Cancel button
		function clearFields() {
			document.getElementById('username').value = '';
			document.getElementById('password').value = '';
			document.getElementById('submitButton').disabled = true; // Disable Submit button after clearing fields
		}

		// Check if all required fields are filled to enable the Submit button
		document
			.getElementById('loginForm')
			.addEventListener(
				'input',
				function () {
					var userName = document
						.getElementById('username').value;
					var password = document.getElementById('password').value;
					var submitButton = document
						.getElementById('submitButton');
					if (userName && password) {
						submitButton.disabled = false;
						submitButton.classList
							.remove('disabled-button');
						submitButton.classList.add('enabled-button');
					} else {
						submitButton.disabled = true;
						submitButton.classList.remove('enabled-button');
						submitButton.classList.add('disabled-button');
					}
				});
	</script>

	<div>
		<footer>
			<p>Moffat Bay Lodge </br>
				1234 Moffat Bay AVE</br>
				Joviedsa Island, WA 98550 </br>
				1-800-555-1234
			</p>

			<div class="social-media">
				<a href="#" class="fa fa-twitter"></a>
				<a href="#" class="fa fa-facebook"></a>
				<a href="#" class="fa fa-instagram"></a>
				<a href="#" class="fa fa-snapchat"></a>
			</div>

			<p class="copyright">Copyright &copy; 2023 Moffat Bay</p>

		</footer>
	</div>

</body>

</html>