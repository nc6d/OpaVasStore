package com.store.controllers;

import com.store.entities.Role;
import com.store.entities.Status;
import com.store.entities.User;
import com.store.repository.UserRepository;
import com.store.security.SecurityUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * @author auserox (Opanasiuk B.)
 */

@Controller
@RequestMapping("/auth")
public class AuthController {

    UserRepository userRepository;

    @Autowired
    PasswordEncoder encoder;

    @Autowired
    public void setRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/login")
    public String getLoginPage() {
        return "auth/login";
    }

    @RequestMapping("/register_page")
    public String getRegisterPage(Model model) {
        model.addAttribute("user", new User());
        return "auth/register_page";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@RequestParam String username,
                           @RequestParam String email,
                           @RequestParam String password) {

        userRepository.save(new User(username, email, encoder.encode(password), Role.USER, Status.ACTIVE));
        return "redirect:/auth/login";
    }

//    @RequestMapping(value = "/register", method = RequestMethod.POST)
//    public String register(SecurityUser securityUser, @RequestBody User user) {
//        user.setUsername(securityUser.getUsername());
//        user.setPassword(encoder.encode(securityUser.getPassword()));
//        userRepository.save(user);
//        return "redirect:/auth/login";
//    }
}


