// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon
// Author: D.Bonis
// Date: 09/05/2023
// Updated By: O.Tsolmon 09/09/23 -- Added getLatestReservationByUserID and deleteReservation methods

package purpleTeam.MoffatBayLodge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import purpleTeam.MoffatBayLodge.bean.Reservation;
import purpleTeam.MoffatBayLodge.bean.User;
import purpleTeam.MoffatBayLodge.repository.ReservationRepository;

//The UseService helps as the middle man between the web controller and the data access layer.
//It helps ensure the business logic is applied before data is saved or retrieved from the db.

@Service
public class ReservationService {

	private final ReservationRepository reservationRepository;

	@Autowired
	public ReservationService(ReservationRepository reservationRepository) {
		this.reservationRepository = reservationRepository;
	}

	public Reservation saveReservation(Reservation reservation) {
		return reservationRepository.save(reservation);
	}

	// Gets the latest reservation entry in the db by user id in desc order.
	public Reservation getLatestReservationByUserID(int userID) {
		return reservationRepository.findTop1ByUserIDOrderByReservationIDDesc(userID);
	}

	// Deletes the reservation object from the db.
	public void deleteReservation(Reservation reservation) {
		reservationRepository.delete(reservation);
	}

	public Reservation lookupConfirmationById (String confirmationID) {
		return reservationRepository.findByConfirmationID(confirmationID);
	}
}
