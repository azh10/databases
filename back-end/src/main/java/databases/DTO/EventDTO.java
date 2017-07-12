package databases.DTO;

import databases.entities.Event;
import databases.entities.User;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * @author Ashton Ansag.
 */
@Getter
@Setter
@Accessors
public class EventDTO {

    private Integer id;
    private String title;
    private String location;
    private String about;
    private Timestamp date;
    private Set<UserDTO> users;

    private EventDTO(Integer id, String title, String location, String about, Timestamp date, Set<UserDTO> users) {
        this.id = id;
        this.title = title;
        this.location = location;
        this.about = about;
        this.date = date;
        this.users = users;
    }

    public static EventDTO toDTO (Event event) {

        Set<UserDTO> userDTOS = new HashSet<>();
        for(User u : event.getUsers()) {
            userDTOS.add(UserDTO.toDTO(u));
        }
        return new EventDTO(event.getId(), event.getTitle(), event.getLocation(), event.getAbout(), event.getDate(), userDTOS);
    }

    public static Set<EventDTO> toDTO (Set<Event> events) {
        Set<EventDTO> eventDTOS = new HashSet<>();
        for (Event e : events)
            eventDTOS.add(EventDTO.toDTO(e));
        return eventDTOS;
    }

}
