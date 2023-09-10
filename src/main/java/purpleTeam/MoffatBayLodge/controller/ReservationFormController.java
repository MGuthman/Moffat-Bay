package purpleTeam.MoffatBayLodge.controller;

/* Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon 
 * Dylan Bonis
 * 09/07/23
 * 
 * Controller for Reservation form where it maps the get and post requests via ModelAndView object.
 * 
 * 
 * Updated By: O.Tsolmon
 * 09/09/23
 * 
 * Updated saveReservation method 
 * Created cancelReservation and confirmReservation methods
 */
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import jakarta.servlet.http.HttpSession;
import purpleTeam.MoffatBayLodge.bean.Reservation;
import purpleTeam.MoffatBayLodge.bean.User;
import purpleTeam.MoffatBayLodge.service.ReservationService;
import purpleTeam.MoffatBayLodge.service.UserService;

@Controller
public class ReservationFormController {

	@Autowired
	private final ReservationService reservationService;

	@Autowired
	UserService userService;

	@Autowired
	HttpSession session;

	public ReservationFormController(ReservationService reservationService) {
		this.reservationService = reservationService;
	}

	// Maps the get request to the login page if session doesn't have an email
	// attached, otheriwse it goes to reservation page
	@GetMapping("/reservation")
	public ModelAndView showRegistrationForm(Model model, @ModelAttribute("user") User user) {

		if (getSessionEmail().equals("")) {
			ModelAndView loginFormView = new ModelAndView("login");
			return loginFormView;
		}

		ModelAndView reservationFormView = new ModelAndView("reservation-form");
		reservationFormView.addObject("reservation", new Reservation());
		return reservationFormView;
	}

	// FOR MERGING VIEW MAY NEED TO CHANGE TO MATCH JSP NAME
	// On a post request, saves the reservation to the database and then sends the
	// user to the summary page
	@PostMapping("/reservation-summary")
	public ModelAndView saveReservation(@ModelAttribute("reservation") Reservation reservation) {

		User user = userService.getUser(getSessionEmail());
		reservation.setUserID(user.getUserID());
		reservation.setConfirmationID(randomTenChar());
		reservationService.saveReservation(reservation);

		ModelAndView saveReservationView = new ModelAndView("reservation-summary");

		saveReservationView.addObject("reservation", reservation);

		return saveReservationView;
	}

	// Navigates the user to the cancel reservation route.
	// Finds the user, then we get the latest reservation by user id
	// If the reservation exists in the db, it will delete it
	// Finally, navigates the user back to the reservation route.
	@GetMapping("/cancel-reservation")
	public RedirectView cancelReservation() {

		User user = userService.getUser(getSessionEmail());
		Reservation latestReservation = reservationService.getLatestReservationByUserID(user.getUserID());

		if (latestReservation != null) {
			reservationService.deleteReservation(latestReservation);
			return new RedirectView("/reservation");
		} else {
			return new RedirectView("/error");

		}

	}

	@GetMapping("/confirm-reservation")
	public RedirectView confirmReservation() {
		return new RedirectView("/home");

	}

	// Method to make the ten character reservation_id
	public String randomTenChar() {
		Random r = new Random();
		String allowedCharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		String randomTen = "";

		for (int i = 0; i < 10; i++)
			randomTen += allowedCharacters.charAt(r.nextInt(allowedCharacters.length()));

		return randomTen;
	}

	// Check for session email_address
	public String getSessionEmail() {
		// Thank you to Stack Overflow:
		// https://stackoverflow.com/questions/32052076/how-to-get-the-current-logged-in-user-object-from-spring-security
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String email = "";
		if (principal instanceof UserDetails) {
			email = ((UserDetails) principal).getUsername();

		} else {
			email = "";
		}
		return email;
	}
}
