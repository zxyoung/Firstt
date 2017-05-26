package com.zhang.demo.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.zhang.demo.model.Shit;
import com.zhang.demo.service.EmploymentService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	EmploymentService employmentService;
	
//	public void toMD5(String plainText) {
//		try {
//			// 生成实现指定摘要算法的 MessageDigest 对象。
//			MessageDigest md = MessageDigest.getInstance("MD5");
//			// 使用指定的字节数组更新摘要。
//			md.update(plainText.getBytes());
//			// 通过执行诸如填充之类的最终操作完成哈希计算。
//			byte b[] = md.digest();
//			// 生成具体的md5密码到buf数组
//			int i;
//			StringBuffer buf = new StringBuffer("");
//			for (int offset = 0; offset < b.length; offset++) {
//				i = b[offset];
//				if (i < 0)
//					i += 256;
//				if (i < 16)
//					buf.append("0");
//				buf.append(Integer.toHexString(i));
//			}
//			System.out.println("32位: " + buf.toString());// 32位的加密
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//
//	public static void main(String agrs[]) {
//		new UserController().toMD5("LXD");// 加密LXD
//		new UserController().toMD5("zhangxin");// 加密LXD
//	}
	
	@RequestMapping(value="/zx")
	public String poooo(){
		return "zhangxin";
	}
	@RequestMapping(value="/haha")
//	@ResponseBody
	public String Shittt(HttpServletRequest request, Model model) throws UnsupportedEncodingException{
		
		String tmpMajor = request.getParameter("major");
		String major;
		if (tmpMajor!=null || !tmpMajor.equals("")) {
			major = new String(tmpMajor.getBytes("iso-8859-1"), "utf-8");
		}else{
			major = "计科";
		}
		
		Integer tmpStart = Integer.parseInt(request.getParameter("start"));
		Integer start=null;
		if (tmpStart != null || !tmpStart.equals("")) {
			start = tmpStart;
		}else {
			start=2015;
		}
		
		Integer tmpEnd = Integer.parseInt(request.getParameter("end"));
		Integer end=null;
		if (tmpEnd != null || !tmpEnd.equals("")) {
			end = tmpEnd;
		}else {
			end = 2017;
		}
		
		System.out.println(major);
		System.out.println(start);
		System.out.println(end);
		List<Shit> list = employmentService.getShitList(major, start, end);
		
		String str = JSONArray.toJSONString(list);
		
		model.addAttribute("list", list);
		System.out.println(str);
		return "zhangxin";
	}
	
	
	/*******************************/
	@RequestMapping("/po")
	public String shit(String id){
		return "wangluo";
	}
	@RequestMapping(value="/hehe")
	@ResponseBody
	public String Shit(HttpServletRequest request, Model model) throws UnsupportedEncodingException{
		List<Shit> list = employmentService.getShitList("计科",2015, 2017);
		
		String str = JSONArray.toJSONString(list);
		
		model.addAttribute("list", list);
		System.out.println(str);
		return str;
	}
}
