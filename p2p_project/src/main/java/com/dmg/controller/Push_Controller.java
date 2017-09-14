package com.dmg.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Push_notice;
import com.dmg.service.Push_notice_service;

@RequestMapping
@Component
public class Push_Controller {
	@Autowired
	private Push_notice_service push_notice_service;
	
	//显示公告管理
	@RequestMapping("/test1")
	public String test1(Model model){
	  List<Push_notice> push_notices=push_notice_service.listpush();
	  model.addAttribute("push_notices",push_notices);
		return "backJsp/media";
	}
	@RequestMapping("/test2")
	public String test2(Push_notice push_notice){
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date=dateFormat.format(new Date());
		push_notice.setCreate_date(date);
		push_notice_service.save(push_notice);
		return "redirect:/test/test1";
	}
}
