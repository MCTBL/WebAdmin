package com.mctbl.webadmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.mctbl.webadmin.bean.Dishes;
import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.bean.index_str;
import com.mctbl.webadmin.service.DishesService;
import com.mctbl.webadmin.service.UserService;

@Controller
public class tablecontroller {

    @Autowired
    DishesService ds;

    @Autowired
    UserService us;

    @GetMapping("/basic_table")
    public String basic_table() {
        return "tables/basic_table";
    }

    @GetMapping("/dynamic_table")
    public String dynamic_table() {
        return "tables/dynamic_table";
    }

    @GetMapping("/responsive_table")
    public String responsive_table() {
        return "tables/responsive_table";
    }

    @GetMapping("/editable_table")
    public String editable_table() {
        return "tables/editable_table";
    }

    @GetMapping("/all_dishes")
    public String all_dishes(Model model) {
        List<Dishes> list = ds.list();
        model.addAttribute("list", list);
        model.addAttribute("map", index_str.getMap());
        model.addAttribute("page", "all_dishes");
        model.addAttribute("pageclass", "table");
        return "tables/all_dishes";
    }

    @GetMapping("/dishes/del/{id}")
    public String deleteDishes(@PathVariable("id") Integer id) {
        ds.removeById(id);
        return "redirect:/all_dishes";
    }

    @GetMapping("/all_user")
    public String all_user(Model model) {
        List<User> list = us.list();
        model.addAttribute("list", list);
        model.addAttribute("page", "all_user");
        model.addAttribute("pageclass", "table");
        return "tables/all_user";
    }
}
