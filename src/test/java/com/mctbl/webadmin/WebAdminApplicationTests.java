package com.mctbl.webadmin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mctbl.webadmin.bean.Order;
import com.mctbl.webadmin.service.DishesService;
import com.mctbl.webadmin.service.OrderService;
import com.mctbl.webadmin.service.UserService;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class WebAdminApplicationTests {

	@Autowired
	UserService us;

	@Autowired
	DishesService ds;

	@Autowired
	OrderService os;

	@Test
	void test() {
		List<Order> order_list = os.list();
		List<Map<String, String>> list = new ArrayList<>();
		for (Order order : order_list) {
			Map<String, String> ans = new HashMap<String, String>();
			ans.put("order_user_name", us.getById(order.getOrderUserId()).getUserName());
			ans.put("order_dishes_name", ds.getById(order.getOrderDishesId()).getDishesName());
			ans.put("order_count", order.getOrderCount() + "");
			ans.put("order_total_cost", order.getOrderTotalCost() + "");
			ans.put("order_id", order.getOrderId() + "");
			ans.put("order_time", order.getOrderTime().toString());
			list.add(ans);
		}
	}

}
