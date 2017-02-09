package com.zhang.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.zhang.demo.model.StuInfo;
import com.zhang.demo.service.StuService;

@Controller
@RequestMapping("/login")
@SessionAttributes({"user","uname"})
public class LoginController {
	
	@Autowired
	StuService stuService;
	
	/**
	 * 跳转登录页
	 * @return
	 */
	@RequestMapping("/stu")
	public String login(){
		return "login";
	}
	
	
	/**
	 * 处理学生登录请求
	 * @param sno
	 * @param password
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/student")
	public String Login(HttpServletRequest request, Model model){
		
		Integer sno = Integer.parseInt(request.getParameter("sno").trim());
		String password = request.getParameter("password").trim();
		
		StuInfo stuInfo = stuService.StudentLogin(sno, password);
		
		//登录错误处理
		if(stuInfo == null){
			System.out.println("null error!");
			
			//要加一个登陆错误处理页面
			return "error";
		}
		//登录成功跳转
		model.addAttribute("uname", stuInfo);
		return "loginSuccess";
	}

}
