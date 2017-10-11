package com.dmg.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		return "ɫ���ǿ�,�ռ���ɫ";
	}
	/**
	 * 账户可用余额
	 * 投资金额(元)
	 * 累计收益(元)
	 * 冻结金额(元)
	 * 所查表：member_account(成员账户表)
	 */
	@RequestMapping(value="selectAmount",method={RequestMethod.POST})
	@ResponseBody
	public Member_account selectAmount(HttpServletRequest request){
		String i=request.getParameter("id");
		System.out.println("selectAmount_id:"+i);
		int id = Integer.valueOf(i);
		Member_account ma=member_accountService.listma(id);
		return ma;
	}
}
