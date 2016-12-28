package com.zhang.demo.test;

import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.zhang.demo.model.User;
import com.zhang.demo.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"/WEB-INF/spring-mybatis.xml"})  

public class Test {
	private static Logger logger = Logger.getLogger(Test.class);

	@Resource
	private UserService userService = null;

//	private ApplicationContext ac = null;

//	@Before
//	public void before() {
//		ac = new ClassPathXmlApplicationContext("/WEB-INF/spring-mybatis.xml");
//		userService = (UserService) ac.getBean("userService");
//	}
	@org.junit.Test
	public void test(){
		User user = userService.getUserById(1);
		logger.info(JSON.toJSONString(user));  
	}

}
