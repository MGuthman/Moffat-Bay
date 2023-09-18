// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon
// Author: M.Guthman
// Date: 09/13/2023

package purpleTeam.MoffatBayLodge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import purpleTeam.MoffatBayLodge.bean.Reservation;
import purpleTeam.MoffatBayLodge.service.ReservationService;

//User controller that handles all the incoming request, process, the user input, displays, and returns the correct view or jsp file.
//This user controller encapsulates the business logic by interpreting the client request and execute the necessary actions.

@Controller
public class LookupController {

    @Autowired
    public ReservationService reservationService;

    public LookupController() {

    }

    @GetMapping("/lookup")
    public ModelAndView loginPage(Model model) {
        ModelAndView lookupView = new ModelAndView("reservation-lookup");
        return lookupView;

    }

    @PostMapping("/lookup")
    public ModelAndView lookupReservation(@RequestParam(value = "confirmation") String confirmation) {

        Reservation reservation = reservationService.lookupConfirmationById(confirmation);

        if (reservation == null) {
            ModelAndView lookupError = new ModelAndView("reservation-lookup");
            lookupError.addObject("lookupError", "INVALID CONFIRMATION CODE");

            return lookupError;
        }

        ModelAndView lookupReservation = new ModelAndView("reservation-lookup");

        lookupReservation.addObject("reservation", reservation);
        return lookupReservation;
    }

}
