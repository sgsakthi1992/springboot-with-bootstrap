package com.example.springboot.controller;

import com.example.springboot.service.TodoService;
import org.hibernate.validator.constraints.pl.REGON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
@SessionAttributes("name")
public class TodoController {

    @Autowired
    TodoService service;

    @RequestMapping(value = "/list-todos", method = RequestMethod.GET)
    public String listTodos (ModelMap modelMap){
        modelMap.put("list", service.retrieveTodos(modelMap.get("name").toString()));
        return "list-todos";
    }

    @RequestMapping(value = "/todo", method = RequestMethod.GET)
    public String showAddTodoPage(){
        return "todo";
    }

    @RequestMapping(value = "/todo", method = RequestMethod.POST)
    public String addTodo(ModelMap modelMap, @RequestParam String desc, @RequestParam Date targetDate){
        service.addTodo(modelMap.get("name").toString(),desc,targetDate,false);
        return "redirect:/list-todos";
    }

}
