package com.mctbl.webadmin.controller;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mctbl.webadmin.bean.Dishes;
import com.mctbl.webadmin.bean.Order;
import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.mapper.Ordermapper;
import com.mctbl.webadmin.service.UserService;
import com.mctbl.webadmin.util.getAllMap;

@Controller
public class indexcontroller {

    @Autowired
    UserService us;

    @Autowired
    Ordermapper om;

    @Autowired
    getAllMap gam;

    @GetMapping(value = { "/", "/login" })
    public String loginPage(HttpSession session) {
        if (session.getAttribute("user") != null) {
            return "redirect:/index.html";
        } else {
            return "login";
        }
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
        List<User> user_list = new ArrayList<User>();
        List<Dishes> dishes_list = new ArrayList<Dishes>();
        Map<Integer, User> user_map = new HashMap<Integer, User>();
        Map<Integer, Dishes> dishes_map = new HashMap<Integer, Dishes>();
        gam.getAll(user_list, user_map, dishes_list, dishes_map);
        List<Order> mounthList = om.getMounthOrder();
        List<Order> weekList = om.getWeekOrder();

        HashMap<String, double[]> WeekDishesMap = new HashMap<String, double[]>();
        HashMap<String, double[]> MounthDishesMap = new HashMap<String, double[]>();

        for (Order temp : weekList) {
            String DisesName = dishes_map.get(temp.getOrderDishesId()).getDishesName();
            double[] i = new double[2];
            // i[0]销售额, i[1]数量
            if (WeekDishesMap.containsKey(DisesName)) {
                i = WeekDishesMap.get(DisesName);
                i[0] += temp.getOrderTotalCost();
                i[1] += temp.getOrderCount();
            } else {
                i[0] = temp.getOrderTotalCost();
                i[1] = temp.getOrderCount();
            }
            WeekDishesMap.put(DisesName, i);
        }

        for (Order temp : mounthList) {
            String DisesName = dishes_map.get(temp.getOrderDishesId()).getDishesName();
            double[] i = new double[2];
            // i[0]销售额, i[1]数量
            if (MounthDishesMap.containsKey(DisesName)) {
                i = MounthDishesMap.get(DisesName);
                i[0] += temp.getOrderTotalCost();
                i[1] += temp.getOrderCount();
            } else {
                i[0] = temp.getOrderTotalCost();
                i[1] = temp.getOrderCount();
            }
            MounthDishesMap.put(DisesName, i);
        }

        ArrayList<Object[]> WeekDishesList = new ArrayList<Object[]>();
        for (Entry<String, double[]> temp : WeekDishesMap.entrySet()) {
            Object[] t = { temp.getKey(), temp.getValue()[0], temp.getValue()[1] };
            WeekDishesList.add(t);
        }

        ArrayList<Object[]> MounthDishesList = new ArrayList<Object[]>();
        for (Entry<String, double[]> temp : MounthDishesMap.entrySet()) {
            Object[] t = { temp.getKey(), temp.getValue()[0], temp.getValue()[1] };
            MounthDishesList.add(t);
        }

        List<String> highestWeeklySales = new ArrayList<String>();
        List<String> highestMonthlySales = new ArrayList<String>();
        List<String> highestWeeklySalesCount = new ArrayList<String>();
        List<String> highestMonthlySalesCount = new ArrayList<String>();
        Comparator<Object[]> a = new Comparator<Object[]>() {
            @Override
            public int compare(Object[] o1, Object[] o2) {
                return ((double) o1[1] - (double) o2[1]) < 0 ? 1 : -1;
            }
        };
        WeekDishesList.sort(a);
        MounthDishesList.sort(a);
        // 最高营业额
        String highestWeeklySalesFirst = WeekDishesList.get(0)[1].toString();
        String highestMonthlySalesFirst = MounthDishesList.get(0)[1].toString();
        for (int i = 0; i < 10; i++) {
            highestWeeklySales.add(WeekDishesList.get(i)[0].toString());
            highestMonthlySales.add(MounthDishesList.get(i)[0].toString());
        }
        a = new Comparator<Object[]>() {
            @Override
            public int compare(Object[] o1, Object[] o2) {
                return ((double) o1[2] - (double) o2[2]) < 0 ? 1 : -1;
            }
        };
        WeekDishesList.sort(a);
        MounthDishesList.sort(a);
        // 最高销量

        String highestWeeklySalesCountFirst = Math.round((double) WeekDishesList.get(0)[2]) + "";
        String highestMonthlySalesCountFirst = Math.round((double) MounthDishesList.get(0)[2]) + "";
        for (int i = 0; i < 10; i++) {
            highestWeeklySalesCount.add(WeekDishesList.get(i)[0].toString());
            highestMonthlySalesCount.add(MounthDishesList.get(i)[0].toString());
        }

        // 最高营业额
        model.addAttribute("highestWeeklySalesFirst", highestWeeklySalesFirst);
        model.addAttribute("highestMonthlySalesFirst", highestMonthlySalesFirst);
        // 最高销量
        model.addAttribute("highestWeeklySalesCountFirst", highestWeeklySalesCountFirst);
        model.addAttribute("highestMonthlySalesCountFirst", highestMonthlySalesCountFirst);
        // 营业额排行
        model.addAttribute("highestWeeklySales", highestWeeklySales);
        model.addAttribute("highestMonthlySales", highestMonthlySales);
        // 销量排行
        model.addAttribute("highestWeeklySalesCount", highestWeeklySalesCount);
        model.addAttribute("highestMonthlySalesCount", highestMonthlySalesCount);

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
