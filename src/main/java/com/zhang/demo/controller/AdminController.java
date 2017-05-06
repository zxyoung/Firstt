package com.zhang.demo.controller;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zhang.demo.MD5.MD5Utils;
import com.zhang.demo.UtilEmail.MailSenderInfo;
import com.zhang.demo.UtilEmail.SimpleMailSender;
import com.zhang.demo.model.Company;
import com.zhang.demo.model.EmploymentInfo;
import com.zhang.demo.model.Notes;
import com.zhang.demo.model.Notice;
import com.zhang.demo.model.Resume;
import com.zhang.demo.model.StuAccount;
import com.zhang.demo.model.StuInfo;
import com.zhang.demo.service.CompanyService;
import com.zhang.demo.service.EmploymentService;
import com.zhang.demo.service.NotesService;
import com.zhang.demo.service.NoticeService;
import com.zhang.demo.service.ResumeService;
import com.zhang.demo.service.StuService;

/**
 * 管理员的可执行操作
 * 
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	StuService stuService;

	@Autowired
	CompanyService companyService;

	@Autowired
	NoticeService noticeService;
	
	@Autowired
	ResumeService resumeService;
	
	@Autowired
	EmploymentService employmentService;
	
	@Autowired
	NotesService notesService;
	
	
	@RequestMapping(value="/chars")
	public String Echars1(){
		return "Echars1";
	}
	
	
	/*************************************** 公告操作 *********************************************/
	
	@RequestMapping(value="/createNotes")
	public String createNotes(){
		return "addNotes";
	}
	
	/**
	 * 增加公告
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/addNotes")
	public String addNotes(Model model, HttpServletRequest request){
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Notes notes = new Notes();
		
		notes.setTitle(title);
		notes.setContent(content);
		notes.setTime(new Date());
		int addNotes = notesService.insert(notes);
		
		if (addNotes != 1) {
			System.out.println("error");
			System.out.println(addNotes);
			return "错误处理页面";
		}
		System.out.println("success");
		return "redirect:/admin/listAllNotes";
	}
	
	/**
	 * 列出所有公告
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listAllNotes")
	public String getAllNotes(Model model){
		List<Notes> list = notesService.getAllNotes();
		if(list == null){
			return "跳向相应错误处理页面";
		}
		model.addAttribute("list", list);
		return "notes";
	}
	
	/**
	 * 查看公告信息信息
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/{id}/notesDetail")
	public String detailNotes(@PathVariable("id") Integer id, Model model){
		Notes notes = notesService.selectByPrimaryKey(id);
		if (notes != null) {
			model.addAttribute("notes", notes);
			return "detailNotes";
		}
		return "跳向错误处理页面";
	}
	
	/**
	 * 删除公告
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{id}/deleteNotes")
	public String deleteNotes(@PathVariable("id") Integer id) {
		if (id == null) {
			return "error";
		}
		int delNotice = notesService.deleteByPrimaryKey(id);
		if (delNotice < 1) {
			return "error";
		}
		return "redirect:/admin/listAllNotes";
	}
	
	
	/*************************************** 学生就业信息操作 *********************************************/
	
	@RequestMapping(value="/about")
	public String getAbout(){
		return "about";
	}
	
	/**
	 * 列出所有的就业信息
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listEmploymentInfo")
	public String getAllEmploymentInfo(Model model){
		List<EmploymentInfo> list = employmentService.getAllEmployInfo();
		if(list == null){
			return "跳向相应错误处理页面";
		}
		model.addAttribute("list", list);
		return "listEmploymentInfo";
	}
	
	/**
	 * 查看详细就业信息
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/{id}/employmentDetail")
	public String detailEmployment(@PathVariable("id") Integer id, Model model){
		EmploymentInfo employmentInfo = employmentService.selectByPrimaryKey(id);
		if (employmentInfo != null) {
			model.addAttribute("employ", employmentInfo);
			return "viewEmploymentInfo";
		}
		return "跳向错误处理页面";
	}
	
	/**
	 * 发送通知邮件
	 */
	@RequestMapping(value="/sendEmail")
	public String sendEmail(){
		
		List<String> mail = new ArrayList<String>();
		
		String username = "15664646679@163.com";
		String password = "woshi2k10";

		String subject = "邮箱提醒：来自学校的一封邮件11";

		String context = "您好！若您的工作有变动，请您回学校就业网站<a>www.xupt.edu.cn</a>更新就业信息(若无，则忽略此邮件)";
		//To-Do
		List<EmploymentInfo> emailList = employmentService.getAllEmail();
		
		for (EmploymentInfo it : emailList) {
			mail.add(it.getEmail());
//			System.out.println(it.getEmail());
		}

		
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.163.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName(username);
		mailInfo.setPassword(password); //邮箱密码
		mailInfo.setFromAddress(username);
		mailInfo.setSubject(subject);
		mailInfo.setContent(context);
		SimpleMailSender sms = new SimpleMailSender();
		
		//设置群发邮件，此处需加一个循环
		mailInfo.setToAddress("359176585@qq.com");
		// 这个类主要来发送邮件
		sms.sendTextMail(mailInfo);// 发送文体格式
//		sms.sendHtmlMail(mailInfo);// 发送html格式
		
		
		System.out.println("123");
		return "adminLoginSuccess";
	}
	
	

	/*************************************** 企业信息操作 *********************************************/

	/**
	 * 查看招聘信息
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/listNoticeInfo")
	public String getAllNoticeInfo(Model model) {
		List<Notice> list = noticeService.getAllNotice();
		if (list == null) {
			return "跳向相应错误处理页面";
		}
		model.addAttribute("list", list);
		return "listNotice";
	}

	/**
	 * 查看招聘信息
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{id}/noticeDetail")
	public String noticeDetail(@PathVariable("id") Integer id, Model model) {
		if (id == null) {
			return "跳向错误处理页面";
		}
		Notice notice = noticeService.selectByPrimaryKey(id);
		if (notice != null) {
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
	 * 列出所有企业信息
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/listCompanyInfo")
	public String getAllCompanyInfo(Model model) {
		List<Company> list = companyService.getAllCompany();
		if (list == null) {
			return "跳向相应错误处理页面";
		}
		model.addAttribute("list", list);
		return "listCompany";
	}

	/**
	 * 刪除公司的信息
	 * 
	 * @param id
	 *            公司信息在表中的id
	 * @return
	 */
	@RequestMapping(value = "/{id}/deleteCompany")
	public String deleteCompanyInfo(@PathVariable("id") Integer id) {
		if (id == null) {
			return "error";
		}
		int delCompany = companyService.deleteByPrimaryKey(id);
		if (delCompany < 1) {
			return "error";
		}
		return "redirect:/admin/listCompanyInfo";
	}

	/**
	 * 查看企业相信信息
	 * 
	 * @param id
	 *            对应id
	 * @param model
	 *            装入返回值
	 * @return
	 */
	@RequestMapping(value = "/{id}/companyDetail")
	public String CompanyDetail(@PathVariable("id") Integer id, Model model) {
		if (id == null) {
			return "跳向错误处理页面";
		}
		Company company = companyService.selectByPrimaryKey(id);
		if (company != null) {
			model.addAttribute("company", company);
			return "companyInfo";
		}
		return "跳向错误处理页面";
	}

	/*************************************** 学生信息操作 *********************************************/
	
	/**
	 * 获得所有简历
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listResume")
	public String getAllResume(Model model){
		List<Resume> list = resumeService.getAllResume();
		model.addAttribute("list", list);
		return "listResume";
	}
	
	/**
	 * 查看简历详细信息
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{id}/resumeDetail") 
	public String getResumeDetail(@PathVariable("id") Integer id, Model model){
		Resume resume = resumeService.selectByPrimaryKey(id);
		
		model.addAttribute("resume", resume);
		return "detailResume";
	}
	
	/**
	 * 删除简历
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/{id}/deleteResume")
	public String deleteResume(@PathVariable("id") Integer id){
		if (id == null) {
			return "error";
		}
		int delNotice = resumeService.deleteByPrimaryKey(id);
		if (delNotice < 1) {
			return "error";
		}
		return "redirect:/admin/listResume";
	}
	
	/**
	 * 查看所有学生信息
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/listStuInfo")
	public String getAllStuInfo(Model model) {
		List<StuInfo> list = stuService.getAllStuInfo();
		model.addAttribute("list", list);
		// To-do
		return "listStuInfo";
	}

	/**
	 * 按学号查找学生信息
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{sno}/detailStuInfo")
	public String getStuInfoDetail(@PathVariable("sno") Integer sno, Model model) {
		if (sno == null) {
			return "redirect:/admin/listStuInfo";
		}
		StuInfo stuInfo = stuService.selectStuInfoBySno(sno);
		model.addAttribute("stuInfo", stuInfo);

		return "detailStuInfo";
	}


	/**
	 * 管理员修改学生信息
	 * 
	 * @param request
	 * @param id
	 * @return
	 * @throws NoSuchAlgorithmException 
	 */
	@RequestMapping(value="/{id}/update")
	String updateStuInfo(HttpServletRequest request, @PathVariable("id") Integer id, Model model) throws NoSuchAlgorithmException {
		// To-do
		// 用Request 接受参数，构造StuInfo实体，然后进行更新操作
		StuInfo stuInfo = new StuInfo();
		String stuName = request.getParameter("stuName");
		String sex = request.getParameter("sex");
		Integer sno = Integer.parseInt(request.getParameter("sno").trim());
		String password = request.getParameter("password");
		
		String tmp = MD5Utils.getMD5password(password);
		
		String major = request.getParameter("major");
		String origin = request.getParameter("origin");
		Integer entry_year = Integer.parseInt(request.getParameter("entry_year").trim());
		Integer gra_year = Integer.parseInt(request.getParameter("gra_year").trim());

		if (sno == null || entry_year == null || gra_year == null) {
			return "redirect:/admin/listStuInfo";
		}

		stuInfo.setId(id);
		stuInfo.setStuName(stuName);
		stuInfo.setSex(sex);
		stuInfo.setPassword(tmp);
		stuInfo.setSno(sno);
		stuInfo.setMajor(major);
		stuInfo.setOrigin(origin);
		stuInfo.setEntryYear(entry_year);
		stuInfo.setGraYear(gra_year);

		Integer j = stuService.updateStuInfoByPrimaryKeySelective(stuInfo);
		model.addAttribute("stuInfo", stuInfo);

		/************ 错误处理 ***************/
		if (j < 1) {
			return "error";
		}
		// To-do回到列表页 或 回到修改的界面
		// /firstt/admin/4131001/detailStuInfo
		return "redirect:/admin/" + sno + "/detailStuInfo";
	}

	/*************************************** 学生账号操作 *********************************************/

	@RequestMapping(value = "/addStuAccount")
	public String Index() {
		return "addStuAccount";
	}
	
	@RequestMapping(value="/searchBySno")
	public String search(){
		return "search";
	}

	/**
	 * 增加学生账号
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/addStuAccount", method = RequestMethod.POST)
	public String insertAccount(Model model, HttpServletRequest request) {
		Integer sno = Integer.parseInt(request.getParameter("sno"));
		StuAccount account = new StuAccount();
		account.setSno(sno);
		int id = stuService.insertAccountSelective(account);
		if (id != 0) {
			model.addAttribute("account", account);
		}
		// To-do 重新回到添加页面
		return "redirect:/admin/listStuAccount";
	}

	/**
	 * 按学号查找
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/selectAccountSno", method = RequestMethod.POST)
	public String selectAccountBySno(HttpServletRequest request, Model model) {
		Integer sno = Integer.parseInt(request.getParameter("sno").trim());
		StuInfo stuInfo = stuService.selectStuInfoBySno(sno);

		// 有待处理异常
		if (stuInfo != null) {
			model.addAttribute("stuInfo", stuInfo);
			return "detailStuInfo";

		}
		// To-do 调到相应页面
		return "error";
	}

	/**
	 * 查看所有学生账号
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/listStuAccount")
	public String getAllStuAccount(Model model) {
		List<StuAccount> list = stuService.getAllAccount();
		model.addAttribute("list", list);

		// To-do
		return "listStuAccount";
	}

	/**
	 * 删除学生账号
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{sno}/deleteStuAccount")
	public String deleteStuAccount(@PathVariable("sno") Integer sno) {
		if (sno == null) {
			return "redirect:/admin/listStuAccount";
		}
		boolean flag = stuService.deleteAccountBySno(sno);
		if (flag == false) {
			return "出现错误！";
		}
		// To-do
		return "redirect:/admin/listStuAccount";
	}

}
