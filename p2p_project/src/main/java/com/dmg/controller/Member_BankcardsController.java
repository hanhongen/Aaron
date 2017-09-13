package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Member;
import com.dmg.bean.Member_bankcards;
import com.dmg.service.Member_BankcardsService;
//绑卡管理
@Controller
@RequestMapping("member_bankcards")
public class Member_BankcardsController {
	@Autowired
	private Member_BankcardsService member_BankcardsService;
	/**
	 * 列表显示：
     * 序号 手机号 绑卡人姓名 绑卡身份证 绑卡类型 绑卡卡号 绑卡地址 状态 添加时间 。
	 * @return
	 */
	@RequestMapping("/listMember_Bankcards")
	public String listMember_Bankcards(Model model){
		List<Member_bankcards> listmb = member_BankcardsService.listMember_bankcards();//银联
		for (Member_bankcards mb : listmb) {
			System.out.println("listMember_Bankcards:"+mb.getMember().getMobile_phone());
		}
		model.addAttribute("listmb", listmb);
		return "backJsp/member_bankcards";
	}
	
}
