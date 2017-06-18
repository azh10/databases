package databases.controllers;

import databases.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import static databases.util.ResponseUtil.respond;

/**
 * @author Ashton Ansag.
 */
@Controller
@RequestMapping(path="/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping
    public HttpEntity<?> allUsers () {
        return respond(userRepository.findAll());
    }

    @PostMapping
    public HttpEntity<?> create () {
        return respond(HttpStatus.NOT_IMPLEMENTED);
    }

    @PostMapping("/{user}")
    public HttpEntity<?> update (@PathVariable("user") Integer key) {
        return respond(HttpStatus.NOT_IMPLEMENTED);
    }
}

