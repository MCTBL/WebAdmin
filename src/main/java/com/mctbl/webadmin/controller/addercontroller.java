package com.mctbl.webadmin.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.mctbl.webadmin.bean.Dishes;
import com.mctbl.webadmin.bean.Order;
import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.service.DishesService;
import com.mctbl.webadmin.service.OrderService;
import com.mctbl.webadmin.service.UserService;

@Controller
public class addercontroller {

    @Autowired
    DishesService ds;

    @Autowired
    UserService us;

    @Autowired
    OrderService os;

    @PostMapping("/add_user")
    public String addUser(User user) {
        if (user.getUserIsAdmin() == null) {
            user.setUserIsAdmin(0);
        }
        user.setUserLevel(0);
        us.save(user);
        return "redirect:/all_user";
    }

    @PostMapping("/add_dishes")
    public String addDishes(Dishes dishes) {
        ds.save(dishes);
        return "redirect:/all_dishes";
    }

    @PostMapping("/add_order")
    public String addOrder(Order order, HttpServletRequest httpServletRequest) {
        order.setOrderTotalCost(ds.getById(order.getOrderDishesId()).getDishesPrice() * order.getOrderCount());
        order.setOrderTime(Timestamp.valueOf(httpServletRequest.getParameter("time") + ":00"));
        os.save(order);
        return "redirect:/all_order";
    }

    @GetMapping("/order/del/{id}")
    public String deleteOrder(@PathVariable("id") Integer id) {
        os.removeById(id);
        return "redirect:/all_order";
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
