package com.zhang.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhang.demo.model.Resume;
import com.zhang.demo.model.StuInfo;
import com.zhang.demo.service.ResumeService;
import com.zhang.demo.service.StuService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	StuService stuService;

	@Autowired
	ResumeService resumeService;

	/**
	 * 按id查看详细信息
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{id}/stuInfo")
	public String stuInfo(@PathVariable("id") Integer id, Model model) {
		StuInfo stuInfo = stuService.selectStuInfoByPrimaryKey(id);

		model.addAttribute("stuInfo", stuInfo);

		return "detailStuInfo";
	}

	/**
	 * 根据学号查看自己的简历
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{sno}/detailResume")
	public String Resume(@PathVariable("sno") Integer sno, Model model) {

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
	 * 
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

		int flag = resumeService.insert(resume);

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
	@RequestMapping(value = "/{id}/updateResume")
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
	 * 
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

}
