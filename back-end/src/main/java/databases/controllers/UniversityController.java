package databases.controllers;

import databases.repositories.RSORepository;
import databases.repositories.UniversityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.UniqueConstraint;

import static databases.util.ResponseUtil.respond;

/**
 * @author Ashton Ansag.
 */
@Controller
@RequestMapping(path="/university")
public class UniversityController {

    @Autowired
    UniversityRepository universityRepository;

    @GetMapping
    public HttpEntity<?> allUniversities () {
        return respond(universityRepository.findAll());
    }

    @PostMapping
    public HttpEntity<?> create () {
        return respond(HttpStatus.NOT_IMPLEMENTED);
    }

    @PostMapping("/{university}")
    public HttpEntity<?> update (@PathVariable("university") Integer key) {
        return respond(HttpStatus.NOT_IMPLEMENTED);
    }
}

