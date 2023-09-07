// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon
// Author: O.Tsolmon
// Date: 09/03/2023

package purpleTeam.MoffatBayLodge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import purpleTeam.MoffatBayLodge.bean.User;
import purpleTeam.MoffatBayLodge.repository.UserRepository;

//The UseService helps as the middle man between the web controller and the data access layer.
//It helps ensure the business logic is applied before data is saved or retrieved from the db.

@Service
public class UserService {

	private final UserRepository userRepository;

	@Autowired
	public UserService(UserRepository userRepository) {

		this.userRepository = userRepository;
	}

	public User saveUser(User user) {
		return userRepository.save(user);
	}

}
