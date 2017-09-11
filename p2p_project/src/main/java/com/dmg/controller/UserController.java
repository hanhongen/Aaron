package com.dmg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

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
	
	
}
