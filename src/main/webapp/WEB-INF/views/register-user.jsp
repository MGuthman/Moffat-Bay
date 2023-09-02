<!DOCTYPE html>
<html>
<head>
<title>Register User</title>
</head>
<body>
	<h2>Register User</h2>
	<p>Welcome</p>

	<form action="/register" method="post">

		<label for="firstName">First Name:</label> 
		<input type="text" id="firstName" name="firstName"><br> 
		
		<label for="lastName">Last Name:</label>
		<input type="text" id="lastName" name="lastName"><br>
		 
		<label for="emailAddress">Email:</label> 
		<input type="text" id="emailAddress" name="emailAddress"><br> 
		
		<label for="phoneNumber">PhoneNumber:</label> 
		<input type="text" id="phoneNumber" name="phoneNumber"><br>

		<label for="password">Password:</label> 
		<input type="password" id="password" name="password"><br>


		<button type="submit">Register</button>
		<button type="submit">Cancel</button>
	</form>
</html>
