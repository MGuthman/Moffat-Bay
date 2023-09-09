// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon
// Author: M.Guthman
// Date: 09/03/2023

package purpleTeam.MoffatBayLodge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import purpleTeam.MoffatBayLodge.bean.User;
import purpleTeam.MoffatBayLodge.repository.UserRepository;
import purpleTeam.MoffatBayLodge.service.UserService;

//User controller that handles all the incoming request, process, the user input, displays, and returns the correct view or jsp file.
//This user controller encapsulates the business logic by interpreting the client request and execute the necessary actions.

@Controller
public class LandingController {
	
    public LandingController() {

	}

    @GetMapping("/home")
    public String homePage(Model model) {
        return "landing-page";
    }
}
