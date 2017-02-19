package com.zhang.demo.util;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import com.zhang.demo.service.EmploymentService;

public class EmailUtils {

	public static String username = "timmyzx@qq.com";
	public static String password = "eamhwscotzvabjda";
	
	public static String subject = "邮箱提醒：来自母校的一封邮件";

	public static String context = "您好！若您的工作有变动，请您回学校就业网站更新就业信息(若无，则忽略此邮件)";

	@Autowired
	EmploymentService employmentService;
	
	public static void sendEmail() {
		JavaMailSenderImpl javaMailSenderImpl = new JavaMailSenderImpl();

		// Set Mail Server
		javaMailSenderImpl.setHost("smtp.qq.com");
		javaMailSenderImpl.setPort(587);

		// Create Mail Context
		SimpleMailMessage mailMessage = new SimpleMailMessage();

		// 可群发，To-Do
		mailMessage.setTo("15664646679@163.com");
		
		mailMessage.setFrom(username);

		// 设置邮件主题
		mailMessage.setSubject(subject);
		// 设置邮件内容
		mailMessage.setText(context);

		javaMailSenderImpl.setUsername(username);
		javaMailSenderImpl.setPassword(password);

		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "ture");
		properties.put("mail.smtp.timeout", "25000");
		javaMailSenderImpl.setJavaMailProperties(properties);
		javaMailSenderImpl.send(mailMessage);

		System.out.println("Success!");

	}
}
