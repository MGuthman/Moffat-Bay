package purpleTeam.MoffatBayLodge;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HTMLController {

    // Sets URL to landing-page.html
    @GetMapping("/home")
    public String homePage(Model model) {
        return "landing-page";
    }
}