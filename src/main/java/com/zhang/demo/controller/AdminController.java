package com.zhang.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhang.demo.model.StuAccount;
import com.zhang.demo.model.StuInfo;
import com.zhang.demo.service.StuService;

/**
 * 管理员的可执行操作
 * @author Administrator
 *
 */
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
		return "StuInfolist";
	}
	
	/**
	 * 删除指定id的用户
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{id}/delete")
	public String deleteStuInfo(@PathVariable("id") Integer id){
		if(id == null){
			return "redirect:/admin/StuInfolist";
		}
		int i = stuService.deleteStuInfoByPrimaryKey(id);
		//To-do
		return "redirect:/admin/StuInfolist";
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
		
		int j = stuService.updateStuInfoByPrimaryKeySelective(stuInfo);
		//To-do回到列表页
		return "";
	}
	
	
	/***************************************账号操作*********************************************/
	
	/**
	 * 增加学生账号
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/addStuAccount")
	public String insertAccount(Model model, HttpServletRequest request){
		Integer sno = Integer.parseInt(request.getParameter("sno"));
		StuAccount account = new StuAccount();
		account.setSno(sno);
		int id = stuService.insertAccount(account);
		
		//To-do 重新回到添加页面
		return "success:";
	}
	
	/**
	 * 按学号查找
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/sno")
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
		return "StuAccountlist";
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
		return "redirect:/user/list";
	}
	
	
	
}

