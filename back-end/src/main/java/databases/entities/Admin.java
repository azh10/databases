package databases.entities;

import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter
@Setter
@Accessors(chain = true)
public class Admin implements Serializable {
	@Id
	@OneToOne
	@JoinColumn(name = "user_id")
	private User user;
}

