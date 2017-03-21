package com.zhang.demo.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zhang.demo.model.Company;
import com.zhang.demo.model.Notice;
import com.zhang.demo.service.CompanyService;
import com.zhang.demo.service.NoticeService;

@Controller
@RequestMapping("/company")
public class CompanyController {

	@Autowired
	CompanyService companyService;

	@Autowired
	NoticeService noticeService;

	/**
	 * 跳转到注册页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "toRegister")
	public String RegisterPage() {
		return "registerPage";
	}

	/**
	 * 企业发布招聘信息
	 * 
	 * @param request
	 * @param code
	 * @return
	 */
	@RequestMapping(value = "/{code}/addNotice")
	public String addNotice(HttpServletRequest request, @PathVariable("code") Integer code, Model model) {
		model.addAttribute("code", code);
		return "addNotice";
	}

	/**
	 * 创建招聘信息
	 * 
	 * @param request
	 * @param code
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{code}/createNotice")
	public String createNotice(HttpServletRequest request, @PathVariable("code") Integer code, Model model) {

		String title = request.getParameter("title");
		String content = request.getParameter("content");

		Notice notice = new Notice();

		notice.setCode(code);
		notice.setTitle(title);
		notice.setContent(content);
		notice.setFbtime(new Date());

		int flag = noticeService.insert(notice);

		if (flag != 1) {
			System.out.println("error");
			System.out.println(flag);
			return "错误处理页面";
		}
		System.out.println("success");

		// To-Do
		return "redirect:/company/" + code + "/detailNotice";
	}

	/**
	 * 查看所有招聘信息
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{code}/detailNotice")
	public String noticeDetail(@PathVariable("code") Integer code, Model model) {
		if (code == null) {
			return "跳向错误处理页面";
		}
		List<Notice> list = noticeService.selectByCode(code); 
		if (list != null) {
			model.addAttribute("list", list);
			return "listCompanyNotice";
		}
		return "跳向错误处理页面";
	}
	
	@RequestMapping(value="/{id}/noticeDetail")
	public String detialNotice(@PathVariable("id") Integer id, Model model){
		Notice notice = noticeService.selectByPrimaryKey(id);
		if(notice != null){
			model.addAttribute("notice", notice);
			return "NoticeInfo";
		}
		return "跳向错误处理页面";
	}

	/**
	 * 删除招聘信息
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{id}/deleteNotice")
	public String deleteNotice(@PathVariable("id") Integer id) {
		if (id == null) {
			return "error";
		}
		int delNotice = noticeService.deleteByPrimaryKey(id);
		if (delNotice < 1) {
			return "error";
		}
		return "redirect:/admin/listNoticeInfo";
	}

	/**
	 * 更改公司基本信息
	 * 
	 * @param request
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
	public String updateCompanyInfo(HttpServletRequest request, @PathVariable("id") Integer id, Model model) {

		String cname = request.getParameter("cname");
		String password = request.getParameter("password");
		String location = request.getParameter("location");
		Long phone = Long.parseLong(request.getParameter("phone").trim());
		String property = request.getParameter("property");
		String email = request.getParameter("email");
		Integer code = Integer.parseInt(request.getParameter("code").trim());
		Integer cltime = Integer.parseInt(request.getParameter("cltime").trim());
		String detail = request.getParameter("detail");

		if (phone == null || code == null || cltime == null) {
			return "redirect:/company/" + id + "/companyInfo";
		}

		Company company = new Company();
		company.setId(id);
		company.setCname(cname);
		company.setPassword(password);
		company.setLocation(location);
		company.setPhone(phone);
		company.setEmail(email);
		company.setProperty(property);
		company.setCode(code);
		company.setCltime(cltime);
		company.setDetail(detail);

		int flag = companyService.updateByPrimaryKeySelective(company);
		model.addAttribute("company", company);
		System.out.println(company);
		System.out.println(flag);

		/************ 错误处理 ***************/
		if (flag < 1) {
			return "error";
		}
		// To-do回到列表页 或 回到修改的界面
		// /firstt/company/1/detailStuInfo
		return "redirect:/company/" + id + "/companyInfo";
	}

	/**
	 * 查看公司信息
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{id}/companyInfo")
	public String detailCompanyInfo(@PathVariable("id") Integer id, Model model) {
		Company company = companyService.selectByPrimaryKey(id);
		if (company != null) {
			model.addAttribute("company", company);
			return "companyInfo";
		}
		return "跳向错误处理页面";
	}

	/**
	 * 企业注册
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/register")
	public String companyRegister(HttpServletRequest request) {

		String cname = request.getParameter("cname");
		String password = request.getParameter("password");
		String location = request.getParameter("location");
		Long phone = Long.parseLong(request.getParameter("phone"));
		String property = request.getParameter("property");
		String email = request.getParameter("email");
		Integer code = Integer.parseInt(request.getParameter("code"));
		Integer cltime = Integer.parseInt(request.getParameter("cltime"));
		String detail = request.getParameter("detail");

		Company company = new Company();
		company.setCname(cname);
		company.setPassword(password);
		company.setLocation(location);
		company.setPhone(phone);
		company.setEmail(email);
		company.setProperty(property);
		company.setCode(code);
		company.setCltime(cltime);
		company.setDetail(detail);

		int flag = companyService.insertSelective(company);
		if (flag != 1) {
			return "error";
		}

		return "companyLogin";
	}

}
