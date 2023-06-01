package com.mctbl.webadmin.util;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mctbl.webadmin.bean.Dishes;
import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.service.DishesService;
import com.mctbl.webadmin.service.UserService;

@Component
public class getAllMap {

    @Autowired
    DishesService ds;

    @Autowired
    UserService us;

    public void getAll(List<User> user_list, Map<Integer, User> user_map, List<Dishes> dishes_list,
            Map<Integer, Dishes> dishes_map) {
        for (User t : user_list) {
            user_map.put(t.getUserId(), t);
        }
        for (Dishes t : dishes_list) {
            dishes_map.put(t.getDishesId(), t);
        }
    }
}
