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
		Order o = new Order();
	}

}
