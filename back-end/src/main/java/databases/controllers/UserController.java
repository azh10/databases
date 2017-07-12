package databases.controllers;

import databases.entities.Admin;
import databases.entities.RSO;
import databases.entities.University;
import databases.entities.User;
import databases.repositories.AdminRepository;
import databases.repositories.RSORepository;
import databases.repositories.UniversityRepository;
import databases.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

import static databases.util.ResponseUtil.respond;

/**
 * @author Ashton Ansag.
 */
@Controller
@RequestMapping(path="/user")
public class UserController {

    private UserRepository userRepository;
    private UniversityRepository universityRepository;
    private RSORepository rsoRepository;
    private AdminRepository adminRepository;

    @Autowired
    public UserController(UserRepository userRepository, UniversityRepository universityRepository, RSORepository rsoRepository, AdminRepository adminRepository) {
        this.userRepository = userRepository;
        this.universityRepository = universityRepository;
        this.rsoRepository = rsoRepository;
        this.adminRepository = adminRepository;
    }

    @GetMapping
    public HttpEntity<?> allUsers () {
        return respond(userRepository.findAll());
    }

    // to create a user we require a name, email, and password; optionally rso and university
    @PostMapping
    public HttpEntity<?> create (
            @RequestParam(name = "name") String name,
            @RequestParam(name = "email") String email,
            @RequestParam(name = "password") String password,
            @RequestParam(name = "university") Optional<University> university,// TODO make not optional.
            @RequestParam(name = "about") Optional<String> about,
            @RequestParam(name = "uniname") Optional<String> uniname,
            @RequestParam(name = "unilocation") Optional<String> unilocation,
            @RequestParam(name = "uniimage") Optional<String> uniimage,
            @RequestParam(name = "rso") Optional<RSO> rso
    ) {

        if (name == null || email == null || password == null)
            return respond(HttpStatus.BAD_REQUEST);

        User newUser = new User()
            .setName(name)
            .setEmail(email)
            .setPassword(password);
        userRepository.save(newUser);

        if (about.isPresent()) {
            University newUniversity = new University();
            about.ifPresent(x -> newUniversity.setAbout(x));
            uniname.ifPresent(x -> newUniversity.setName(x));
            uniimage.ifPresent(x -> newUniversity.setImage_url(x));
            unilocation.ifPresent(x -> newUniversity.setLocation(x));
            Admin possibleAdmin = adminRepository.findOne(newUser.getId());
            Admin admin = (possibleAdmin != null)? possibleAdmin : adminRepository.save(new Admin().setUser(newUser));

            universityRepository.save(newUniversity
                    .setEmail(email));
            userRepository.save(newUser.setUni_id(newUniversity.getId()));
            universityRepository.save(newUniversity
                    .setAdmin(admin).addUser(newUser));
        } else {

            university.ifPresent(x -> userRepository.save(newUser.setUni_id(universityRepository.findOne(x.getId()).getId())));

            university.ifPresent(x -> universityRepository.save(x.addUser(newUser)));
            rso.ifPresent(x -> rsoRepository.save(x.addUser(newUser)));
        }
        return respond(newUser);
    }

    @PostMapping("/login")
    public ResponseEntity<?> validate (
            @RequestParam(name = "email") String email,
            @RequestParam(name = "password") String password
    ) {
        User user = userRepository.findOneByEmail(email);
        return respond(user!=null && user.getPassword().equals(password) ? user.setPassword(null) : HttpStatus.UNPROCESSABLE_ENTITY);
    }

    @GetMapping("/enrollment")
    public ResponseEntity<?> enrollment (
            @RequestParam(name = "user") User user,
            @RequestParam(name = "ismember") Boolean isMember
    ) {
        //Set<RSO> rsos = rsoRepository.findByUserAndIsMember(user, isMember);
        return respond();
    }

    // to update a user we require a user key (spring will find the user with that key)
    //   optionally require any number of name, password, leaverso, joinrso, leaveorganization, joinorganization.
    //     leaverso/leaveuniversity are keys to the group they want to leave (front end should catch if not in that group).
    //     joinrso/joinuniversity are keys to the group they want to join (duplicates are caught and ignored).
    @PostMapping("/{user}")
    public HttpEntity<?> update (
            @PathVariable("user") User user,
            @RequestParam("name") Optional<String> name,
            @RequestParam("password") Optional<String> password,
            @RequestParam("joinrso") Optional<RSO> newRso,
            @RequestParam("leaverso") Optional<RSO> oldRso,
            @RequestParam("joinuniversity") Optional<University> newUniversity,
            @RequestParam("leaveuniversity") Optional<University> oldUniversity
    ) {
        if (user == null)
            return respond(HttpStatus.BAD_REQUEST);

        newRso.ifPresent(x -> rsoRepository.save(x.addUser(user)));
        oldRso.ifPresent(x -> rsoRepository.save(x.removeUser(user)));
        newUniversity.ifPresent(x -> universityRepository.save(x.addUser(user)));
        oldUniversity.ifPresent(x -> universityRepository.save(x.removeUser(user)));

        name.ifPresent(user::setName);
        password.ifPresent(user::setPassword);
        return respond(userRepository.save(user));
    }
}

