package com.dmg.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.crypto.Data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Member;
import com.dmg.bean.Member_account;
import com.dmg.bean.Member_deposit_record;
import com.dmg.bean.Member_trade_record;
import com.dmg.bean.Member_withdraw_record;
import com.dmg.bean.Subject_purchase_record;
import com.dmg.service.MemberService;
import com.dmg.service.Member_accountService;
import com.dmg.service.Member_deposit_recordSevice;
import com.dmg.service.Member_trade_recordService;
import com.dmg.service.Member_withdraw_recordService;
import com.dmg.service.Subject_purchase_recordService;

@Controller
@RequestMapping("/member_withdraw_record")
public class Member_withdraw_recordController {
	@Autowired
	private Member_withdraw_recordService member_withdraw_recordService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private Member_accountService member_accountService;
	@Autowired
	private Subject_purchase_recordService subject_purchase_recordService;
	@Autowired
	private Member_deposit_recordSevice member_deposit_recordSevice;
	@Autowired
	private Member_trade_recordService member_trade_recordService;

	
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
	
	
	//����id��ѯ�����˺���Ϣ
		@RequestMapping("/recordPanel/{id}/{id}")
		public String recordPanel(Model model,@PathVariable("id")int id,@PathVariable("id")int mid){
			System.out.println("id="+id);
			System.out.println("mid="+mid);
			List<Member> listMemberId = memberService.listMemberId(id);//�˺���Ϣ
			List<Member_account> lista = member_accountService.listMember_account(id);//��Ա�˻�
			List<Subject_purchase_record> listSPR = subject_purchase_recordService.listSubject_purchase_record(id);//��Ĺ����
			Date date = new Date();
			double dayCount = 0;//����
			double earnings = 0;//Ͷ������
			String result = "";//��ʽ��С��λ���Ͷ��������
			for (Subject_purchase_record s : listSPR) {
				String start_date = s.getSubject().getStart_date();//�õ���ʼʱ��
				String end_date = s.getSubject().getEnd_date();//�õ�����ʱ��
				System.out.println("��Ŀ�ʼ���ڣ�"+start_date);
				System.out.println("��Ľ������ڣ�"+end_date);
				double time1=(double)date.parse(start_date);//���������ַ���
				double time2=(double)date.parse(end_date);
				
				dayCount = (Math.abs(time2 - time1))/1000/60/60/24;//�õ�����
				double amount= s.getAmount();//��Ĺ�����
				double year_rate= s.getSubject().getYear_rate();//����껯��lm.amount*lm.subject.year_rate/365*dayCount
				earnings = amount*year_rate/365*dayCount;
				result = String.format("%.2f", earnings);
//				System.out.println(s.getSubject().getName()+"�Ŀ�ʼ�����������Ϊ��"+dayCount+"��");
			}
			System.out.println("dayCount��"+dayCount+"��");
			System.out.println("Ͷ�����棺"+result);
			
			
			List<Member_withdraw_record> listmwr = member_withdraw_recordService.listMember_withdraw_record(id);//���ּ�¼��
			List<Member_deposit_record> listmdr = member_deposit_recordSevice.listMember_deposit_record(mid);//��ֵ��¼��
			List<Member_trade_record>  listmtr = member_trade_recordService.listMember_trade_record(mid);//���׼�¼��
			
			model.addAttribute("listMemberId", listMemberId);
			model.addAttribute("lista", lista);
			model.addAttribute("listSPR", listSPR);model.addAttribute("dayCount", dayCount);model.addAttribute("result", result);
			model.addAttribute("listmwr", listmwr);
			model.addAttribute("listmdr", listmdr);
			model.addAttribute("listmtr", listmtr);
			
			return "backJsp/recordPanel";
		}
	
}
