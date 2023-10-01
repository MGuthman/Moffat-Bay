<!-- Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon -->

<!-- Author: O.Tsolmon
Date: 09/09/2023 -->

<!DOCTYPE html>
<html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>Reservation Summary</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.typekit.net/lot0wjb.css">
<link rel="stylesheet" type="text/css"
	href="css/reservationSummaryStyle.css">
</head>
<body>
	<header>
		<a href="home"><img id=logo src="_images/MB_Title_Logo_3.png"></img></a>
		<!-- USER ICON-->
		<a href="login"><i class="fa fa-user-circle-o"
			style="float: right; font-size: 56px; color: #554D41"></i></a>
	</header>

	<div class="reservation-summary-container">
		<div class="confirmation-container">
			<h1>Reservation Summary</h1>
			<div class="confirmation-box">
				<p class="confirmation-number">Confirmation Number:
					${reservation.confirmationID}</p>
			</div>
			<div class="check-in-out-time">
				<p>Check-In Time: 3:00 PM</p>
				<p>Check-Out Time: 12:00 PM</p>
			</div>
			<div class="lodge-detail">
				<h3>Lodge Details:</h3>
				<ul>
					<li>Convenient location</li>
					<li>5-minute walk to bike rental</li>
					<li>10-minute walk to shopping center</li>
					<li>2 miles from the airport</li>
					<li>Meeting and banquet rooms available</li>
					<li>Full-service restaurant and bar on-site</li>
				</ul>
			</div>
		</div>
		<div class="reservation-details">
			<img src="_images/lodge-img.png"></img>
			<p>Room Size: ${reservation.roomSize}</p>
			<p>Guests: ${reservation.numberOfGuests}</p>
			<p>Check-In Date: ${reservation.checkInDate}</p>
			<p>Check-Out Date: ${reservation.checkOutDate}</p>
			<br />
			<p class="total-price">Total Price: ${reservation.totalPrice}</p>
			<br />

			<form action="/cancel-reservation" method="get" target="_self">
				<button type="submit">Cancel</button>
			</form>
			<form action="/confirm-reservation" method="get" target="_self">
				<button type="submit">Confirm</button>
			</form>
		</div>
	</div>

	<div>
		<footer>
			<p>
				Moffat Bay Lodge </br> 1234 Moffat Bay AVE</br> Joviedsa Island, WA 98550 </br>
				1-800-555-1234
			</p>

			<div class="social-media">
				<a href="#" class="fa fa-twitter"></a> <a href="#"
					class="fa fa-facebook"></a> <a href="#" class="fa fa-instagram"></a>
				<a href="#" class="fa fa-snapchat"></a>
			</div>

			<p class="copyright">Copyright &copy; 2023 Moffat Bay</p>

		</footer>
	</div>

</body>
</html>
