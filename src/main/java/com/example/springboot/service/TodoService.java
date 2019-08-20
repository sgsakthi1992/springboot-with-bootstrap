package com.example.springboot.service;

import com.example.springboot.model.Todo;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<Todo>();
    private static int todoCount = 3;
    static {
        todos.add(new Todo(1, "Sakthi", "Learn Spring MVC", new Date(),
                false));
        todos.add(new Todo(2, "Malli", "Learn Struts", new Date(), false));
        todos.add(new Todo(3, "Sakthi", "Learn Hibernate", new Date(),
                false));
    }

    public List<Todo> retrieveTodos(String user) {
        List<Todo> filteredList = todos.stream().filter(s->s.getUser().equalsIgnoreCase(user)).collect(Collectors.toList());
        System.out.println(filteredList);
        return filteredList;
    }

    public Todo retrieveTodo(int id){
        Todo todo = todos.stream().filter(s->s.getId() == id).findAny().get();
        return todo;
    }

    public void addTodo(String name, String desc, Date targetDate,
                        boolean isDone) {
        todos.add(new Todo(++todoCount, name, desc, targetDate, isDone));
    }

    public void deleteTodo(int id) {
        Iterator<Todo> iterator = todos.iterator();
        while (iterator.hasNext()) {
            Todo todo = iterator.next();
            if (todo.getId() == id) {
                iterator.remove();
            }
        }
    }

    public void updateTodo(Todo todo) {
        todos.remove(todo);
        todo.setUser("Sakthi");
        todos.add(todo);
    }
}
