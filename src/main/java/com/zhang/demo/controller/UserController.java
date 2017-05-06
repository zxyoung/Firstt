package com.zhang.demo.controller;

import java.security.MessageDigest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	public void toMD5(String plainText) {
		try {
			// 生成实现指定摘要算法的 MessageDigest 对象。
			MessageDigest md = MessageDigest.getInstance("MD5");
			// 使用指定的字节数组更新摘要。
			md.update(plainText.getBytes());
			// 通过执行诸如填充之类的最终操作完成哈希计算。
			byte b[] = md.digest();
			// 生成具体的md5密码到buf数组
			int i;
			StringBuffer buf = new StringBuffer("");
			for (int offset = 0; offset < b.length; offset++) {
				i = b[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			System.out.println("32位: " + buf.toString());// 32位的加密
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String agrs[]) {
		new UserController().toMD5("LXD");// 加密LXD
		new UserController().toMD5("zhangxin");// 加密LXD
	}
	/*
	 * @Autowired UserService userService;
	 * 
	 * 
	 * @RequestMapping(value="addUser") public String index(){ return "addUser";
	 * }
	 * 
	 *//**
		 * 测试用
		 * 
		 * @param request
		 * @param model
		 * @return
		 */
	/*
	 * @RequestMapping("/showUser") public String showUser(HttpServletRequest
	 * request, Model model) { int userId =
	 * Integer.parseInt(request.getParameter("id")); User user =
	 * this.userService.getUserById(userId); model.addAttribute("user", user);
	 * return "showUser"; }
	 * 
	 *//**
		 * 添加一个用户
		 * 
		 * @param model
		 * @return
		 */
	/*
	 * @RequestMapping(value = "/add", method=RequestMethod.POST) public String
	 * insertUser(Model model, HttpServletRequest request) { String userName =
	 * request.getParameter("userName"); Integer age =
	 * Integer.parseInt(request.getParameter("age")); String password =
	 * request.getParameter("password"); User user = new User();
	 * user.setUserName(userName); user.setAge(age); user.setPassword(password);
	 * // user.setAge(23); // user.setUserName("张会闯"); //
	 * user.setPassword("12sdf"); int id = userService.insertSelective(user); if
	 * (id != 0) { model.addAttribute("user", user); } return "success"; }
	 * 
	 *//**
		 * 获得所有的用户
		 * 
		 * @param model
		 * @return
		 */
	/*
	 * @RequestMapping(value = "/list") public String getAll(Model model) {
	 * List<User> list = userService.getAllUser(); model.addAttribute("list",
	 * list); return "list"; }
	 * 
	 *//**
		 * 获取指定id的用户详细信息
		 * 
		 * @param user_id
		 * @param model
		 * @return
		 */
	/*
	 * @RequestMapping(value = "/{user_id}/detail", method = RequestMethod.GET)
	 * public String getDetail(@PathVariable("user_id") Integer user_id, Model
	 * model) { if (user_id == null) { return "redirect:/user/list"; } User user
	 * = userService.getUserById(user_id); if (user == null) { return
	 * "redirect:/user/list"; } model.addAttribute("user", user); return
	 * "detail"; }
	 * 
	 *//**
		 * 删除指定id的用户
		 * 
		 * @param user_id
		 * @param model
		 * @return
		 *//*
		 * @RequestMapping(value = "/{user_id}/delete") public String
		 * delete(@PathVariable("user_id") Integer user_id, Model model) { if
		 * (user_id == null) { return "redirect:/user/list"; } int id =
		 * userService.delete(user_id);
		 * 
		 * return "redirect:/user/list"; }
		 * 
		 * @RequestMapping(value = "/{user_id}/update",
		 * method=RequestMethod.POST) public String
		 * update(@PathVariable("user_id") Integer user_id, HttpServletRequest
		 * request) { String userName = request.getParameter("userName"); String
		 * password = request.getParameter("password"); Integer age =
		 * Integer.parseInt(request.getParameter("age")); User user = new
		 * User(); user.setId(user_id); user.setUserName(userName);
		 * user.setPassword(password); user.setAge(age); int tmp =
		 * userService.updateByPrimaryKey(user); return "redirect:/user/list"; }
		 */
}
