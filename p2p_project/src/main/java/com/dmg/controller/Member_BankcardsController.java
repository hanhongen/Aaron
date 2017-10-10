package com.dmg.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dmg.bean.Member;
import com.dmg.bean.Member_bankcards;
import com.dmg.service.Member_BankcardsService;
//�󿨹���
@Controller
@RequestMapping("/member_bankcards")
public class Member_BankcardsController {
	@Autowired
	private Member_BankcardsService member_BankcardsService;
	/**
	 * �б���ʾ��
     * 绑卡管理
	 * @return
	 */
	@RequestMapping("/listMember_Bankcards")//��ѯ��ģ���ѯ
	public String listMember_Bankcards(Model model,
			@RequestParam(required=false)String phone,
			@RequestParam(required=false)String cardname,
			@RequestParam(required=false)String cardno,
			@RequestParam(required=false)String createdate){
		
		Map map = new HashMap<>();
		map.put("phone", phone);//�ֻ�
		map.put("cardname", cardname);//������
		map.put("cardno", cardno);//����
		map.put("createdate", createdate);//ʱ��
		
		List<Member_bankcards> listmb = member_BankcardsService.listMember_bankcards(map);//����
		for (Member_bankcards mb : listmb) {
			System.out.println("listMember_Bankcards:"+mb.getMember().getMobile_phone());
		}
		model.addAttribute("listmb", listmb);
		
		model.addAttribute("phone", phone);
		model.addAttribute("cardname", cardname);
		model.addAttribute("cardno", cardno);
		
		return "backJsp/member_bankcards";
	}
	@RequestMapping("/updateflag/{id}")//�߼�ɾ��,������п�
	public String updateflag(@PathVariable("id")int id){
		System.out.println("ID:"+id);
		member_BankcardsService.updateDelFlag(id);
		return "redirect:/member_bankcards/listMember_Bankcards";
	}
	@RequestMapping(value="listmb",method=RequestMethod.POST)
	@ResponseBody
	public List<Member_bankcards> listmb(HttpServletRequest request,Model model){
		String idd=request.getParameter("id");
		HttpSession session = request.getSession();
		session.setAttribute("idd", idd);
		int id = Integer.valueOf(idd);
		List<Member_bankcards> list = member_BankcardsService.listMember_bankcards(id);
		return list;
	}
	
}
