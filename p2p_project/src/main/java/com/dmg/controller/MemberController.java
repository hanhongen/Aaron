package com.dmg.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
//�˺���Ϣ
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dmg.bean.Member;
import com.dmg.bean.Users;
import com.dmg.service.MemberService;
import com.dmg.service.UserService;
@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private UserService userService;
	//��ѯ�����˺���Ϣ
	@RequestMapping("/listMember")
	public String listMember(Model model,
			@RequestParam(required=false)String namem,
			@RequestParam(required=false)String mobilePhonem,
			@RequestParam(required=false)String memberNamem,
			@RequestParam(required=false)String invitationcodem,
			@RequestParam(required=false)String create_datem){
		
			Map map = new HashMap<>();
			map.put("namem", namem);
			map.put("mobilePhonem", mobilePhonem);
			map.put("memberNamem", memberNamem);
			map.put("invitationcodem", invitationcodem);
			map.put("create_datem", create_datem);
			
			List<Member> listMember = memberService.listMember(map);
			model.addAttribute("listMember", listMember);
			
			model.addAttribute("namem", namem);
			model.addAttribute("mobilePhonem", mobilePhonem);
			model.addAttribute("memberNamem", memberNamem);
			model.addAttribute("invitationcodem", invitationcodem);
			
			return "backJsp/forms";
	}
	//���id��ѯ�����˺���Ϣ
	@RequestMapping("/listMemberId/{id}")
	public String listMemberId(Model model,@PathVariable("id")int id){
		System.out.println("id:"+id);
		List<Member> listMemberId = memberService.listMemberId(id);
		System.out.println("toString:"+listMemberId.size());
		model.addAttribute("listMemberId", listMemberId);
		return "backJsp/accountInfo";
	}
	//用户认证
	@RequestMapping(value="saveMember",method={RequestMethod.POST})
	@ResponseBody
	public String saveMember(HttpServletRequest request){
		String name=request.getParameter("mname");
		String it=request.getParameter("it");
		int i=Integer.valueOf(request.getParameter("id"));
		Users users=userService.getUsersById(i);
		Member member = new Member();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String time = sdf.format(new Date().getTime());
		member.setCreate_date(time);
		member.setDel_flag(0);
		member.setHeadid(0);//头像
		member.setIdentity(it);
		member.setName(name);
		member.setStatus(0);
		member.setUser(users);
		String str;
		if (memberService.saveMember(member)==true) {
			str="1";//认证成功
		}else {
			str="0";
		}		
		return str;
	}
	//检查是否认证
	@RequestMapping(value="checkRZ",method={RequestMethod.POST})
	@ResponseBody
	public String checkRZ(HttpServletRequest request,Model model){
		int id=Integer.valueOf(request.getParameter("id"));
		List<Member> list=memberService.checkRZ(id);
		String str;
		if (!list.isEmpty()) {
			str="1";
		} else {
			str="0";
		}
		return str;
	}
	//检查手机号是否绑定
	@RequestMapping(value="checkPhone",method=RequestMethod.POST)
	@ResponseBody
	public String checkPhone(HttpServletRequest request){
		System.out.println("checkPhone-start");
		String i = request.getParameter("id");
		int id = Integer.valueOf(i);
		System.out.println("checkPhoneID:"+id);
		String check = memberService.checkPhone(id);
		System.out.println("checkPhone-stop");
		return check;
	}
	
	//绑定手机号
	@RequestMapping(value="bdPhone",method=RequestMethod.POST)
	@ResponseBody
	public String bdPhone(HttpServletRequest request){
		System.out.println("bdPhone-start");
		String i = request.getParameter("id");
		String phone = request.getParameter("phone");
		int id = Integer.valueOf(i);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String time = sdf.format(new Date().getTime());

		
		boolean flag=memberService.bdPhone(id, phone,time);
		String str="";
		if (flag == true) {
			str="1";
		} else {
			str="0";
		}
		System.out.println("bdPhone-stop");
		return str;
	}

	//修改密码
	@RequestMapping(value="updatePwd",method=RequestMethod.POST)
	@ResponseBody
	public String updatePwd(HttpServletRequest request){
		String i=request.getParameter("id");
		int id=Integer.valueOf(i);
		String pwd=request.getParameter("pwd");
		String str="";
		boolean flag=memberService.updatePwd(id, pwd);
		if (flag == true) {
			str="1";
		} else {
			str="0";
		}
		return str;
	}
	
	//检查提款密码是否设置
	@RequestMapping(value="checkTkpwd",method=RequestMethod.POST)
	@ResponseBody
	public String checkTkpwd(HttpServletRequest request){
		System.out.println("checkTkpwd-start");
		String i = request.getParameter("id");
		int id = Integer.valueOf(i);
		System.out.println("checkTkpwdID:"+id);
		String check = memberService.checkTkpwd(id);
		System.out.println("checkTkpwd-stop");
		return check;
	}
	
	//修改提款密码
	@RequestMapping(value="updateTkPwd",method=RequestMethod.POST)
	@ResponseBody
	public String updateTkPwd(HttpServletRequest request){
		String i=request.getParameter("id");
		int id=Integer.valueOf(i);
		String pwd=request.getParameter("pwd");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String time = sdf.format(new Date().getTime());

		String str="";
		boolean flag=memberService.updateTkPwd(id, pwd, time);
		if (flag == true) {
			str="1";
		} else {
			str="0";
		}
		return str;
	}
	
}
