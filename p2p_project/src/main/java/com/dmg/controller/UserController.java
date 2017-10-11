package com.dmg.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Member;
import com.dmg.bean.Member_account;
import com.dmg.bean.News;

import com.dmg.bean.Subject;
import com.dmg.bean.User_role;
import com.dmg.bean.Push_notice;

import com.dmg.bean.Users;
import com.dmg.service.Newsservice;
import com.dmg.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private Newsservice Newsservice;

	// 锟斤拷锟斤拷锟�
	@RequestMapping("/feedBacks/{id}")
	public String feedbacks(Model model, @PathVariable("id") int id) {
		Users user = userService.getUsersById(id);
		model.addAttribute("user", user);
		return "backJsp/feedbacks";
	}

	// 注锟斤拷
	@RequestMapping("/outlogin")
	public String outlogin(HttpSession session) {
		session.invalidate();
		return "redirect:/user/index";
	}

	// 锟截碉拷前台锟斤拷页
	@RequestMapping("/toindex/{id}")
	public String toindex(Model model, @PathVariable("id") int id) {
		Users user = userService.getUsersById(id);
		this.index(model);
		model.addAttribute("user", user);
		return "index";
	}

	// 前台锟斤拷页
	@RequestMapping("/index")
	public String index(Model model) {
		List<Subject> sub = userService.showSubject();
//		SimpleDateFormat sdf = new SimpleDateFormat("MM");
//		String mon = sdf.format(new Date());
		model.addAttribute("sub", sub);
		//model.addAttribute("mon", mon);
		List<Push_notice> push_notices = userService.listpush();
		model.addAttribute("push_notices", push_notices);
		List<News> list = Newsservice.list();
		model.addAttribute("list", list);
		return "frontJsp/index";
	}

	// 锟斤拷台锟斤拷页
	@RequestMapping("/indexback/{id}")
	public String indexback(Model model, @PathVariable("id") int id, HttpServletRequest request) {
		Users user = userService.getUsersById(id);
		model.addAttribute("user", user);
		// wo de jia fa ku myaddlibrayy.jsp
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		return "backJsp/indexback";
	}

	// 锟矫伙拷注锟斤拷
	@RequestMapping("/register")
	public String saveUser(Users users, @RequestParam(required = false) String user_name,
			@RequestParam(required = false)String mobile_phone, @RequestParam(required = false) String password) {
		users.setStatus(0);
		users.setIdentity(3);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMddhhmmss");
		String date = sdf.format(new Date());
		String str=sdf1.format(new Date());
		users.setCreate_date(date);
		User_role ur = userService.getRoleByid(3);
		users.setUser_role(ur);
		// 用户基本表
		Member member = new Member();
		member.setName(user_name);
		member.setPassword(password);
		member.setMobile_phone(mobile_phone);
		member.setStatus(0);
		member.setCreate_date(date);
		member.setInvitationcode(str);
		member.setUser(users);
		//成员账户表
		Member_account ma=new Member_account();
		ma.setUseable_balance(0.0);
		ma.setImuseale_balance(0.0);
		ma.setTotl_profit(0.0);
		ma.setCreate_date(date);
		ma.setBonus_amount(0.0);
		ma.setInvest_amount(0.0);
		ma.setDelflag(0);
		ma.setBbin_amount(1000);
		ma.setMember(member);
		
		userService.saveUsers(users);
		userService.saveMember(member);
		userService.saveMemberAccount(ma);
		return "frontJsp/login";
	}

	// 锟斤拷陆
	@RequestMapping("login")
	public String login(HttpSession session, @RequestParam(required = false) String mobile_phone,
			@RequestParam(required = false) String password, Model model) {
		String flag = "";
		if (mobile_phone != null && password != null) {
			Users user = userService.getUsers(mobile_phone, password);
			if (user == null) {
				model.addAttribute("msg", "锟剿号伙拷锟斤拷锟诫不锟斤拷确");
				flag = "frontJsp/login";
			} else {
				List<Subject> sub = userService.showSubject();
				model.addAttribute("sub", sub);
				flag = "redirect:/user/index";
				session.setAttribute("user", user);
				flag = this.index(model);
			}
		}
		return flag;
	}

}
