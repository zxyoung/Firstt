package com.zhang.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.zhang.demo.model.User;
import com.zhang.demo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;
	
	
	@RequestMapping(value="addUser")
	public String index(){
		return "addUser";
	}

	/**
	 * 测试用
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/showUser")
	public String showUser(HttpServletRequest request, Model model) {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "showUser";
	}

	/**
	 * 添加一个用户
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/add", method=RequestMethod.POST)
	public String insertUser(Model model, HttpServletRequest request) {
		String userName = request.getParameter("userName");
		Integer age = Integer.parseInt(request.getParameter("age"));
		String password = request.getParameter("password");
		User user = new User();
		user.setUserName(userName);
		user.setAge(age);
		user.setPassword(password); 
//		user.setAge(23);
//		user.setUserName("张会闯");
//		user.setPassword("12sdf");
		int id = userService.insertSelective(user);
		if (id != 0) {
			model.addAttribute("user", user);
		}
		return "success";
	}

	/**
	 * 获得所有的用户
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String getAll(Model model) {
		List<User> list = userService.getAllUser();
		model.addAttribute("list", list);
		return "list";
	}

	/**
	 * 获取指定id的用户详细信息
	 * 
	 * @param user_id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{user_id}/detail", method = RequestMethod.GET)
	public String getDetail(@PathVariable("user_id") Integer user_id, Model model) {
		if (user_id == null) {
			return "redirect:/user/list";
		}
		User user = userService.getUserById(user_id);
		if (user == null) {
			return "redirect:/user/list";
		}
		model.addAttribute("user", user);
		return "detail";
	}

	/**
	 * 删除指定id的用户
	 * 
	 * @param user_id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{user_id}/delete")
	public String delete(@PathVariable("user_id") Integer user_id, Model model) {
		if (user_id == null) {
			return "redirect:/user/list";
		}
		int id = userService.delete(user_id);

		return "redirect:/user/list";
	}

	@RequestMapping(value = "/{user_id}/update", method=RequestMethod.POST)
	public String update(@PathVariable("user_id") Integer user_id, HttpServletRequest request) {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		Integer age = Integer.parseInt(request.getParameter("age"));
		User user = new User();
		user.setId(user_id);
		user.setUserName(userName);
		user.setPassword(password);
		user.setAge(age);
		int tmp = userService.updateByPrimaryKey(user);
		return "redirect:/user/list";
	}
	
}
