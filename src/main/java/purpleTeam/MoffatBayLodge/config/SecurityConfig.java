// Author: M.Guthman, O.Tsolmon
// Date: 09/03/2023

package purpleTeam.MoffatBayLodge.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;

import jakarta.servlet.DispatcherType;
import purpleTeam.MoffatBayLodge.service.LodgeUserDetails;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	// This bean helps to encode(hash) the password in the db
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	// Setting up security filter for http request
	// TODO: SET UP SECRUITIES FOR PAGES THAT NEED TO BE AUTHENTICATED
	// TODO: REROUTE LOGIN
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.authorizeHttpRequests(auth -> auth.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
						// .requestMatchers(new AntPathRequestMatcher("/register*")).authenticated()
						.anyRequest().permitAll())
				.formLogin(login -> login.loginPage("/login").defaultSuccessUrl("/home"));
		return http.build();
	}

	@Bean
	public UserDetailsService userDeatils() {
		return new LodgeUserDetails();
	}
}
