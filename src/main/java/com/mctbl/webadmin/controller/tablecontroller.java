package com.mctbl.webadmin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mctbl.webadmin.bean.Dishes;
import com.mctbl.webadmin.bean.Order;
import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.bean.index_str;
import com.mctbl.webadmin.mapper.Dishesmapper;
import com.mctbl.webadmin.mapper.Usermapper;
import com.mctbl.webadmin.service.DishesService;
import com.mctbl.webadmin.service.OrderService;
import com.mctbl.webadmin.service.UserService;
import com.mctbl.webadmin.util.getAllMap;

@Controller
public class tablecontroller {

    @Autowired
    DishesService ds;

    @Autowired
    UserService us;

    @Autowired
    OrderService os;

    @Autowired
    getAllMap gam;

    @Autowired
    Dishesmapper dm;

    @Autowired
    Usermapper um;

    @GetMapping("/all_dishes")
    public String all_dishes(@RequestParam("dishesCategory") String dishesCategory, Model model) {
        List<Dishes> list;
        if (Integer.parseInt(dishesCategory) == -1) {
            list = ds.list();
        } else {
            list = dm.getByCategory(Integer.parseInt(dishesCategory));
        }
        model.addAttribute("type", dishesCategory);
        model.addAttribute("list", list);
        model.addAttribute("map", index_str.getMap());
        model.addAttribute("page", "all_dishes");
        model.addAttribute("pageclass", "table");
        return "tables/all_dishes";
    }

    @GetMapping("/all_user")
    public String all_user(@RequestParam("idAdmin") String idAdmin, Model model) {
        List<User> list;
        if (Integer.parseInt(idAdmin) == -1) {
            list = us.list();
        } else {
            list = um.getByIsAdmin(Integer.parseInt(idAdmin));
        }
        model.addAttribute("type", idAdmin);
        model.addAttribute("list", list);
        model.addAttribute("page", "all_user");
        model.addAttribute("pageclass", "table");
        return "tables/all_user";
    }

    @GetMapping("/all_order")
    public String all_order(Model model) {
        List<Order> order_list = os.list();
        List<User> user_list = us.list();
        List<Dishes> dishes_list = ds.list();
        Map<Integer, User> user_map = new HashMap<Integer, User>();
        Map<Integer, Dishes> dishes_map = new HashMap<Integer, Dishes>();
        gam.getAll(user_list, user_map, dishes_list, dishes_map);
        List<Map<String, String>> list = new ArrayList<>();
        for (Order order : order_list) {
            Map<String, String> ans = new HashMap<String, String>();
            ans.put("order_user_name", user_map.get(order.getOrderUserId()).getUserName());
            ans.put("order_dishes_name", dishes_map.get(order.getOrderDishesId()).getDishesName());
            ans.put("order_count", order.getOrderCount() + "");
            ans.put("order_total_cost", order.getOrderTotalCost() + "");
            ans.put("order_id", order.getOrderId() + "");
            ans.put("order_time", order.getOrderTime().toString());
            list.add(ans);
        }
        model.addAttribute("list", list);
        model.addAttribute("user_list", user_list);
        model.addAttribute("dishes_list", dishes_list);
        model.addAttribute("page", "all_order");
        model.addAttribute("pageclass", "table");
        return "tables/all_order";
    }
}
