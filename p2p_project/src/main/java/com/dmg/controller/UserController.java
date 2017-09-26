package com.dmg.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Subject;
import com.dmg.bean.Users;
import com.dmg.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	// ע��
	@RequestMapping("/outlogin")
	public String outlogin(HttpSession session) {
		session.invalidate();
		return "redirect:/user/index";
	}

	// ǰ̨��ҳ
	@RequestMapping("/index")
	public String index(Model model) {
		List<Subject> sub = userService.showSubject();
		SimpleDateFormat sdf = new SimpleDateFormat("MM");
		String mon = sdf.format(new Date());
		model.addAttribute("sub", sub);
		model.addAttribute("mon", mon);
		return "frontJsp/index";
	}

	// ��̨��ҳ
	@RequestMapping("/indexback")
	public String indexback(Model model, @RequestParam(required = false) int id) {
		Users user=userService.getUsersById(id);
		model.addAttribute("user", user);
		return "backJsp/indexback";
	}

	// �û�ע��
	@RequestMapping("/register")
	public String saveUser(Users users) {
		users.setStatus(1);
		users.setIdentity(0);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date = sdf.format(new Date());
		users.setCreate_date(date);
		userService.save(users);
		return "frontJsp/index";
	}

	// ��½
	@RequestMapping("login")
	public String login(@RequestParam(required = false) String mobile_phone,
			@RequestParam(required = false) String password, Model model) {
		String flag = "";
		if (mobile_phone != null && password != null) {
			Users user = userService.getUsers(mobile_phone, password);
			if (user == null) {
				model.addAttribute("msg", "�˺Ż����벻��ȷ");
				flag = "login";
			} else {
				model.addAttribute("user", user);
				List<Subject> sub = userService.showSubject();
				SimpleDateFormat sdf = new SimpleDateFormat("MM");
				String mon = sdf.format(new Date());
				
				model.addAttribute("sub", sub);
				model.addAttribute("mon", mon);
			
				flag = "frontJsp/index";
			}
		}
		return flag;
	}

}
