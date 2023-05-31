package com.mctbl.webadmin;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

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
	}

}
