package purpleTeam.MoffatBayLodge.controller;

import org.springframework.beans.factory.annotation.Autowired;
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
public class UserController {

	@Autowired
	private final UserService userService;
	
    public UserController(UserService userService) {
		this.userService = userService;
	
	}

    @GetMapping("/register")
    public ModelAndView showRegistrationForm() {
		ModelAndView registerUserView = new ModelAndView("register-user");
		registerUserView.addObject("user", new User());
        return registerUserView;
	
    }

    @PostMapping("/register")
    public ModelAndView saveUserRegistrationForm(@ModelAttribute("user") User user) {
        userService.saveUser(user);
		ModelAndView saveUserRegistrationView = new ModelAndView("login");
        return saveUserRegistrationView; 
    }
}
