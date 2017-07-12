package databases.controllers;

import databases.DTO.CommentDTO;
import databases.DTO.EventDTO;
import databases.entities.*;
import databases.repositories.CommentRepository;
import databases.repositories.EventRepository;
import databases.repositories.UniversityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;
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

    @Autowired
    private CommentRepository commentRepository;

    @GetMapping
    public HttpEntity<?> allEvents () {

        return respond(EventDTO.toDTO(eventRepository.findByType(true)));
    }

    @GetMapping("/messages/{event}")
    public HttpEntity<?> byEvent (@PathVariable("event") Event event) {
        return respond(CommentDTO.toDTO(commentRepository.findByEvent(event)));
    }

    @PostMapping("/messages/{event}")
    public HttpEntity<?> createComment (@PathVariable("event") Event event,
                                  @PathParam("message") String message,
                                  @PathParam("user") User user) {
        commentRepository.save(new Comment()
                .setUser(user)
                .setEvent(event)
                .setMessage(message));

        return respond();
    }
    @PostMapping("/messages/{event}/{message}")
    public HttpEntity<?> updateComment (
                                  @PathVariable("message") Comment comment,
                                  @PathParam("message") String message) {
        commentRepository.save(comment.setMessage(message));

        return respond();
    }

    @DeleteMapping("/messages/{event}/{message}")
    public HttpEntity<?> deleteComment (@PathVariable("message") Comment comment) {
        commentRepository.delete(comment);
        return respond();
    }

    @GetMapping("/university/{university}")
    public HttpEntity<?> byUniversity (@PathVariable("university") University university) {
        return respond((university!=null) ? EventDTO.toDTO(eventRepository.findByUniversity(university)) : new ArrayList<>());
    }

    @GetMapping("/rso/{rso}")
    public HttpEntity<?> byRso (@PathVariable("rso") RSO rso) {
        return respond((rso!=null) ? EventDTO.toDTO(eventRepository.findByRso(rso)) : new ArrayList<>());
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

