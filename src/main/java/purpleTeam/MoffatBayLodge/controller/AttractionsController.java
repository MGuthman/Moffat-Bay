// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon
// Author: D.Bonis
// Date: 09/20/2023

package purpleTeam.MoffatBayLodge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

//User controller that handles all the incoming request, process, the user input, displays, and returns the correct view or jsp file.
//This user controller encapsulates the business logic by interpreting the client request and execute the necessary actions.

@Controller
public class AttractionsController {
	
    public AttractionsController() {

	}

    @GetMapping("/attractions")
    public String attractionsPage(Model model) {
        return "attractions";
    }
}
