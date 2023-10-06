<!-- Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon -->

<!-- Author: M.Guthman
Date: 09/13/2023 

Updated By: O.Tsolmon
Date: 10/05/2023 Updated image

-->

<!DOCTYPE html>
<html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

	<head>
		<title>Reservation Lookup</title>
		<link rel="stylesheet" type="text/css" href="css/reservationLookupStyle.css">
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://use.typekit.net/lot0wjb.css">
	</head>

	<body>
		<header>
			<a href="home"><img id=logo src="_images/MB_Title_Logo_3.png"></img></a>
			<!-- USER ICON-->
			<a href="login"><i class="fa fa-user-circle-o"
					style="float: right; font-size: 56px; color: #554D41"></i></a>
			<div class="navbar">

				<div class="nav-grid-container">

					<div class="nav-grid-item">

					</div>

					<div class="nav-grid-item">

						<a href="about-us" target="_self">ABOUT US</a>
					</div>

					<div class="nav-grid-item">

						<a href="attractions" target="_self">ATTRACTIONS</a>

					</div>

					<div class="nav-grid-item">

						<a href="lookup" target="_self">FIND RESERVATION</a>

					</div>

					<div class="nav-grid-item">

						<a href="reservation" target="_self">MAKE RESERVATION</a>

					</div>

				</div>
			</div>
		</header>


		<div class="wrapper">
			<div class="lookup-form">
				<form:form action="/lookup" method="post" id="lookupForm">

					<h1>Lookup Existing Reservation</h1>

					<label for="confirmation">Confirmation Code</label>
					<input type="text" id="confirmation" name="confirmation" required="required"><br>
					<p id="lookupError">${lookupError}</p>
					<button type="button" onclick="clearFields()">Cancel</button>
					<button type="submit" id="submitButton" class="disabled-button">Lookup</button>
					<br />
					<br />
					<br />
					<br />
				</form:form>
				<p id="makeReservation">Need to make a reservation? <a href="/reservation" method="get">Make Reservation Here</a></p>
			</div>
		</div>

		<div class="wrapper">
			<div class="lookup-information">
				<div class="confirmation-container">
					<p class="confirmation-number"><span style="font-weight:bold">CONFIRMATION NUMBER:</span>
						<span style="text-transform: uppercase">${reservation.confirmationID}</span></p>
				</div>
				<div class="reservation-details">
					<div class="reservation-img">
						<img src="_images/reservation-img.png"></img>
					</div>
					<div class="reservation-text">
						<table>
							<tr>
								<th>Room Size:</th>
								<td>${reservation.roomSize}</td>
							</tr> 
							<tr>
								<th>Guests:</th>
								<td>${reservation.numberOfGuests}</td>
							</tr>
							<tr>
								<th>Check-In Date:</th>
								<td>${reservation.checkInDate}</td>
							</tr>
							<tr>
								<th>Check-Out Date:</th>
								<td>${reservation.checkOutDate}</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>

		<script>

			//Clear all fields when the user clicks on Cancel button
			function clearFields() {
				document.getElementById('confirmation').value = '';
				document.getElementById('submitButton').disabled = true; // Disable Submit button after clearing fields
			}

			// Check if all required fields are filled to enable the Submit button
			document
				.getElementById('lookupForm')
				.addEventListener(
					'input',
					function () {
						var confirmation = document
							.getElementById('confirmation').value;
						if (confirmation) {
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