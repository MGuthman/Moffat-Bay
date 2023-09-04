// Author: M.Guthman
// Date: 09/03/2023

package purpleTeam.MoffatBayLodge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import purpleTeam.MoffatBayLodge.bean.User;
import purpleTeam.MoffatBayLodge.repository.UserRepository;

public class LodgeUserDetails implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    // Taking username from login form and pull from DB, check if valid, return user
    // details to then be passed through security filter
    public UserDetails loadUserByUsername(String username) {
        User user = this.userRepository.findByEmailAddress(username);
        if (user == null) {
            throw new UsernameNotFoundException(username, null);
        }
        return user;
    }
}
