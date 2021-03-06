package com.zhang.demo.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zhang.demo.model.EmploymentInfo;
import com.zhang.demo.model.Notes;
import com.zhang.demo.model.Notice;
import com.zhang.demo.model.Resume;
import com.zhang.demo.model.StuInfo;
import com.zhang.demo.service.EmploymentService;
import com.zhang.demo.service.NotesService;
import com.zhang.demo.service.NoticeService;
import com.zhang.demo.service.ResumeService;
import com.zhang.demo.service.StuService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	StuService stuService;
	@Autowired
	ResumeService resumeService;
	@Autowired
	EmploymentService employmentService;
	@Autowired
	NotesService notesService;
	@Autowired
	NoticeService noticeService;

	/**
	 * 按id查看详细信息
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{id}/stuInfo")
	public String detailStuInfo(@PathVariable("id") Integer id, Model model) {
		StuInfo stuInfo = stuService.selectStuInfoByPrimaryKey(id);

		model.addAttribute("stuInfo", stuInfo);

		return "detailStuInfo";
	}

	/**
	 * 查看招聘信息
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
		return "listNoticeForStu";
	}

	/**
	 * 多条件查找招聘信息
	 * @param request
	 * @param model
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "/searchNotice")
	public String searchNotice(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		// TODO
		String jobtitle = new String(request.getParameter("jobtitle").getBytes("iso-8859-1"), "utf-8");
		String location = new String(request.getParameter("location").getBytes("iso-8859-1"), "utf-8");

		List<Notice> list = noticeService.searchNotice(jobtitle, location);

		model.addAttribute("list", list);
		return "listNoticeForStu";
	}

	/**
	 * 列出所有公告
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/listAllNotes")
	public String getAllNotes(Model model) {
		List<Notes> list = notesService.getAllNotes();
		if (list == null) {
			return "跳向相应错误处理页面";
		}
		model.addAttribute("list", list);
		return "notes_stu";
	}

	/**
	 * 根据学号查看自己的简历
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{sno}/detailResume")
	public String detailResume(@PathVariable("sno") Integer sno, Model model) {

		Resume resume = resumeService.selectBySno(sno);

		// 若还无简历，则跳到创建简历的页面
		if (resume == null) {
			return "newResume";
		}
		model.addAttribute("resume", resume);
		return "detailResume";
	}

	/**
	 * 新增一个简历
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/addResume")
	public String addResume(HttpServletRequest request, HttpSession session) {
		// Integer id = Integer.parseInt(request.getParameter("id"));
		Integer sno = Integer.parseInt(request.getParameter("sno").trim());
		String name = request.getParameter("name");
		Integer age = Integer.parseInt(request.getParameter("age"));
		String school = request.getParameter("school");
		Integer phone = Integer.parseInt(request.getParameter("phone"));
		String email = request.getParameter("email");
		String major = request.getParameter("major");
		String experience = request.getParameter("experience");
		String selfintro = request.getParameter("experience");

		Resume resume = new Resume();
		// resume.setId(id);
		resume.setSno(sno);
		resume.setName(name);
		resume.setAge(age);
		resume.setSchool(school);
		resume.setPhone(phone);
		resume.setEmail(email);
		resume.setMajor(major);
		resume.setExperience(experience);
		resume.setSelfintro(selfintro);

		int flag = resumeService.insertSelective(resume);

		// 提交失败重新填写表单
		if (flag != 1) {
			return "redirect:/newResume";
		}
		// 提交成功则去详情页查看
		return "redirect:/student/" + sno + "/detailResume";
	}

	/**
	 * 修改简历
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{id}/updateResume", method = RequestMethod.POST)
	public String updateResume(@PathVariable("id") Integer id, HttpServletRequest request) {
		String name = request.getParameter("name");
		Integer sno = Integer.parseInt(request.getParameter("sno"));
		Integer age = Integer.parseInt(request.getParameter("age").trim());
		String school = request.getParameter("school");
		Integer phone = Integer.parseInt(request.getParameter("phone").trim());
		String email = request.getParameter("email");
		String major = request.getParameter("major");
		String experience = request.getParameter("experience");
		String selfintro = request.getParameter("selfintro");

		if (sno == null || age == null || phone == null) {
			return "errorPage";
		}

		Resume resume = new Resume();
		resume.setId(id);
		resume.setSno(sno);
		resume.setName(name);
		resume.setAge(age);
		resume.setSchool(school);
		resume.setPhone(phone);
		resume.setEmail(email);
		resume.setMajor(major);
		resume.setExperience(experience);
		resume.setSelfintro(selfintro);

		int flag = resumeService.updateByPrimaryKeySelective(resume);

		if (flag != 1) {
			return "detailResume";
		}
		return "redirect:/student/" + sno + "/detailResume";
	}

	/**
	 * 删除简历
	 * @param id
	 *            简历的id
	 * @return 返回影响的数据的条数
	 */
	@RequestMapping(value = "/{id}/deleteResume")
	public String deleteResumeById(@PathVariable("id") Integer id) {
		int flag = resumeService.deleteByPrimaryKey(id);
		if (flag != 1) {
			return "errorPage";
		}
		return "newResume";
	}

	/**
	 * 查看详细就业信息
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{id}/employmentDetail")
	public String detailEmployment(@PathVariable("id") Integer id, Model model) {
		EmploymentInfo employmentInfo = employmentService.selectByPrimaryKey(id);
		if (employmentInfo != null) {
			model.addAttribute("employ", employmentInfo);
			return "viewEmploymentInfo";
		}
		return "跳向错误处理页面";
	}
	
	/**
	 * 列出自己所有的就业信息
	 * @param sno
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{sno}/listEmploymentInfo")
	public String listEmploymentInfo(@PathVariable("sno") Integer sno, Model model) {
		List<EmploymentInfo> list = employmentService.selectBySno(sno);

		if (list == null) {
			System.out.println("error!");
			return "newEmploy";
		}
		model.addAttribute("list", list);
		return "listEmploymentInfoForStu";
	}

	/**
	 * 增加就业信息
	 * @return
	 */
	@RequestMapping(value = "/newEmployInfo")
	public String toNewEmployInfo() {
		return "newEmploy";
	}

	/**
	 * 增加就业信息
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/addEmploymentInfo")
	public String addNewEmploymentInfo(HttpServletRequest request, HttpSession session) {
		Integer sno = Integer.parseInt(request.getParameter("sno"));
		String passport = request.getParameter("passport");
		String major = request.getParameter("major");
		String name = request.getParameter("name");
		Integer salary = Integer.parseInt(request.getParameter("salary"));
		String email = request.getParameter("email").trim();
		String gowhere = request.getParameter("gowhere");
		String companyname = request.getParameter("companyname").trim();
		Integer ccode = Integer.parseInt(request.getParameter("ccode"));
		String cproperties = request.getParameter("cproperties");
		String ctrade = request.getParameter("ctrade");
		String location = request.getParameter("location");
		String jobtitle = request.getParameter("jobtitle");
		String contacts = request.getParameter("contacts");
		String contactsphone = request.getParameter("contactsphone");
		String cemail = request.getParameter("cemail");
		StuInfo stuInfo = (StuInfo) session.getAttribute("stu");
		Integer graYear = stuInfo.getGraYear();

		EmploymentInfo info = new EmploymentInfo();
		info.setSno(sno);
		info.setPassport(passport);
		info.setEmail(email);
		info.setMajor(major);
		info.setStatus(0);
		info.setSalary(salary);
		info.setName(name);
		info.setGraYear(graYear);
		info.setGowhere(gowhere);
		info.setCompanyname(companyname);
		info.setCcode(ccode);
		info.setCproperties(cproperties);
		info.setCtrade(ctrade);
		info.setLocation(location);
		info.setJobtitle(jobtitle);
		info.setContacts(contacts);
		info.setContactsphone(contactsphone);
		info.setCemail(cemail);

		int flag = employmentService.insert(info);
		if (flag != 1) {
			System.out.println("insert error!");
			return "errorPage";
		}
		return "redirect:/student/" + sno + "/listEmploymentInfo";
	}

	/**
	 * 更新就业信息
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/{id}/updateEmployInfo", method = RequestMethod.POST)
	public String updateEmploymentInfo(@PathVariable("id") Integer id, HttpServletRequest request) {
		Integer sno = Integer.parseInt(request.getParameter("sno"));
		String passport = request.getParameter("passport");
		String major = request.getParameter("major");
		Integer salary = Integer.parseInt(request.getParameter("salary"));
		String name = request.getParameter("name");
		Integer graYear = Integer.parseInt(request.getParameter("graYear"));
		String email = request.getParameter("email").trim();
		String gowhere = request.getParameter("gowhere");
		String companyname = request.getParameter("companyname").trim();
		Integer ccode = Integer.parseInt(request.getParameter("ccode"));
		String cproperties = request.getParameter("cproperties");
		String ctrade = request.getParameter("ctrade");
		String location = request.getParameter("location");
		String jobtitle = request.getParameter("jobtitle");
		String contacts = request.getParameter("contacts");
		String contactsphone = request.getParameter("contactsphone");
		String cemail = request.getParameter("cemail");

		EmploymentInfo info = new EmploymentInfo();
		info.setId(id);
		info.setSno(sno);
		info.setSalary(salary);
		info.setMajor(major);
		info.setName(name);
		info.setGraYear(graYear);
		info.setPassport(passport);
		info.setEmail(email);
		info.setGowhere(gowhere);
		info.setCompanyname(companyname);
		info.setCcode(ccode);
		info.setCproperties(cproperties);
		info.setCtrade(ctrade);
		info.setLocation(location);
		info.setJobtitle(jobtitle);
		info.setContacts(contacts);
		info.setContactsphone(contactsphone);
		info.setCemail(cemail);

		int flag = employmentService.updateByPrimaryKey(info);
		if (flag != 1) {
			return "errorPage";
		}
		return "redirect:/student/" + sno + "/listEmploymentInfo";
	}
}
