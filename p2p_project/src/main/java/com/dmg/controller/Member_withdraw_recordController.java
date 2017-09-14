package com.dmg.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Member_withdraw_record;
import com.dmg.service.Member_withdraw_recordService;

@Controller
@RequestMapping("/member_withdraw_record")
public class Member_withdraw_recordController {
	@Autowired
	private Member_withdraw_recordService member_withdraw_recordService;
	@RequestMapping("/listMember_withdraw_record")
	public String listMember_withdraw_record(Model model,
			@RequestParam(required=false)String mname,
			@RequestParam(required=false)String mphone,
			@RequestParam(required=false)String mcard,
			@RequestParam(required=false)String mstatus,
			@RequestParam(required=false)String create_datem){
			
		Map map = new HashMap<>();
		map.put("mname", mname);
		map.put("mphone", mphone);
		map.put("mcard", mcard);
		map.put("mstatus", mstatus);
		map.put("create_datem", create_datem);
		
		List<Member_withdraw_record> listmwr = member_withdraw_recordService.listMember_withdraw_record(map);
		model.addAttribute("listmwr", listmwr);
		
		model.addAttribute("mname", mname);
		model.addAttribute("mphone", mphone);
		model.addAttribute("mcard", mcard);
		model.addAttribute("mstatus", mstatus);
		
		return "backJsp/member_withdraw_record";
	}
}
