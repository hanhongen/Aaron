package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Member_withdraw_record;
import com.dmg.service.Member_withdraw_recordService;

@Controller
@RequestMapping("/member_withdraw_record")
public class Member_withdraw_recordController {
	@Autowired
	private Member_withdraw_recordService member_withdraw_recordService;
	@RequestMapping("/listMember_withdraw_record")
	public String listMember_withdraw_record(Model model){
		List<Member_withdraw_record> listmwr = member_withdraw_recordService.listMember_withdraw_record();
		model.addAttribute("listmwr", listmwr);
		return "backJsp/member_withdraw_record";
	}
}
