package com.zhang.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import com.zhang.demo.model.StuInfo;
import com.zhang.demo.service.StuService;

@Controller
@RequestMapping("/login")
// @SessionAttributes("student")
public class LoginController {

	@Autowired
	StuService stuService;

	/**
	 * 跳转登录页
	 * 
	 * @return
	 */
	@RequestMapping("/stu")
	public String login() {
		return "login";
	}

	/**
	 * 处理学生登录请求
	 * 
	 * @param sno
	 * @param password
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/student")
	public String Login(HttpServletRequest request, Model model, HttpSession session) {

		Integer sno = Integer.parseInt(request.getParameter("sno").trim());
		String password = request.getParameter("password").trim();

		StuInfo stuInfo = stuService.StudentLogin(sno, password);

		// 登录错误处理
		if (stuInfo == null) {
			System.out.println("null error!");

			// 要加一个登陆错误处理页面
			return "error";
		}
		// 登录成功跳转
		model.addAttribute("stuInfo", stuInfo);
		session.setAttribute("stu", stuInfo);
		return "loginSuccess";
	}

	
	/**
	 * 退出当前登录学号
	 * @param session
	 * @param sessionStatus
	 * @return
	 */
	@RequestMapping(value = "/logout")
	public String LogOut(HttpSession session, SessionStatus sessionStatus) {

		System.out.println("logout:" + session.getAttribute("stu"));
		session.removeAttribute("stu");
		System.out.println("logout "+session.getAttribute("stu")); 
		sessionStatus.setComplete();
		
		return "login";
	}

}
