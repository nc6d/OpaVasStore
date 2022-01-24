package com.store.controllers;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author auserox (Opanasiuk B.)
 */
@Controller
@RequestMapping("/")
public class HomeController {

    @RequestMapping(method = RequestMethod.GET)
    public String showHomePage(ModelMap modelMap){
        String username = SecurityContextHolder
                .getContext()
                .getAuthentication()
                .getName();
        modelMap.put("username", username);
        return "home/index";
    }
}
