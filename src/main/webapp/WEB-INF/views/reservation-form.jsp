<!DOCTYPE html>
<!--
    D.Bonis
    09/05/23

    Reservation Requesting Page
    Update - 09/7/23 -- Added comments, added toHome, added roomPrice with logic
    Update - 09/8/23 -- Made it clear previous fill in on page load, added springboot
                        specific form tag, added total value in hidden attribute, now saves to database no problem
-->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <title>Reservation Form</title>
    <link rel="stylesheet" type="text/css" href="css/reservationFormStyle.css">
</head>
<body>
    <header>
		<a href="home"><img id=logo src="_images/MB_Title_Logo_3.png"></img></a>
		<!-- USER ICON-->
		<a href="login"><i class="fa fa-user-circle-o" style="float: right; font-size: 56px; color: #554D41"></i></a>
	</header>


     <!-- Form that lets you fill out roomSize, numberOfGuests, checkInDate, and checkOut Date
             ReservationId Is Generated, UserId is used from login, and total price is determined by number of guests and days-->
    <form:form action="/reservation" method="POST" id="reservationForm">
    <div class="fullForm">
		<h1>Reservation Form</h1>
		
            <div class="formTop">
                <div class="picker">
                    <h2>Check In Date:</h2> <br>
                    <input type="date" id="checkInDate" name="checkInDate" required></input>
                </div>
                
                <div class="picker">
                    <h2>Check Out Date:</h2> <br>
                    <input type="date" id="checkOutDate" name="checkOutDate" required></input>
                </div>
                
                <div class="picker">
                    <h2>Number Of Guests:</h2> <br>
                    <select id="numberOfGuests" name="numberOfGuests required">
                        <option value=1>1</option>
                        <option value=2>2</option>
                        <option value=3>3</option>
                        <option value=4>4</option>
                        <option value=5>5</option>
                        <!-- The Max Number of Guests allowed to stay in one room is 5 as per the project requirements-->
                    </select>
                </div>
            </div>
            <br>
            <h2>Room Size:</h2>
            <br>
            <div id="roomSelection">
                <div class="roomSize">
                    <label for="doubleFull">
                        <input type="radio" id="doubleFull" name="roomSize" value="Double Full" required></input>Two Full Sized Beds
                    </label>
                </div>
                
                <div class="roomSize">
                    <label for="queen">
                        <input type="radio" id="queen" name="roomSize" value="Queen"></input>Queen Sized Bed
                    </label>
                </div>
                
                <div class="roomSize">
                    <label for="doubleQueen">
                        <input type="radio" id="doubleQueen" name="roomSize" value="Double Queen">Two Queen Sized Beds</input>
                    </label>
                </div>
                
                <div class="roomSize">
                    <label for="king">
                        <input type="radio" id="king" name="roomSize" value="King">King Sized Bed</input>
                    </label>
                </div>
            </div>
            <button type="button" onclick="clearFields()">Clear</button>
			<button type="submit" id="submitButton" class="disabled-button">Reserve</button>
            <br><br>
            <div class="roomPrice">
                <h2>Price for room:</h2>
                <p>$<span id="total" name="total">0.00</span></p>
                <input type="hidden" id="totalPrice" name="totalPrice" value=0></input>
            </div>
            
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

    <p><a href="home" id="toHome">To Home</a></p>

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

    <!-- Javascript -->
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
            submitButton.classList.remove('enabled-button');
            submitButton.classList.add('disabled-button');
		}

		// Check if all required fields are filled to enable the Submit button
		document.getElementById('reservationForm').addEventListener('input',

				function () {
					var checkInDate = document.getElementById('checkInDate').value;
                    var checkOutDate = document.getElementById('checkOutDate').value;
					var numberOfGuests = document.getElementById('numberOfGuests').value;
                    var roomSize = document.getElementById('doubleFull').checked || document.getElementById('queen').checked || document.getElementById('doubleQueen').checked || document.getElementById('king').checked;
                    getTotalPrice();


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

        function daysBetween(){
            //Try to get the values of checkin and checkout, on fail return 0
            var checkInDate = document.getElementById('checkInDate').value;
            var checkOutDate = document.getElementById('checkOutDate').value;


            //Time of one day in 'time'
            const oneDay = 1000 * 60 * 60 * 24;
            //Parse the string values of checkIn and checkOut
            var day1 = new Date(Date.parse(checkInDate));
            var day2 = new Date(Date.parse(checkOutDate));
            
            //gets the number of days difference between day 1 and day 2
            var difference = (day2.getTime() - day1.getTime()) / oneDay;
            
            //Prevents it from sending a null item
            if(isNaN(difference)){
                 return 0;
            }
            else{
                return difference;
            }
                 

        }

        //Get the total price for the room 
        function getTotalPrice(){
            var twoOrLessRate = 120.75; //Room rate * 5% increase per email
            var threeOrMoreRate = 157.50;
            var totalPrice;

            try {
                var days = daysBetween();
                var numberOfGuests = document.getElementById('numberOfGuests').value;
                
            } catch (error) {
                document.getElementById('total').innerText = 0.00;
                document.getElementById("totalPrice").value = 0;
                return;
            }


            if(numberOfGuests >= 3){
                totalPrice = (threeOrMoreRate * days).toFixed(2);
                document.getElementById('total').innerText = totalPrice;
                document.getElementById('totalPrice').value = totalPrice;
            }
            else{
                totalPrice = (twoOrLessRate * days) .toFixed(2);
                document.getElementById('total').innerText = totalPrice;
                document.getElementById('totalPrice').value = totalPrice;
            }
        }

        //Sets the minimum dates for checkInDate and CheckOutDate to today and tomorrow respectively
        day1 = new Date();
        day2 = new Date();
        day2.setDate(day1.getDate()+1);
        checkInDate.min = day1.toLocaleDateString('en-ca');
        checkOutDate.min = day2.toLocaleDateString('en-ca');

        //Clear all fields on load
        clearFields();
    </script>
</body>


</html>