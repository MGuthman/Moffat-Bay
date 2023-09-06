// Author: D.Bonis
// Date: 09/05/2023
package purpleTeam.MoffatBayLodge.bean;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="reservation")
public class Reservation {
    
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "reservationID")
	private String reservationID;

    @Column(name = "userID")
	private int userID;

    @Column(name = "roomSize")
	private String roomSize;

    @Column(name = "numberOfGuests")
	private int numberOfGuests;

    @Column(name = "checkInDate")
	private String checkInDate;

    @Column(name = "checkOutDate")
	private String checkOutDate;

    @Column(name = "totalPrice", precision=5, scale = 2)
	private BigDecimal totalPrice;

    
    //Getter and Setter methods for each variable except being able to set roomId
    public String getReservationId(){
        return reservationID;
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
