package databases.DTO;

import databases.entities.Comment;
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
public class CommentDTO {

    private Integer id;
    private String message;
    private UserDTO user;

    private CommentDTO(Integer id, String message, UserDTO user) {
        this.id = id;
        this.message = message;
        this.user = user;
    }

    public static CommentDTO toDTO (Comment comment) {
        return new CommentDTO(comment.getId(), comment.getMessage(), UserDTO.toDTO(comment.getUser()));
    }

    public static Set<CommentDTO> toDTO (Set<Comment> comment) {
        Set<CommentDTO> commentDTOS = new HashSet<>();
        for (Comment c : comment)
            commentDTOS.add(CommentDTO.toDTO(c));
        return commentDTOS;
    }

}
