package databases.DTO;

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
public class AboutDTO implements Serializable{

    private final String name;
    private final String version;
    private final String description;

    private AboutDTO(String name, String version, String description) {
        this.name = name;
        this.version = version;
        this.description = description;
    }

    public static AboutDTO toDTO(String name, String version, String description) {
        return new AboutDTO(name, version, description);
    }
}
