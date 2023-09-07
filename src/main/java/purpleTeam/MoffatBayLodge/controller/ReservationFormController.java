package purpleTeam.MoffatBayLodge.controller;

import org.apache.commons.lang3.ObjectUtils.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import purpleTeam.MoffatBayLodge.bean.Reservation;
import purpleTeam.MoffatBayLodge.bean.User;
import purpleTeam.MoffatBayLodge.service.ReservationService;

@Controller
public class ReservationFormController {

    @Autowired
	private final ReservationService reservationService;

    public ReservationFormController(ReservationService reservationService) {
		this.reservationService = reservationService;
	}

    @GetMapping("/reservation")
    public ModelAndView showRegistrationForm(Model model, @ModelAttribute("user") User user) {

        //Set with condition to send to login page first
        if(false){
            ModelAndView loginFormView = new ModelAndView("login");
            return loginFormView;
        }

		ModelAndView reservationFormView = new ModelAndView("reservation-form");
		reservationFormView.addObject("reservation", new Reservation());
        return reservationFormView;
    }

    @PostMapping("/reservation")
    public ModelAndView saveReservation(@ModelAttribute("reservation") Reservation reservation) {

        reservationService.saveReservation(reservation);
		ModelAndView saveUserRegistrationView = new ModelAndView("summary");

        return saveUserRegistrationView; 
    }
}
