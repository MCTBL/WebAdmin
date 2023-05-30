package com.mctbl.webadmin;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mctbl.webadmin.bean.User;
import com.mctbl.webadmin.mapper.Usermapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class WebAdminApplicationTests {

	@Autowired
	Usermapper um;

	@Test
	void contextLoads() {
		List<User> list = um.selectList(null);
		for (User temp : list) {
			log.info("test", temp);
		}
	}

}
