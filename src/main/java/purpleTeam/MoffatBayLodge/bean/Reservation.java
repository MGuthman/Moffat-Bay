// Author: D.Bonis
// Date: 09/05/2023
// Update 9/7/23 Changed names to snake case per Oyun comment
// Update 9/8/23 Removed Generated Value and it now works with database
package purpleTeam.MoffatBayLodge.bean;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="reservation")
public class Reservation {
    
    @Id
	@Column(name = "reservationID")
	private String reservationID;

    @Column(name = "user_id")
	private int userID;

    @Column(name = "roomsize")
	private String roomSize;

    @Column(name = "numberofguests")
	private int numberOfGuests;

    @Column(name = "checkindate")
	private String checkInDate;

    @Column(name = "checkoutdate")
	private String checkOutDate;

    @Column(name = "totalprice", precision=5, scale = 2)
	private BigDecimal totalPrice;

    
    //Getter and Setter methods for each variable
    public String getReservationId(){
        return reservationID;
    }

    public void setReservationId(String reservationID){
        this.reservationID = reservationID;
    }

    public int getUserID(){
        return userID;
    }

    public void setUserID(int userID){
        this.userID = userID;
    }

    public String getRoomSize(){
        return roomSize;
    }

    public void setRoomSize(String roomSize){
        this.roomSize = roomSize;
    }

    public int getNumberOfGuests(){
        return numberOfGuests;
    }

    public void setNumberOfGuests(int numberOfGuests){
        this.numberOfGuests = numberOfGuests;
    }

    public String getCheckInDate(){
        return checkInDate;
    }

    public void setCheckInDate(String checkInDate){
        this.checkInDate = checkInDate;
    }

    public String getCheckOutDate(){
        return checkOutDate;
    }

    public void setCheckOutDate(String checkOutDate){
        this.checkOutDate = checkOutDate;
    }

    public BigDecimal getTotalPrice(){
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice){
        this.totalPrice = totalPrice;
    }
}
