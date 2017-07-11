package databases.repositories;

import databases.entities.Event;
import databases.entities.RSO;
import databases.entities.University;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.Set;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface EventRepository extends CrudRepository<Event, Integer> {

    Set<Event> findByUniversity(University university);
    Set<Event> findByRso(RSO rso);
    Set<Event> findByType(Boolean type);
}
