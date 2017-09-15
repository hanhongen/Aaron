package com.dmg.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Member;
import com.dmg.bean.Member_bankcards;
import com.dmg.service.Member_BankcardsService;
//绑卡管理
@Controller
@RequestMapping("/member_bankcards")
public class Member_BankcardsController {
	@Autowired
	private Member_BankcardsService member_BankcardsService;
	/**
	 * 列表显示：
     * 序号 手机号 绑卡人姓名 绑卡身份证 绑卡类型 绑卡卡号 绑卡地址 状态 添加时间 。
	 * @return
	 */
	@RequestMapping("/listMember_Bankcards")//查询、模糊查询
	public String listMember_Bankcards(Model model,
			@RequestParam(required=false)String phone,
			@RequestParam(required=false)String cardname,
			@RequestParam(required=false)String cardno,
			@RequestParam(required=false)String createdate){
		
		Map map = new HashMap<>();
		map.put("phone", phone);//手机
		map.put("cardname", cardname);//绑卡姓名
		map.put("cardno", cardno);//卡号
		map.put("createdate", createdate);//时间
		
		List<Member_bankcards> listmb = member_BankcardsService.listMember_bankcards(map);//银联
		for (Member_bankcards mb : listmb) {
			System.out.println("listMember_Bankcards:"+mb.getMember().getMobile_phone());
		}
		model.addAttribute("listmb", listmb);
		
		model.addAttribute("phone", phone);
		model.addAttribute("cardname", cardname);
		model.addAttribute("cardno", cardno);
		
		return "backJsp/member_bankcards";
	}
	@RequestMapping("/updateflag/{id}")//逻辑删除,解绑银行卡
	public String updateflag(@PathVariable("id")int id){
		System.out.println("ID:"+id);
		member_BankcardsService.updateDelFlag(id);
		return "redirect:/member_bankcards/listMember_Bankcards";
	}
	
}
