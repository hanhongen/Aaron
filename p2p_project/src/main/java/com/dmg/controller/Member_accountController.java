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
import com.dmg.bean.Member;
import com.dmg.bean.Member_account;
import com.dmg.bean.Subject;
import com.dmg.service.MemberService;
import com.dmg.service.Member_accountService;

@Controller
@RequestMapping("/member_account")
public class Member_accountController {
	@Autowired
	private Member_accountService member_accountService;
	@Autowired
	private MemberService memberService;
	
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
		System.out.println("id"+id);
		Member_account ma=member_accountService.listma(id);
		System.out.println("ma:"+ma.toString());
		return ma;
	}
	//提款金额修改
	@RequestMapping(value="tkAmountUpdate",method={RequestMethod.POST})
	@ResponseBody
	public String tkAmountUpdate(HttpServletRequest request){
		String i=request.getParameter("id");
		int id = Integer.valueOf(i);
		String am = request.getParameter("amount");
		String pwd = request.getParameter("pwd");		
		System.out.println("id:"+id);
		System.out.println("amount:"+am);
		System.out.println("pwd:"+pwd);
		
		Member member = memberService.getMemberId(id);
		System.out.println("Withdraw_password:"+member.getWithdraw_password());
		String str="";
		if (member.getWithdraw_password() == pwd) {
			int amo = Integer.valueOf(am);
			double amount = Double.valueOf(amo);
			member_accountService.tkAmountUpdate(id, amount);
			System.out.println("提款成功！");
			str="1";
		} else {
			System.out.println("提款失败！");
			str="0";
		}
		return str;
	}
	
}
