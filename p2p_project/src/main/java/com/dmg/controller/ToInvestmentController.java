package com.dmg.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Member;
import com.dmg.bean.Member_account;
import com.dmg.bean.Member_tally;
import com.dmg.bean.Member_trade_record;
import com.dmg.bean.Subject;
import com.dmg.bean.Subject_order_record;
import com.dmg.bean.Subject_purchase_record;
import com.dmg.bean.Users;
import com.dmg.service.ToInvestmentService;
import com.dmg.service.UserService;

@Controller
@RequestMapping("/toInvestment")
public class ToInvestmentController {

	@Autowired
	private ToInvestmentService toInvestmentService;
	
	//支付完成
	@RequestMapping("/Pay_is_completed")
	public String Pay_is_completed(HttpServletRequest request) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println("支付完成");
		HttpSession session=request.getSession();
		String subno=(String) session.getAttribute("subno");
		String money1=(String) session.getAttribute("submoney");
		double submoney=Double.valueOf(money1);
		String sub1=(String) session.getAttribute("sub1");
		double sum1=Double.valueOf(sub1);
		String num1=(String) session.getAttribute("num");
		int num=Integer.valueOf(num1);
		//
		String sid1=(String) session.getAttribute("sid");
		int sid=Integer.valueOf(sid1);
		String mid1=(String) session.getAttribute("mid");
		int mid=Integer.valueOf(mid1);
		Subject subject=toInvestmentService.getSubjectById(sid);
		Member member=toInvestmentService.getMemberByid(mid);
		//修改订单表的状态
		Subject_order_record sor=toInvestmentService.getSorBySno(subno);
		sor.setStatus(1);
		toInvestmentService.updateSub(sor);
		//修改交易记录表的状态
		Member_trade_record mtr=toInvestmentService.getMemberTradeRecordBySno(subno);
		mtr.setTrade_status(1);
		toInvestmentService.updateMember(mtr);
		//向标的购买表)添加记录
		Subject_purchase_record spr=new Subject_purchase_record();
		spr.setSerial_number(subno);
		spr.setAmount(submoney);
		spr.setSubject(subject);
		spr.setMember(member);
		spr.setDelflag(0);
		spr.setCreate_date(sdf.format(new Date()));
		spr.setInterest(sum1);
		spr.setIspayment(0);
		spr.setPay_interest_times(num);
		spr.setLast_profit_day(0);
		toInvestmentService.addsubject_purchase_record(spr);
		
		//修改member_account表中的余额
		Member_account ma=new Member_account();
		ma.setUseable_balance(ma.getUseable_balance()-submoney);
		toInvestmentService.updateMember_account(ma);
		return "frontJsp/myaddlibrayy";
	}
	
	//生成订单表
	@RequestMapping("/goToPay")
	public String goToPay(HttpServletRequest request) {
		HttpSession session=request.getSession();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String subno=request.getParameter("WIDout_trade_no");
		String subname=request.getParameter("WIDsubject");
		String money1=request.getParameter("WIDtotal_amount");
		double submoney=Double.valueOf(money1);
		int sid=Integer.parseInt(request.getParameter("id"));
		//计算利息
		String period1=request.getParameter("period");
		String year_rate1=request.getParameter("year_rate");
		int period=Integer.valueOf(period1);
		double year_rate=Double.valueOf(year_rate1);
		double sub1=submoney*year_rate/365*period;
		
		//向标的订单表添加记录
		Users user=(Users)session.getAttribute("user");
		Subject subject=toInvestmentService.getSubjectById(sid);
		Member member=toInvestmentService.getMemberByUid(user.getId());
		Subject_order_record sor=new Subject_order_record();
		sor.setSerial_number(subno);
		sor.setDeal_type(0);
		sor.setAmount(submoney);
		sor.setStatus(0);
		sor.setSubject(subject);
		sor.setMember(member);
		sor.setDelflag(0);
		sor.setCreate_date(sdf.format(new Date()));
		
		//向(交易记录表)添加记录
		Member_trade_record mtr=new Member_trade_record();
		mtr.setMember(member);
		mtr.setTrade_no(subno);
		mtr.setTrade_name(subname);
		mtr.setCounterpart("第三方交易平台");
		mtr.setAmount(submoney);
		mtr.setTrade_status(0);
		mtr.setFund_flow(0);
		mtr.setCreate_date(sdf.format(new Date()));
		
		//购买次数
		int num=toInvestmentService.buySubCount(member.getId());
		
		session.setAttribute("subno", subno);
		session.setAttribute("submoney", submoney);
		session.setAttribute("sid", sid);
		session.setAttribute("mid", member.getId());
		session.setAttribute("sub1", sub1);
		session.setAttribute("num",num);
	    System.out.println("subno="+subno+" ,submoney="+submoney+" ,sid="+sid+" ,mid="+member.getId()+" ,sub1="+sub1+" ,num="+num);
		toInvestmentService.saveSubject_order_record(sor);
		toInvestmentService.saveMemberTradeRecord(mtr);
		return "alipay/alipay.trade.page.pay2";
	}

	// 支付前
	@RequestMapping("/toPay")
	public String toPay(Model model,@RequestParam(required = false) int subject_id, 
			@RequestParam(required = false)int buysub) {
		Subject subject=toInvestmentService.getSubjectById(subject_id);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String serial_num=sdf.format(new Date());  //订单号
		model.addAttribute("serial_num", serial_num);
		model.addAttribute("buysub", buysub);
		model.addAttribute("subject", subject);
		return "/frontJsp/topay";
	}

	// 购买
	@RequestMapping("/buySubject/{id}")
	public String buySubject(Model model, @RequestParam(required = false) int uid, @PathVariable("id") int id) {
		Subject subject = toInvestmentService.getSubjectById(id);
		int count = toInvestmentService.countByPeople(id);
		double sum = toInvestmentService.countMoney(id);
		double money = toInvestmentService.getMoney(uid);
		model.addAttribute("sb", subject);
		model.addAttribute("count", count);
		model.addAttribute("sum", sum);
		model.addAttribute("money", money);
		return "frontJsp/buySubject";
	}

	// 显示
	@RequestMapping("/showSubject")
	public String showAll(Model model) {
		List<Subject> list = toInvestmentService.showSubject();
		model.addAttribute("list", list);
		return "frontJsp/product_center";
	}
}
