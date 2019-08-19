package com.example.springboot.controller;

import com.example.springboot.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@SessionAttributes("name")
public class LoginController {

    @Autowired
    LoginService service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin (ModelMap modelMap){
        modelMap.put("checkUser", "checkUser");
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String showWelcome (ModelMap modelMap, @RequestParam String name, @RequestParam String password){
        boolean isValidUser = service.validateUser(name, password);

        if(!isValidUser) {
            modelMap.put("validationMsg", "Invalid Credentials");
            modelMap.put("checkUser", "invalidUser");
            return "login";
        }

        modelMap.put("name", name);
        return "welcome";
    }
}
