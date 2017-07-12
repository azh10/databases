package databases.DTO;

import databases.entities.User;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @author Ashton Ansag.
 */
@Getter
@Setter
@Accessors
public class UserDTO implements Serializable{

    private final Integer id;
    private final String name;
    private final String email;
    private final Integer uniKey;

    public UserDTO(Integer id, String name, String email, Integer uniKey) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.uniKey = uniKey;
    }

    public static UserDTO toDTO(User user) {
        return new UserDTO(user.getId(), user.getName(), user.getEmail(), user.getUni_id());
    }
}
