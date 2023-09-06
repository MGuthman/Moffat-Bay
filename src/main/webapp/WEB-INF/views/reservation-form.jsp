<!DOCTYPE html>
<!--
    D.Bonis
    09/05/23

    Reservation Requesting Page
-->
<html lang="en">

<head>
    <title>Reservation Form</title>
    <link rel="stylesheet" type="text/css" href="css/loginPageStyle.css">
    <link rel="stylesheet" type="text/css" href="css/reservationFormStyle.css">
</head>
<body>
    <form:form action="/reservation" method="post" id="reservationForm">
	
        <!-- Form that lets you fill out roomSize, numberOfGuests, checkInDate, and checkOut Date
             ReservationId Is Generated, UserId is used from login, and total price is determined by number of guests and days-->
    <div class="fullForm">
		<h1>Reservation Form</h1>
		
            <div class="formTop">
                <div class="picker">
                    <h2>Check In Date:</h2> <br>
                    <input type="date" name="checkInDate"></input>
                </div>
                
                <div class="picker">
                    <h2>Check Out Date:</h2> <br>
                    <input type="date" name="checkOutDate"></input>
                </div>
                
                <div class="picker">
                    <h2>Number Of Guests:</h2> <br>
                    <select name="numberOfGuests">
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option value=3>3</option>
                        <option value=4>4</option>
                        <option value=5>5</option>
                        <option value=6>6</option>
                        <option value=7>7</option>
                        <option value=8>8</option>
                        <option value=9>9</option>
                    </select>
                </div>
            </div>
            <br>
            <h2>Room Size:</h2>
            <br>
            <div id="roomSelection">
                <div class="roomSize">
                    <input type="radio" id="doubleFull" name="roomSize" required="required">Two Full Sized Beds</input>
                </div>
                
                <div class="roomSize">
                    <input type="radio" id="queen" name="roomSize" required="required">Queen Sized Bed</input>
                </div>
                
                <div class="roomSize">
                    <input type="radio" id="doubleQueen" name="roomSize" required="required">Two Queen Sized Beds</input>
                </div>
                
                <div class="roomSize">
                    <input type="radio" id="king" name="roomSize" required="required">King Sized Bed</input>
                </div>
            </div>
			<button type="button" onclick="clearFields()">Cancel</button>
			<button type="submit" id="submitButton" class="disabled-button">Reserve</button>
        </div>
	</form:form>
</body>


</html>