package databases.entities;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity // This tells Hibernate to make a table out of this class
//@Table(name = "users") // This specifies a table name for this entity.
@Getter
@Setter
@Accessors(chain = true) // returns this instead of void (allows new User().setName(name).setEmail(email);
public class User {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private String name;

    private String email;

    private String password;

    private Integer uni_id;
}
