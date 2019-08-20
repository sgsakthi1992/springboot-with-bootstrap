package com.example.springboot.controller;

import com.example.springboot.model.Todo;
import com.example.springboot.service.TodoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
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
    public String showAddTodoPage(ModelMap modelMap){
        modelMap.addAttribute("todo", new Todo());
        return "todo";
    }

    @RequestMapping(value = "/todo", method = RequestMethod.POST)
    public String addTodo(ModelMap modelMap, @Valid Todo todo, BindingResult result){
        if(result.hasErrors()){
            return "todo";
        }
        service.addTodo(modelMap.get("name").toString(),todo.getDesc(),todo.getTargetDate(),false);
        return "redirect:/list-todos";
    }

    @RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
    public String deleteTodo(ModelMap modelMap, @RequestParam int id){
        service.deleteTodo(id);
        return "redirect:/list-todos";
    }

    @RequestMapping(value = "/update-todo", method = RequestMethod.GET)
    public String retrieveTodo(ModelMap modelMap, @RequestParam int id){
        Todo todo = service.retrieveTodo(id);
        modelMap.addAttribute("todo", todo);
        return "update-todo";
    }

    @RequestMapping(value = "/update-todo", method = RequestMethod.POST)
    public String updateTodo(ModelMap modelMap, @Valid Todo todo, BindingResult result){
        if(result.hasErrors()){
            return "update-todo";
        }
        service.updateTodo(todo);
        return "redirect:/list-todos";
    }
}
