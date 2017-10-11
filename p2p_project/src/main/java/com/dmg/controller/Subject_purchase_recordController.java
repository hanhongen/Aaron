package com.dmg.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Member_account;
import com.dmg.bean.Subject_order_record;
import com.dmg.bean.Subject_purchase_record;
import com.dmg.bean.Users;
import com.dmg.service.MemberService;
import com.dmg.service.Member_accountService;
import com.dmg.service.Subject_order_recordService;
import com.dmg.service.Subject_purchase_recordService;

@Controller
@RequestMapping("/subject_purchase_record")
public class Subject_purchase_recordController {
	@Autowired
	private Subject_purchase_recordService subject_purchase_recordService;
	@Autowired
	private Subject_order_recordService subject_order_recordService;
	@Autowired
	private Member_accountService member_accountService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/listSubject_purchase_record/{id}")
	public String listSubject_purchase_record(Model model,@PathVariable("id")int id){
		List<Subject_purchase_record> listSPR = subject_purchase_recordService.listSubject_purchase_record(id);
		model.addAttribute("listSPR", listSPR);
		return "backJsp/binterest";
	}
	
	@RequestMapping("/listSubject_purchase_records/{id}/{user_name}")
	public String listSubject_purchase_records(Model model,@PathVariable("id")int id,@PathVariable("user_name")String user_name,HttpServletRequest request){
		System.out.println("listSubject_purchase_records---------------------------------");
		//杩欓噷寰梚d涓簎ser琛ㄧ殑id
		System.out.println("listSubject_purchase_records--"+id);		
		System.out.println("listSubject_purchase_records--"+user_name);
		//鎶曡祫璁板綍
		List<Subject_purchase_record> listSPR = subject_purchase_recordService.listSubject_purchase_record(id);
		//鏌ヨ涓汉鎶曡祫璁板綍鐨勬鏁�
		int count = subject_purchase_recordService.countSubject_purchase_record(id);
		//鏍囩殑璁㈠崟琛�
		List<Subject_order_record> listsor = subject_order_recordService.listSubject_order_record(id);
		//鏍囩殑璁㈠崟琛ㄨ褰曟暟
		int count2 = subject_order_recordService.countSubject_order_record(id);
		
		model.addAttribute("listSPR", listSPR);
		model.addAttribute("count", count);
		
		model.addAttribute("listsor", listsor);
		model.addAttribute("count2", count2);
		/**
		 * 鎶曡祫璁板綍
		 */
		Date date = new Date();
		double dayCount = 0;//澶╂暟
		double earnings = 0;//鏀剁泭
		String result = "";//鏍煎紡鍖栧悗鐨勬敹鐩婃暟瀛�
		for (Subject_purchase_record s : listSPR) {
//			String start_date = s.getSubject().getStart_date();//寮�濮嬫椂闂�
//			String end_date = s.getSubject().getEnd_date();//缁撴潫鏃堕棿
//			System.out.println("鎶曡祫璁板綍鏍囩殑寮�濮嬫椂闂达細"+start_date);
//			System.out.println("鎶曡祫璁板綍鏍囩殑缁撴潫鏃堕棿锛�"+end_date);
//			double time1=(double)date.parse(start_date);//寮�濮嬫椂闂�
//			double time2=(double)date.parse(end_date);
			//int period=s.getSubject().getPeriod();
			
			dayCount =s.getSubject().getPeriod(); //寰楀埌涓や釜鏃ユ湡涔嬮棿鐩搁殧鐨勫ぉ鏁�
			double amount= s.getAmount();//閲戦
			System.out.println("鎶曡祫璁板綍閲戦锛�"+amount);
			double year_rate= s.getSubject().getYear_rate();//骞村寲鐜�
			System.out.println("鎶曡祫璁板綍骞村寲鐜囷細"+s.getSubject().getYear_rate());
			earnings = amount*(year_rate/100)/365*dayCount;//lm.amount*lm.subject.year_rate/365*dayCount
			result = String.format("%.2f", earnings);//灏唀arnings淇濈暀涓や綅灏忔暟
			s.setResult(result);
			System.out.println("鎶曡祫璁板綍-"+s.getSubject().getName()+"澶╂暟涓猴細"+dayCount+"澶�");
			System.out.println("dayCount:"+dayCount+"澶�");
			System.out.println("鎶曡祫璁板綍鏀剁泭:"+result);
			
		}
		/**
		 * 棰勭害璁板綍
		 */
		Date date2 = new Date();
		double dayCount2 = 0;//澶╂暟
		double earnings2 = 0;//鏀剁泭
		String result2 = "";//鏍煎紡鍖栧悗鐨勬敹鐩婃暟瀛�
		for (Subject_order_record s : listsor) {
//			String start_date = s.getSubject().getStart_date();//寮�濮嬫椂闂�
//			String end_date = s.getSubject().getEnd_date();//缁撴潫鏃堕棿
//			System.out.println("棰勭害璁板綍鏍囩殑寮�濮嬫椂闂达細"+start_date);
//			System.out.println("棰勭害璁板綍鏍囩殑缁撴潫鏃堕棿锛�"+end_date);
//			double time1=(double)date.parse(start_date);//寮�濮嬫椂闂�
//			double time2=(double)date.parse(end_date);
			
			dayCount =s.getSubject().getPeriod(); //寰楀埌涓や釜鏃ユ湡涔嬮棿鐩搁殧鐨勫ぉ鏁�
			double amount= s.getAmount();//閲戦
			System.out.println("棰勭害璁板綍閲戦锛�"+amount);
			double year_rate= s.getSubject().getYear_rate();//骞村寲鐜�
			System.out.println("棰勭害璁板綍骞村寲鐜囷細"+s.getSubject().getYear_rate());
			earnings = amount*(year_rate/100)/365*dayCount;//lm.amount*lm.subject.year_rate/365*dayCount
			result = String.format("%.2f", earnings);//灏唀arnings淇濈暀涓や綅灏忔暟
			s.setResult(result);
			System.out.println("棰勭害璁板綍-"+s.getSubject().getName()+"澶╂暟涓猴細"+dayCount+"澶�");
			System.out.println("dayCount:"+dayCount+"澶�");
			System.out.println("棰勭害璁板綍鏀剁泭:"+result);
			
		}
		
		model.addAttribute("id", id);
		model.addAttribute("user_name", user_name);
		
		/**
		 * 璐︽埛鍙敤浣欓
		 * 鎶曡祫閲戦(鍏�)
		 * 绱鏀剁泭(鍏�)
		 * 鍐荤粨閲戦(鍏�)
		 * 鎵�鏌ヨ〃锛歮ember_account(鎴愬憳璐︽埛琛�)
		 */
		List<Member_account> ma=member_accountService.listMember_account(id);
		model.addAttribute("ma", ma);
		
//		HttpSession session = request.getSession();
//		session.setAttribute("SPRid", id);
//		session.setAttribute("user_name", user_name);
		return "frontJsp/myaddlibrayy";
	}

}
