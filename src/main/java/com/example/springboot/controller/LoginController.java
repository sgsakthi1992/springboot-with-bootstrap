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

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showLogin (ModelMap modelMap){
        modelMap.put("checkUser", "checkUser");
        modelMap.put("name", "Sakthi");
        return "welcome";
    }
}
