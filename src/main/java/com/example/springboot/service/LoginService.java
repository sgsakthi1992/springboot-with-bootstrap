package com.example.springboot.service;

import org.springframework.stereotype.Component;

@Component
public class LoginService {

    public boolean validateUser(String name, String password){
        return name.equalsIgnoreCase("sakthi") && password.equalsIgnoreCase("sakthi");
    }
}
