package databases.controllers;

import databases.repositories.RSORepository;
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
@RequestMapping(path="/rso")
public class RSOController {

    @Autowired
    RSORepository rsoRepository;

    @GetMapping
    public HttpEntity<?> allRSO () {
        return respond(rsoRepository.findAll());
    }

    @PostMapping
    public HttpEntity<?> create () {
        return respond(HttpStatus.NOT_IMPLEMENTED);
    }

    @PostMapping("/{rso}")
    public HttpEntity<?> update (@PathVariable("rso") Integer key) {
        return respond(HttpStatus.NOT_IMPLEMENTED);
    }
}

