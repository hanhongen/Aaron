package com.dmg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	//ǰ̨��ҳ
	@RequestMapping("/index")
	public String index() {
		return "frontJsp/index";
	}
	
	//��̨��ҳ
	@RequestMapping("/indexback")
	public String indexback() {
		return "backJsp/indexback";
	}
	
	
}
