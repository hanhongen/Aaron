package com.dmg.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Member_deposit_record;
import com.dmg.service.Member_deposit_recordSevice;

@Controller
@RequestMapping("/member_deposit_record")
public class Member_deposit_recordController {

	@Autowired
	private Member_deposit_recordSevice member_deposit_recordSevice;
	
	
	@RequestMapping("/listMember_deposit_record")
	public String listMember_deposit_record(Model model,
			@RequestParam(required=false)String snumber,
			@RequestParam(required=false)String phone,
			@RequestParam(required=false)String status,
			@RequestParam(required=false)String fynumber,
			@RequestParam(required=false)String create_datem){
		Map map = new HashMap<>();
		map.put("snumber", snumber);
		map.put("phone", phone);
		map.put("status", status);
		map.put("fynumber", fynumber);
		map.put("create_datem", create_datem);
		
		List<Member_deposit_record> listmdr=member_deposit_recordSevice.listMember_deposit_record(map);
		model.addAttribute("listmdr", listmdr);
		
		model.addAttribute("snumber", snumber);
		model.addAttribute("phone", phone);
		model.addAttribute("status", status);
		model.addAttribute("fynumber", fynumber);
		
		return "backJsp/member_deposit_record";
	}
	
}
