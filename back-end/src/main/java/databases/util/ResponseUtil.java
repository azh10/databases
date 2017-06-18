package databases.util;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.util.HashMap;

/**
 * @author Ashton Ansag.
 */
public class ResponseUtil {
    public static ResponseEntity<?> respond() {
        return new ResponseEntity<>(null, HttpStatus.NO_CONTENT);
    }

    public static ResponseEntity<?> respond(HttpStatus status) {
        return new ResponseEntity<>(null, status);
    }

    public static <T> ResponseEntity<T> respond(T response) {
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    public static <T> ResponseEntity<T> respond(T response, HttpStatus status) {
        return new ResponseEntity<>(response, status);
    }

    /**
     * Deprecated: This method is deprecated in favor of:
     *
     * 1. If you are explaining an error use a custom Exception (extending RuntimeException)
     *    using the {@link ResponseStatus} annotation
     *
     * 2. If you are explaining a successful action use {@link this.respond(HttpStatus)} with
     *    a well chosen status.
     */
    @Deprecated
    public static ResponseEntity<?> respond(HttpStatus status, String msg) {
        HashMap<String, String> message = new HashMap<String, String>() {{
            put("message", msg);
        }};

        return new ResponseEntity<>(message, status);
    }
}

