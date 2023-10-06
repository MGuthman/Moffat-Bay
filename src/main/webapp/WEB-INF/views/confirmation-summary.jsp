<!-- Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon -->

<!-- Author: O.Tsolmon
Date: 10/05/2023 -->

<!DOCTYPE html>
<html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>Reservation Summary</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.typekit.net/lot0wjb.css">
<link rel="stylesheet" type="text/css"
	href="css/confirmationSummaryPageStyle.css">
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
			<h1>Your reservation is confirmed!</h1>
			<img src="_images/lobby.png"></img>
			<div class="confirmation-box">
				<p class="confirmation-number">Confirmation Number:
					${reservation.confirmationID}</p>
			</div>

			<div class="reservation-details">

				<form action="/confirmation-success" method="get" target="_self">
					<button type="submit">Back to Home</button>
				</form>

			</div>
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
