<!-- Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon -->

<!-- Author: O.Tsolmon
Date: 09/03/2023 -->

<!DOCTYPE html>
<html>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
<title>Register User</title>
<link rel="stylesheet" type="text/css"
	href="css/registrationPageStyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.typekit.net/lot0wjb.css">
</head>
<body>
	<header>
		<a href="home"><img id = logo src="_images/MB_Title_Logo_3.png"></img></a>
		<!-- USER ICON-->
		<a href="login"><i class="fa fa-user-circle-o"
			style="float: right; font-size: 56px; color: #554D41"></i></a>
	</header>


	<form:form action="/register" method="post" id="registrationForm">
	
		<h1>REGISTER USER</h1>
		
			<label for="firstName">First Name</label> 
			<input type="text" id="firstName" name="firstName" required="required"><br>
		    <label for="lastName">Last Name</label> 
		    <input type="text" id="lastName" name="lastName" required="required"><br> 
			<label for="emailAddress">Email</label> 
			<input type="text" id="emailAddress" name="emailAddress" required="required"><br> 
			<label for="phoneNumber">Phone Number</label> 
			<input type="text" id="phoneNumber" name="phoneNumber" required="required"><br>
			<label for="password">Password</label> 
			<input type="password" id="password" name="password" required="required" oninput="validatePasswordRequirements()"><br> 
            <span id="passwordError" style="color: red;"></span><br> <!-- Error message for password -->
            <label for="confirmPassword">Confirm Password</label> 
            <input type="password" id="confirmPassword" name="confirmPassword" required="required" oninput="validatePassword()"><br> 
            <span id="confirmPasswordError" style="color: red;"></span><br> <!-- Error message for confirm password -->
			<button type="button" onclick="clearFields()" >Cancel</button>
			<button type="submit" id="submitButton" class="disabled-button">Submit</button>
	</form:form>

	<script>
		// Check if passwords requirements are met
		function validatePasswordRequirements() {
			var password = document.getElementById('password').value;
			var passwordError = document.getElementById('passwordError');

			var regex = /^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*]).{8,}$/;

			if (!regex.test(password)) {
				passwordError.textContent = 'Password must have at least 8 characters, 1 uppercase letter, 1 number, and 1 special character (!@#$%^&*).';
			} else {
				passwordError.textContent = '';
			}
		}

		// Check if passwords and confirm password match
		function validatePassword() {
			var password = document.getElementById('password').value;
			var confirmPassword = document.getElementById('confirmPassword').value;
			if (password !== confirmPassword) {
				document.getElementById('confirmPasswordError').textContent = "Passwords do not match.";
				return false;
			} else {
				document.getElementById('confirmPasswordError').textContent = "";
				return true;
			}
		}

		//Clear all fields when the user clicks on Cancel button
		function clearFields() {
			document.getElementById('firstName').value = '';
			document.getElementById('lastName').value = '';
			document.getElementById('emailAddress').value = '';
			document.getElementById('phoneNumber').value = '';
			document.getElementById('password').value = '';
			document.getElementById('confirmPassword').value = '';
			document.getElementById('passwordError').textContent = '';
			document.getElementById('submitButton').disabled = true; // Disable Submit button after clearing fields
		}

		// Check if all required fields are filled to enable the Submit button
		document
				.getElementById('registrationForm')
				.addEventListener(
						'input',
						function() {

							var firstName = document
									.getElementById('firstName').value;
							var lastName = document.getElementById('lastName').value;
							var emailAddress = document
									.getElementById('emailAddress').value;
							var phoneNumber = document
									.getElementById('phoneNumber').value;
							var password = document.getElementById('password').value;
							var confirmPassword = document
									.getElementById('confirmPassword').value;

							var submitButton = document
									.getElementById('submitButton');
							if (firstName && lastName && emailAddress
									&& phoneNumber && password
									&& confirmPassword) {
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
