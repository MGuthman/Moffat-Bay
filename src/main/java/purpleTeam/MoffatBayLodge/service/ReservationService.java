// Author: D.Bonis
// Date: 09/05/2023

package purpleTeam.MoffatBayLodge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import purpleTeam.MoffatBayLodge.bean.Reservation;
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
}
