package databases.entities;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import javax.persistence.*;
import java.util.Set;

@Entity
@Getter
@Setter
@Accessors(chain = true)
public class University {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private String name;

    private String location;

    private String about;

    private String image_url;

    // university member list
    @ManyToMany
    @JoinTable(
        name = "university_users",
        joinColumns = @JoinColumn(name = "university_id", referencedColumnName = "id"),
        inverseJoinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"))
    private Set<User> users;

    public University addUser (User user) {
        this.users.add(user);
        return this;
    }

    public University removeUser (User user) {
        this.users.remove(user);
        return this;
    }
}
