// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon 
// Author: D.Bonis
// Date: 09/05/2023
// Update 9/7/23 Changed names to snake case per Oyun comment
// Update 9/8/23 Removed Generated Value and it now works with database

// Updated By: O.Tsolmon
// 09/09/23 Updated column names and added confirmationID
package purpleTeam.MoffatBayLodge.bean;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "reservation")
public class Reservation {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "reservation_id")
	private int reservationID;

	@Column(name = "user_id")
	private int userID;

	@Column(name = "room_size")
	private String roomSize;

	@Column(name = "number_of_guests")
	private int numberOfGuests;

	@Column(name = "check_in_date")
	private String checkInDate;

	@Column(name = "check_out_date")
	private String checkOutDate;

	@Column(name = "total_price", precision = 5, scale = 2)
	private BigDecimal totalPrice;

	@Column(name = "confirmation_id")
	private String confirmationID;

	// Getter and Setter methods for each variable
	public int getReservationId() {
		return reservationID;
	}

	public void setReservationId(int reservationID) {
		this.reservationID = reservationID;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getRoomSize() {
		return roomSize;
	}

	public void setRoomSize(String roomSize) {
		this.roomSize = roomSize;
	}

	public int getNumberOfGuests() {
		return numberOfGuests;
	}

	public void setNumberOfGuests(int numberOfGuests) {
		this.numberOfGuests = numberOfGuests;
	}

	public String getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}

	public String getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getConfirmationID() {
		return confirmationID;
	}

	public void setConfirmationID(String confirmationID) {
		this.confirmationID = confirmationID;
	}
}
