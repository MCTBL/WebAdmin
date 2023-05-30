package com.mctbl.webadmin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.service.UserService;

@Controller
public class addercontroller {

    @Autowired
    UserService us;

    @PostMapping("/add_user")
    public String add_user(User user, HttpSession session, Model model) {
        if (user.getUserIsAdmin() == null) {
            user.setUserIsAdmin(0);
        }
        user.setUserLevel(0);
        us.save(user);
        return "redirect:/all_user";
    }

}
