package com.dmg.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
//�˺���Ϣ
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Member;
import com.dmg.service.MemberService;
@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	//��ѯ�����˺���Ϣ
	@RequestMapping("/listMember")
	public String listMember(Model model,
			@RequestParam(required=false)String namem,
			@RequestParam(required=false)String mobilePhonem,
			@RequestParam(required=false)String memberNamem,
			@RequestParam(required=false)String invitationcodem,
			@RequestParam(required=false)String create_datem){
		
			Map map = new HashMap<>();
			map.put("namem", namem);
			map.put("mobilePhonem", mobilePhonem);
			map.put("memberNamem", memberNamem);
			map.put("invitationcodem", invitationcodem);
			map.put("create_datem", create_datem);
			
			List<Member> listMember = memberService.listMember(map);
			model.addAttribute("listMember", listMember);
			
			model.addAttribute("namem", namem);
			model.addAttribute("mobilePhonem", mobilePhonem);
			model.addAttribute("memberNamem", memberNamem);
			model.addAttribute("invitationcodem", invitationcodem);
			
			return "backJsp/forms";
	}
	//����id��ѯ�����˺���Ϣ
	@RequestMapping("/listMemberId/{id}")
	public String listMemberId(Model model,@PathVariable("id")int id){
		System.out.println("id:"+id);
		List<Member> listMemberId = memberService.listMemberId(id);
		System.out.println("toString:"+listMemberId.size());
		model.addAttribute("listMemberId", listMemberId);
		return "backJsp/accountInfo";
	}

}
