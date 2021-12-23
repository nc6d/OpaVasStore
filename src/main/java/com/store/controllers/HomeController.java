package com.store.controllers;

import com.store.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author auserox (Opanasiuk B.)
 */
@Controller
public class HomeController {

    @GetMapping("/")
    public String showHomePage(){
        System.out.println("Home Page");
        return "home";
    }
}
