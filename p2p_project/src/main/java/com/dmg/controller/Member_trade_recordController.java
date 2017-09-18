package com.dmg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.service.Member_trade_recordService;

@Controller
@RequestMapping("/member_trade_record")
public class Member_trade_recordController {
	@Autowired
	private Member_trade_recordService member_trade_recordService;
	
	@RequestMapping("/listMember_trade_record")
	public String listMember_trade_record(int id){
		
		return null;
	}
	
}
