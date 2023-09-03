package purpleTeam.MoffatBayLodge.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import purpleTeam.MoffatBayLodge.bean.User;

//This user repository interface provides an abstraction layer over the underline database. 
//It makes it easier to interact with a database.
//It extends JpaRepository which provides all the crud operations needed for the objects (create, read, updated, and delete).

@Repository
public interface UserRepository extends JpaRepository<User, Long>{

}
