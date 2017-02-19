package com.zhang.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import com.zhang.demo.model.Admin;
import com.zhang.demo.model.StuInfo;
import com.zhang.demo.service.AdminService;
import com.zhang.demo.service.StuService;

@Controller
@RequestMapping("/login")
// @SessionAttributes("student")
public class LoginController {

	@Autowired
	StuService stuService;
	
	@Autowired
	AdminService adminService;

	/**
	 * 跳转学生登录页
	 * 
	 * @return
	 */
	@RequestMapping(value="/stuLogin")
	public String StudentLogin() {
		return "stuLogin";
	}
	
	/**
	 * 跳转到管理员登录页
	 * @return
	 */
	@RequestMapping(value="/adminLogin")
	public String AdminLogin(){
		return "adminLogin";
	}

	
	/**
	 * 处理管理员登录请求
	 * @param request
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/admin")
	public String AdminLogin(HttpServletRequest request, Model model, HttpSession session){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Admin admin = adminService.selectByUsernameAndPassword(username, password);
		
		if(admin == null){
			System.out.println("login error!");
			return "errorPage";
		}
		model.addAttribute("admin", "admin");
		session.setAttribute("adminSession", admin);
		return "adminLoginSuccess";
	}
	
	/**
	 * 管理员退出
	 * @param session
	 * @param sessionStatus
	 * @return
	 */
	@RequestMapping(value="/adminlogout")
	public String AdminLoginOut(HttpSession session, SessionStatus sessionStatus){
		
		System.out.println("logout:" + session.getAttribute("adminSession"));
		session.removeAttribute("adminSession");
		System.out.println("logout "+session.getAttribute("adminSession")); 
		sessionStatus.setComplete();
		
		return "adminLogin";
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
	public String StudentLogin(HttpServletRequest request, Model model, HttpSession session) {

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
		return "stuLoginSuccess";
	}

	
	/**
	 * 退出当前登录学号
	 * @param session
	 * @param sessionStatus
	 * @return
	 */
	@RequestMapping(value = "/stulogout")
	public String StudentLoginOut(HttpSession session, SessionStatus sessionStatus) {

		System.out.println("logout:" + session.getAttribute("stu"));
		session.removeAttribute("stu");
		System.out.println("logout "+session.getAttribute("stu")); 
		sessionStatus.setComplete();
		
		return "stuLogin";
	}

}
