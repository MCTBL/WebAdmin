package com.mctbl.webadmin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.mctbl.webadmin.bean.Dishes;
import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.service.DishesService;
import com.mctbl.webadmin.service.UserService;

@Controller
public class addercontroller {

    @Autowired
    DishesService ds;

    @Autowired
    UserService us;

    @PostMapping("/add_user")
    public String add_user(User user) {
        if (user.getUserIsAdmin() == null) {
            user.setUserIsAdmin(0);
        }
        user.setUserLevel(0);
        us.save(user);
        return "redirect:/all_user";
    }

    @PostMapping("/add_dishes")
    public String add_dishes(Dishes dishes) {
        ds.save(dishes);
        return "redirect:/all_dishes";
    }

    @GetMapping("/user/del/{id}")
    public String deleteUser(@PathVariable("id") Integer id) {
        us.removeById(id);
        return "redirect:/all_user";
    }

    @GetMapping("/dishes/del/{id}")
    public String deleteDishes(@PathVariable("id") Integer id) {
        ds.removeById(id);
        return "redirect:/all_dishes";
    }

}
