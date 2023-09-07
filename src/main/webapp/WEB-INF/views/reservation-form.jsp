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
    <header>
		<a href="home"><img id=logo src="_images/MB_Title_Logo_3.png"></img></a>
		<!-- USER ICON-->
		<a href="login"><i class="fa fa-user-circle-o" style="float: right; font-size: 56px; color: #554D41"></i></a>
	</header>


    <form:form action="/reservation" method="post" id="reservationForm">
	
        <!-- Form that lets you fill out roomSize, numberOfGuests, checkInDate, and checkOut Date
             ReservationId Is Generated, UserId is used from login, and total price is determined by number of guests and days-->
    <div class="fullForm">
		<h1>Reservation Form</h1>
		
            <div class="formTop">
                <div class="picker">
                    <h2>Check In Date:</h2> <br>
                    <input type="date" id="checkInDate" name="checkInDate"></input>
                </div>
                
                <div class="picker">
                    <h2>Check Out Date:</h2> <br>
                    <input type="date" id="checkOutDate" name="checkOutDate"></input>
                </div>
                
                <div class="picker">
                    <h2>Number Of Guests:</h2> <br>
                    <select id="numberOfGuests" name="numberOfGuests">
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
                    <label for="doubleFull">
                        <input type="radio" id="doubleFull" name="roomSize" required="required"></input>Two Full Sized Beds
                    </label>
                </div>
                
                <div class="roomSize">
                    <label for="queen">
                        <input type="radio" id="queen" name="roomSize" required="required"></input>Queen Sized Bed
                    </label>
                </div>
                
                <div class="roomSize">
                    <label for="doubleQueen">
                        <input type="radio" id="doubleQueen" name="roomSize" required="required">Two Queen Sized Beds</input>
                    </label>
                </div>
                
                <div class="roomSize">
                    <label for="king">
                        <input type="radio" id="king" name="roomSize" required="required">King Sized Bed</input>
                    </label>
                </div>
            </div>
            <button type="button" onclick="clearFields()">Cancel</button>
			<button type="submit" id="submitButton" class="disabled-button">Reserve</button>
            
        </div>
	</form:form>
    
    <!-- For the room descriptions on the right of the page-->
    <div class="roomDesc">
        <div class="likeFigure">
            <img src="_images/double-full.jpg"></img>
            <ui>
                <li>Two Full Beds</li>
                <li>Sleeps Up to 4</li>
                <li>Access to Patio</li>
            </ul>
        </div>
        <div class="likeFigure">
            <img src="_images/queen-room.jpg"></img>
            <ui>
                <li>One Queen Bed</li>
                <li>Sleeps Up to 2</li>
                <li>Access to Patio</li>
                <li>Small lounging area</li>
            </ul>
        </div>
        <div class="likeFigure">
            <img src="_images/double-queen.jpg"></img>
            <ui>
                <li>Two Queen Beds</li>
                <li>Sleeps Up to 4</li>
                <li>Office Desk</li>
                <li>Microwave</li>
            </ul>
        </div>
        <div class="likeFigure">
            <img src="_images/king-room.jpg"></img>
            <ui>
                <li>One King Bed</li>
                <li>Sleeps Up to 2</li>
                <li>Pleasant View</li>
            </ul>
        </div>
    </div>

    <!-- Consistent Footer -->
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

    <script>
        //Clear all fields when the user clicks on Cancel button
		function clearFields() {
            document.getElementById('checkInDate').value = '';
            document.getElementById('checkOutDate').value = '';
			document.getElementById('numberOfGuests').value = 1;

            //Clear all radio buttons of selection
            var ele = document.getElementsByName("roomSize");
                for(var i=0;i<ele.length;i++)
                    ele[i].checked = false;

			document.getElementById('submitButton').disabled = true;// Disable Submit button after clearing fields
		}

		// Check if all required fields are filled to enable the Submit button
		document.getElementById('reservationForm').addEventListener('input',

				function () {
					var checkInDate = document.getElementById('checkInDate').value;
                    var checkOutDate = document.getElementById('checkOutDate').value;
					var numberOfGuests = document.getElementById('numberOfGuests').value;
                    
                    var roomSize = document.getElementById('doubleFull').checked || document.getElementById('queen').checked || document.getElementById('doubleQueen').checked || document.getElementById('king').checked;

					if (checkInDate && checkOutDate && numberOfGuests && roomSize) {
						submitButton.disabled = false;
						submitButton.classList.remove('disabled-button');
						submitButton.classList.add('enabled-button');
                        
					} else {
						submitButton.disabled = true;
						submitButton.classList.remove('enabled-button');
						submitButton.classList.add('disabled-button');
					}
				});
    </script>
</body>


</html>