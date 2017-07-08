package databases.controllers;

import databases.entities.Admin;
import databases.entities.RSO;
import databases.entities.University;
import databases.entities.User;
import databases.repositories.AdminRepository;
import databases.repositories.RSORepository;
import databases.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.admin.SpringApplicationAdminMXBeanRegistrar;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

import static databases.util.ResponseUtil.respond;

/**
 * @author Ashton Ansag.
 */
@Controller
@RequestMapping(path="/rso")
public class RSOController {

    @Autowired
    RSORepository rsoRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    AdminRepository adminRepository;

    @GetMapping
    public HttpEntity<?> allRSO () {
        return respond(rsoRepository.findAll());
    }

    @PostMapping
    public HttpEntity<?> create (
            @RequestParam(name = "name") String name,
            @RequestParam(name = "university") University university,
            @RequestParam(name = "emails") List<String> emails
    ) {
        User adminU = userRepository.findOneByEmail(emails.remove(0));
        Admin admin = adminRepository.save(new Admin().setUser(adminU));
        RSO rso = new RSO()
                .setName(name)
                .setEmail(adminU.getEmail())
                .setAdmin(admin)
                .addUser(adminU);

        for (String email : emails)
            rso.addUser(userRepository.findOneByEmail(email));

        rsoRepository.save(rso);
        return respond(HttpStatus.ACCEPTED);
    }

    @PostMapping("/{rso}")
    public HttpEntity<?> update (@PathVariable("rso") Integer key) {
        return respond(HttpStatus.NOT_IMPLEMENTED);
    }
}

