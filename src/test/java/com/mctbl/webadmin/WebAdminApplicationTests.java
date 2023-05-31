package com.mctbl.webadmin;

import java.util.Random;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.service.DishesService;
import com.mctbl.webadmin.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class WebAdminApplicationTests {

	@Autowired
	UserService us;

	@Autowired
	DishesService ds;

	@Test
	void initUser() {
		User m = new User(1, "18926761351", "MCTBL", "a1b2c3d4f5", 1, 0);
		m.setUserId(null);
		us.save(m);
		m = new User(1, "11111111111", "admin", "1", 1, 0);
		m.setUserId(null);
		us.save(m);
		String name[] = { "小红", "小明", "小兰", "小绿", "李华", "小紫", "小鹏", "小鬼", "小青", "小林" };
		for (int i = 0; i < 10; i++) {
			String phone = "";
			Random ra = new Random();
			for (int z = 0; z < 11; z++) {
				phone += ra.nextInt(10) + "";
			}
			String pass = "";
			for (int z = 0; z < 15; z++) {
				pass += ra.nextInt(10) + "";
			}
			m = new User(1, phone, name[i], pass, 0, 0);
			m.setUserId(null);
			us.save(m);
		}
	}

	@Test
	void initDishes() {

	}

}
