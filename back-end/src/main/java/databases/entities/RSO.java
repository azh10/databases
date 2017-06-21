package databases.entities;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
@Accessors(chain = true)
public class RSO {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private String name;

    private String email;

	@ManyToOne
	@JoinColumn(name = "admin_id")
    private Admin admin;

	private String type;

	// rso member list
    @ManyToMany
    @JoinTable(
            name = "rso_users",
            joinColumns = @JoinColumn(name = "rso_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"))
    private List<User> users;

}

