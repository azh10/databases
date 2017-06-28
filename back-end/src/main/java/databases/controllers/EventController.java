package databases.controllers;

import databases.entities.RSO;
import databases.entities.University;
import databases.repositories.EventRepository;
import databases.repositories.UniversityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

import static databases.util.ResponseUtil.respond;

/**
 * @author Ashton Ansag.
 */
@Controller
@RequestMapping(path="/event")
public class EventController {

    @Autowired
    private EventRepository eventRepository;

    @Autowired
    private UniversityRepository universityRepository;

    @GetMapping
    public HttpEntity<?> allEvents () {
        return respond(eventRepository.findAll());
    }

    @GetMapping("/university/{university}")
    public HttpEntity<?> byUniversity (@PathVariable("university") University university) {
        return respond((university!=null) ? eventRepository.findByUniversity(university) : new ArrayList<>());
    }

    @GetMapping("/rso/{rso}")
    public HttpEntity<?> byRso (@PathVariable("rso") RSO rso) {
        return respond((rso!=null) ? eventRepository.findByRso(rso) : new ArrayList<>());
    }

    @PostMapping
    public HttpEntity<?> create () {
        return respond(HttpStatus.NOT_IMPLEMENTED);
    }

    @PostMapping("/{event}")
    public HttpEntity<?> update (@PathVariable("event") Integer key) {
        return respond(HttpStatus.NOT_IMPLEMENTED);
    }
}

