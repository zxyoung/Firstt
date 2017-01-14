package com.zhang.demo.controller;

import java.util.List;

import javax.jws.WebParam.Mode;
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
	 * 管理员删除指定id的学生信息
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
	 * 管理员修改学生信息
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/{id}/update")
	String updateStuInfo(HttpServletRequest request, @PathVariable("id") Integer id, Model model){
		//To-do
		//用Request  接受参数，构造StuInfo实体，然后进行更新操作
		StuInfo stuInfo = new StuInfo();
		String stuName = request.getParameter("stuName");
		String sex = request.getParameter("sex"); 
		Integer sno = Integer.parseInt(request.getParameter("sno").trim());
		String password = request.getParameter("password");
		String major = request.getParameter("major");
		String origin =request.getParameter("origin");
		Integer entry_year = Integer.parseInt(request.getParameter("entry_year").trim());
		Integer gra_year = Integer.parseInt(request.getParameter("gra_year").trim());
		
		if(sno == null || entry_year == null || gra_year == null){
			return "redirect:/admin/listStuInfo";
		}
		
		stuInfo.setId(id);
		stuInfo.setStuName(stuName);
		stuInfo.setSex(sex);
		stuInfo.setPassword(password);
		stuInfo.setSno(sno);
		stuInfo.setMajor(major);
		stuInfo.setOrigin(origin);
		stuInfo.setEntryYear(entry_year);
		stuInfo.setGraYear(gra_year);
		
		Integer j = stuService.updateStuInfoByPrimaryKeySelective(stuInfo);
		model.addAttribute("stuInfo", stuInfo);
		//To-do回到列表页 或 回到修改的界面
//		/firstt/admin/4131001/detailStuInfo
		return "redirect:/admin/"+sno+"/detailStuInfo";
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
	@RequestMapping(value="/selectAccountSno",method=RequestMethod.POST)
	public String selectAccountBySno(HttpServletRequest request, Model model){
		Integer sno = Integer.parseInt(request.getParameter("sno").trim());
		StuInfo stuInfo = stuService.selectStuInfoBySno(sno);
		
		//有待处理异常
		if(stuInfo != null){
			model.addAttribute("stuInfo", stuInfo);
			return "detailStuInfo";
			
		}
		//To-do 调到相应页面
		return "error";
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
	@RequestMapping(value="/{sno}/deleteStuAccount")
	public String deleteStuAccount(@PathVariable("sno") Integer sno){
		if (sno == null) {
			return "redirect:/admin/listStuAccount";
		}
		boolean flag = stuService.deleteAccountBySno(sno);
		if(flag == false){
			return "出现错误！";
		}
		//To-do
		return "redirect:/admin/listStuAccount";
	}
	
	
	
}

