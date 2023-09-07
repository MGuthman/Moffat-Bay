// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon
package purpleTeam.MoffatBayLodge;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

public class ServletInitializer extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MoffatBayLodgeApplication.class);
	}

}
