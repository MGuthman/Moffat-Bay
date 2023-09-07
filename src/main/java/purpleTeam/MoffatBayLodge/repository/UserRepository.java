// Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon
// Author: O.Tsolmon
// Date: 09/03/2023

package purpleTeam.MoffatBayLodge.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import purpleTeam.MoffatBayLodge.bean.User;

//This user repository interface provides an abstraction layer over the underline database. 
//It makes it easier to interact with a database.
//It extends JpaRepository which provides all the crud operations needed for the objects (create, read, updated, and delete).

@Repository
public interface UserRepository extends JpaRepository<User, Long>{

    // Derived Query Method: https://www.baeldung.com/spring-data-derived-queries
    // Built into framework to know to search for EmailAdress field/data
    public User findByEmailAddress(String username);
}
