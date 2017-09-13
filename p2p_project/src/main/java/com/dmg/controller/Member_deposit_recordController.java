package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Member_deposit_record;
import com.dmg.service.Member_deposit_recordSevice;

@Controller
@RequestMapping("/member_deposit_record")
public class Member_deposit_recordController {

	@Autowired
	private Member_deposit_recordSevice member_deposit_recordSevice;
	
	
	@RequestMapping("/listMember_deposit_record")
	public String listMember_deposit_record(Model model){
		List<Member_deposit_record> listmdr=member_deposit_recordSevice.listMember_deposit_record();
		model.addAttribute("listmdr", listmdr);
		return "backJsp/member_deposit_record";
	}
	
}
