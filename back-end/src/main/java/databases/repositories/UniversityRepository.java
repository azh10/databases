package databases.repositories;

import databases.entities.University;
import databases.entities.User;
import org.springframework.data.repository.CrudRepository;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface UniversityRepository extends CrudRepository<University, Integer> {

}
