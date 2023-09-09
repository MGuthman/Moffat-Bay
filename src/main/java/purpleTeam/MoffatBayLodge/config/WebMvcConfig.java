// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon
// Author: O.Tsolmon
// Date: 09/03/2023

package purpleTeam.MoffatBayLodge.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

//Added this configuration class to resolve the names of view templates for the jsp files
//into actual view objects that can be rendered and displayed.


@Configuration
public class WebMvcConfig {

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/"); // Specify the path to the JSP views
        resolver.setSuffix(".jsp"); // The file extension of the JSP views
        return resolver;
    }

}

