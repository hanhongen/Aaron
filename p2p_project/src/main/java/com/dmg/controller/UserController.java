package com.dmg.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.News;
import com.dmg.bean.Users;
import com.dmg.service.Newsservice;
import com.dmg.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
 @Autowired
 private Newsservice Newsservice;

//ǰ̨��ҳ
	@RequestMapping("/index")
	public String index(Model model) {
		List<News>list=Newsservice.list();
		model.addAttribute("list",list);
		return "frontJsp/index";
	}
	
	//��̨��ҳ
	@RequestMapping("/indexback")
	public String indexback() {
		return "backJsp/indexback";
	}
	
	//�û�ע��
	@RequestMapping("/register")
	public String saveUser(Users users) {
		users.setStatus(1);
		users.setIdentity(0);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date=sdf.format(new Date());
		users.setCreate_date(date);
		userService.save(users);
		return "frontJsp/index";
	}
	
	//��½
	@RequestMapping("login")
	public String login(@RequestParam(required=false)String mobile_phone,@RequestParam(required=false)String password,Model model) {
		Users user=userService.getUsers(mobile_phone,password);
		String flag="";
		if(user==null) {
			model.addAttribute("msg", "�˺Ż����벻��ȷ");
			flag="login";
		}else {
			model.addAttribute("users", user);
			flag="frontJsp/index";
		}
		return flag;
	}
	
	
}
