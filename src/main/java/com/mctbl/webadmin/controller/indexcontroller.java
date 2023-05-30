package com.mctbl.webadmin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.service.UserService;

@Controller
public class indexcontroller {

    @Autowired
    UserService us;

    @GetMapping(value = { "/", "/login" })
    public String loginPage() {
        return "/login";
    }

    @PostMapping("/login")
    public String main(User user, HttpSession session, Model model) {
        if (StringUtils.hasText(user.getUserName()) && StringUtils.hasText(user.getUserPass())) {
            List<User> list = us.list();
            for (User temp : list) {
                if (temp.getUserName().equals(user.getUserName()) && temp.getUserPass().equals(user.getUserPass())) {
                    session.setAttribute("loginUser", user);
                    // 判断是否为管理员
                    if (temp.getUserIsAdmin() == 1) {
                        return "redirect:/index.html";
                    } else {
                        return "redirect:/index.html";
                    }
                }
            }
            session.setAttribute("msg", "请核对用户名密码是否正确");
            return "redirect:/login";
        } else {
            session.setAttribute("msg", "请输入用户名及密码");
            return "redirect:/login";
        }

    }

    @GetMapping("/index.html")
    public String mainPage(HttpSession session, Model model) {
        model.addAttribute("page", "index");
        model.addAttribute("pageclass", "index");
        return "index";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session, Model model, RedirectAttributes ra) {
        if (session.getAttribute("loginUser") != null) {
            session.removeAttribute("loginUser");
            session.setAttribute("msg", "成功退出");
        } else {
            session.setAttribute("msg", "非法访问");
        }
        return "redirect:/login";
    }
}
