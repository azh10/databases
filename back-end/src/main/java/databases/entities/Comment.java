package databases.entities;

import com.sun.istack.internal.Nullable;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter
@Setter
@Accessors(chain = true)
public class Comment implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;

	@Nullable
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@ManyToOne
	@JoinColumn(name = "event_id")
	private Event event;

	private String message;
}

