// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon
// Author: D. Bonis
// Date: 09/05/2023
// Updated By: O.Tsolmon 09/09/23 -- Added findTop1ByUserIDOrderByReservationIDDesc

package purpleTeam.MoffatBayLodge.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import purpleTeam.MoffatBayLodge.bean.Reservation;

//This reservation repository interface provides an abstraction layer over the underline database. 
//It makes it easier to interact with a database.
//It extends JpaRepository which provides all the crud operations needed for the objects (create, read, updated, and delete).

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Long> {

	// Derived Query Method: https://www.baeldung.com/spring-data-derived-queries
	// Built into framework to know to search for EmailAdress field/data
	public Reservation findByUserID(int userId);

	// Find the latest reservation id by using the user id -> the field names used
	// in the method name have to match the same naming convention as they were
	// declared in the bean.
	Reservation findTop1ByUserIDOrderByReservationIDDesc(int userID);
}
