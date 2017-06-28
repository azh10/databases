package databases.repositories;

import databases.entities.Event;
import databases.entities.RSO;
import databases.entities.University;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface EventRepository extends CrudRepository<Event, Integer> {

    List<Event> findByUniversity(University university);
    List<Event> findByRso(RSO rso);
}
