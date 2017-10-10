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
	public String listSubject_purchase_records(Model model,@PathVariable("id")int uid,@PathVariable("user_name")String user_name,HttpServletRequest request){
		System.out.println("listSubject_purchase_records---------------------------------");
		//这里得id为user表的id
		System.out.println("listSubject_purchase_records--"+uid);		
		System.out.println("listSubject_purchase_records--"+user_name);
		//该方法解决一些历史遗留的问题，使用user表的id，在member中查询出member表的id，以此解决问题
		int mid=memberService.correct(uid);
		
		System.out.println("通过user的id："+uid+"查询出member表的id为:"+mid);
		
		//投资记录
		List<Subject_purchase_record> listSPR = subject_purchase_recordService.listSubject_purchase_record(mid);
		//查询个人投资记录的次数
		int count = subject_purchase_recordService.countSubject_purchase_record(mid);
		//标的订单表
		List<Subject_order_record> listsor = subject_order_recordService.listSubject_order_record(mid);
		//标的订单表记录数
		int count2 = subject_order_recordService.countSubject_order_record(mid);
		
		model.addAttribute("listSPR", listSPR);
		model.addAttribute("count", count);
		
		model.addAttribute("listsor", listsor);
		model.addAttribute("count2", count2);
		/**
		 * 投资记录
		 */
		Date date = new Date();
		double dayCount = 0;//天数
		double earnings = 0;//收益
		String result = "";//格式化后的收益数字
		for (Subject_purchase_record s : listSPR) {
			String start_date = s.getSubject().getStart_date();//开始时间
			String end_date = s.getSubject().getEnd_date();//结束时间
			System.out.println("投资记录标的开始时间："+start_date);
			System.out.println("投资记录标的结束时间："+end_date);
			double time1=(double)date.parse(start_date);//开始时间
			double time2=(double)date.parse(end_date);
			
			dayCount = (Math.abs(time2 - time1))/1000/60/60/24;//得到两个日期之间相隔的天数
			double amount= s.getAmount();//金额
			System.out.println("投资记录金额："+amount);
			double year_rate= s.getSubject().getYear_rate();//年化率
			System.out.println("投资记录年化率："+s.getSubject().getYear_rate());
			earnings = amount*(year_rate/100)/365*dayCount;//lm.amount*lm.subject.year_rate/365*dayCount
			result = String.format("%.2f", earnings);//将earnings保留两位小数
			s.setResult(result);
			System.out.println("投资记录-"+s.getSubject().getName()+"天数为："+dayCount+"天");
			System.out.println("dayCount:"+dayCount+"天");
			System.out.println("投资记录收益:"+result);
			
		}
		/**
		 * 预约记录
		 */
		Date date2 = new Date();
		double dayCount2 = 0;//天数
		double earnings2 = 0;//收益
		String result2 = "";//格式化后的收益数字
		for (Subject_order_record s : listsor) {
			String start_date = s.getSubject().getStart_date();//开始时间
			String end_date = s.getSubject().getEnd_date();//结束时间
			System.out.println("预约记录标的开始时间："+start_date);
			System.out.println("预约记录标的结束时间："+end_date);
			double time1=(double)date.parse(start_date);//开始时间
			double time2=(double)date.parse(end_date);
			
			dayCount = (Math.abs(time2 - time1))/1000/60/60/24;//得到两个日期之间相隔的天数
			double amount= s.getAmount();//金额
			System.out.println("预约记录金额："+amount);
			double year_rate= s.getSubject().getYear_rate();//年化率
			System.out.println("预约记录年化率："+s.getSubject().getYear_rate());
			earnings = amount*(year_rate/100)/365*dayCount;//lm.amount*lm.subject.year_rate/365*dayCount
			result = String.format("%.2f", earnings);//将earnings保留两位小数
			s.setResult(result);
			System.out.println("预约记录-"+s.getSubject().getName()+"天数为："+dayCount+"天");
			System.out.println("dayCount:"+dayCount+"天");
			System.out.println("预约记录收益:"+result);
			
		}
		
		model.addAttribute("id", mid);
		model.addAttribute("user_name", user_name);
		
		/**
		 * 账户可用余额
		 * 投资金额(元)
		 * 累计收益(元)
		 * 冻结金额(元)
		 * 所查表：member_account(成员账户表)
		 */
		List<Member_account> ma=member_accountService.listMember_account(mid);
		model.addAttribute("ma", ma);
		
//		HttpSession session = request.getSession();
//		session.setAttribute("SPRid", id);
//		session.setAttribute("user_name", user_name);
		return "frontJsp/myaddlibrayy";
	}

}
