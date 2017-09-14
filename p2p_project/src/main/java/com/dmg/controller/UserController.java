package com.dmg.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Users;
import com.dmg.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	//前台首页
	@RequestMapping("/index")
	public String index() {
		return "frontJsp/index";
	}
	
	//后台首页
	@RequestMapping("/indexback")
	public String indexback() {
		return "backJsp/indexback";
	}
	
	//用户注册
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
	
	//登陆
	@RequestMapping("login")
	public String login(@RequestParam(required=false)String mobile_phone,@RequestParam(required=false)String password,Model model) {
		Users user=userService.getUsers(mobile_phone,password);
		String flag="";
		if(user==null) {
			model.addAttribute("msg", "账号或密码不正确");
			flag="login";
		}else {
			model.addAttribute("users", user);
			flag="frontJsp/index";
		}
		return flag;
	}
	
	
}
