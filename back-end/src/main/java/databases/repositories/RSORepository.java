package databases.repositories;

import databases.entities.RSO;
import org.springframework.data.repository.CrudRepository;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface RSORepository extends CrudRepository<RSO, Integer> {

}
