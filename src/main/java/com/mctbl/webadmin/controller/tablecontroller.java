package com.mctbl.webadmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mctbl.webadmin.bean.Dishes;
import com.mctbl.webadmin.bean.index_str;
import com.mctbl.webadmin.service.DishesService;

@Controller
public class tablecontroller {

    @Autowired
    DishesService ds;

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
        return "tables/all_dishes";
    }

}
