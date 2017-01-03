package com.zhang.demo.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zhang.demo.model.StuAccount;
import com.zhang.demo.model.StuInfo;
import com.zhang.demo.service.StuService;

import sun.print.resources.serviceui;

/**
 * 管理员的可执行操作
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	StuService stuService;
	
	
	
	/***************************************学生信息操作*********************************************/
	/**
	 * 查看所有学生信息
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listStuInfo")
	public String getAllStuInfo(Model model){
		List<StuInfo> list = stuService.getAllStuInfo();
		model.addAttribute("list", list);
		//To-do
		return "listStuInfo";
	}

	/**
	 * 按学号查找学生信息
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/{sno}/detailStuInfo")
	public String getStuInfoDetail(@PathVariable("sno") Integer sno, Model model){
		if(sno == null){
			return "redirect:/admin/listStuInfo";
		}
		StuInfo stuInfo = stuService.selectStuInfoBySno(sno);
		model.addAttribute("stuInfo", stuInfo);
		
		return "detailStuInfo";
	}
	
	/**
	 * 删除指定id的用户
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{id}/delete")
	public String deleteStuInfo(@PathVariable("id") Integer id){
		if(id == null){
			return "redirect:/admin/listStuInfo";
		}
		int i = stuService.deleteStuInfoByPrimaryKey(id);
		//To-do
		return "redirect:/admin/listStuInfo";
	}
	
	/**
	 * 修改学生信息
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/{id}/update")
	String updateStuInfo(HttpServletRequest request, @PathVariable("id") Integer id){
		//To-do
		//用Request  接受参数，构造StuInfo实体，然后进行更新操作
		StuInfo stuInfo = new StuInfo();
		String stuName = request.getParameter("stuName");
		String sex = request.getParameter("sno"); 
		Integer sno = Integer.parseInt(request.getParameter("sno"));
		String password = request.getParameter("password");
		String major = request.getParameter("major");
		String origin =request.getParameter("origin");
		//To-Do
		//时间还需要格式化
//		String entry_year = request.getParameter("entry_year");
//		String gra_year = request.getParameter("gra_year");
		
		stuInfo.setId(id);
		stuInfo.setStuName(stuName);
		stuInfo.setSex(sex);
		stuInfo.setPassword(password);
		stuInfo.setSno(sno);
		stuInfo.setMajor(major);
		stuInfo.setOrigin(origin);

		
		Integer j = stuService.updateStuInfoByPrimaryKeySelective(stuInfo);
		//To-do回到列表页 或 回到修改后的界面
		return "redirect:/admin/listStuInfo";
	}
	
	
	/***************************************学生账号操作*********************************************/
	
	
	@RequestMapping(value="addStuAccount")
	public String Index(){
		return "addStuAccount";
	}
	
	
	
	/**
	 * 增加学生账号
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/addStuAccount",method=RequestMethod.POST)
	public String insertAccount(Model model, HttpServletRequest request){
		Integer sno = Integer.parseInt(request.getParameter("sno"));
		StuAccount account = new StuAccount();
		account.setSno(sno);
		int id = stuService.insertAccountSelective(account);
		if(id != 0){
			model.addAttribute("account", account);
		}
		//To-do 重新回到添加页面
		return "redirect:/admin/listStuAccount";
	}
	
	/**
	 * 按学号查找
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/selectAccountSno")
	public String selectAccountBySno(HttpServletRequest request, Model model){
		Integer sno = Integer.parseInt(request.getParameter("sno"));
		StuAccount account = stuService.selectBySno(sno);
		model.addAttribute("account", account);
		
		//To-do 调到相应页面
		return "stuAccount";
	}
	
	/**
	 * 查看所有学生账号
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listStuAccount")
	public String getAllStuAccount(Model model){
		List<StuAccount> list = stuService.getAllAccount();
		model.addAttribute("list", list);
		
		//To-do
		return "listStuAccount";
	}
	
	/**
	 * 删除学生账号
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/{id}/deleteStuAccount")
	public String deleteStuAccount(@PathVariable("id") Integer id){
		if (id == null) {
			return "redirect:/admin/listStuAccount";
		}
		int id1 = stuService.deleteAccountByPrimaryKey(id);
		//To-do
		return "redirect:/admin/listStuAccount";
	}
	
	
	
}

