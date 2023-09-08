package purpleTeam.MoffatBayLodge.controller;

/*
 * Dylan Bonis
 * 09/07/23
 * 
 * Controller for Reservation form where it maps the get and post requests via ModelAndView object.
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

import jakarta.servlet.http.HttpSession;
import purpleTeam.MoffatBayLodge.bean.Reservation;
import purpleTeam.MoffatBayLodge.bean.User;
import purpleTeam.MoffatBayLodge.service.ReservationService;
import purpleTeam.MoffatBayLodge.service.UserService;

@Controller
public class ReservationFormController {

    @Autowired
	private final ReservationService reservationService;

    UserService userService; 

    @Autowired
    HttpSession session;

    public ReservationFormController(ReservationService reservationService) {
		this.reservationService = reservationService;
	}

    //Maps the post request to the login page if session doesn't have an email attached, otheriwse it goes to reservation page
    @GetMapping("/reservation")
    public ModelAndView showRegistrationForm(Model model, @ModelAttribute("user") User user) {
        
        if(getSessionEmail().equals("")){
            ModelAndView loginFormView = new ModelAndView("login");
            return loginFormView;
        }

		ModelAndView reservationFormView = new ModelAndView("reservation-form");
		reservationFormView.addObject("reservation", new Reservation());
        return reservationFormView;
    }

    //FOR MERGING VIEW MAY NEED TO CHANGE TO MATCH JSP NAME
    //On a post request, saves the reservation to the database and then sends the user to the summary page
    @PostMapping("/reservation")
    public ModelAndView saveReservation(Model model, @ModelAttribute("reservation") Reservation reservation) {
        reservation.setReservationId(randomTenChar());
        User user = userService.getUser(getSessionEmail());
        reservation.setUserID(user.getUserID());

        reservationService.saveReservation(reservation);
		ModelAndView saveUserRegistrationView = new ModelAndView("summary");

        return saveUserRegistrationView; 
    }

    //Method to make the ten character reservation_id
    public String randomTenChar(){
        Random r = new Random();
        String allowedCharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        String randomTen = "";

        for(int i =0; i < 10; i++)
            randomTen += allowedCharacters.charAt(r.nextInt(allowedCharacters.length()));
        
        return randomTen;
    }

    //Check for session email_address
    public String getSessionEmail(){
        //Thank you to Stack Overflow: https://stackoverflow.com/questions/32052076/how-to-get-the-current-logged-in-user-object-from-spring-security
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String email = "";
        if (principal instanceof UserDetails) {
            email = ((UserDetails)principal).getUsername();

        } 
        else {
            email = ""; 
        }
        return email;
    }
}
