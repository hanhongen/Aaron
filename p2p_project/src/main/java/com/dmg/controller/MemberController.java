package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
//账号信息

import com.dmg.bean.Member;
import com.dmg.service.MemberService;
@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	//查询所有账号信息
	@RequestMapping("/listMember")
	public String listMember(Model model){
			List<Member> listMember = memberService.listMember();
			model.addAttribute("listMember", listMember);
			return "backJsp/forms";
	}
	//根据id查询个人账号信息
	@RequestMapping("/listMemberId/{id}")
	public String listMemberId(Model model,@PathVariable("id")int id){
		System.out.println("id:"+id);
		List<Member> listMemberId = memberService.listMemberId(id);
		System.out.println("toString:"+listMemberId.size());
		model.addAttribute("listMemberId", listMemberId);
		return "backJsp/accountInfo";
	}

}
