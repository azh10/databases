package databases.entities;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Set;

@Entity
@Getter
@Setter
@Accessors(chain = true)
public class Event {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private String title;

    private String location;

    private String about;

    private Timestamp date;

    private Boolean type;

    // to know if the event is university or rso based use only one and the other should be null
    @ManyToOne
    @JoinColumn(name = "university_id")
    private University university;

    // to know if the event is university or rso based use only one and the other should be null
    @ManyToOne
    @JoinColumn(name = "rso_id")
    private RSO rso;

    // event member list
    @ManyToMany
    @JoinTable(
            name = "event_users",
            joinColumns = @JoinColumn(name = "event_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"))
    private Set<User> users;
}
