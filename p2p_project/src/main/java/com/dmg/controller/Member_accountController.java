package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Award_records;
import com.dmg.bean.Member_account;
import com.dmg.bean.Subject;
import com.dmg.service.Member_accountService;

@Controller
@RequestMapping("/member_account")
public class Member_accountController {
	@Autowired
	private Member_accountService member_accountService;
	
	@RequestMapping("/listMember_account")
	public String listMember_account(Model model){
		List<Member_account> listma = member_accountService.listMember_account();
		model.addAttribute("listar", listma);
		return "色即是空,空即是色";
	}
	
}
