// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon
// Author: M.Guthman
// Date: 09/03/2023

package purpleTeam.MoffatBayLodge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

//User controller that handles all the incoming request, process, the user input, displays, and returns the correct view or jsp file.
//This user controller encapsulates the business logic by interpreting the client request and execute the necessary actions.

@Controller
public class LoginController {
	
    public LoginController() {

	}

    @GetMapping("/login")
    public ModelAndView loginPage(Model model) {
            ModelAndView loginView = new ModelAndView("login");
        return loginView;

    }
}