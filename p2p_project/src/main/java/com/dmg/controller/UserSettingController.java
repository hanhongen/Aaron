package com.dmg.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.User_role;
import com.dmg.bean.Users;
import com.dmg.service.UserSetttingService;

@Controller
@RequestMapping("/usersetting")
public class UserSettingController {

	@Autowired
	private UserSetttingService userSetttingService;
	
	@RequestMapping("/addUser")
	public String addUser(Users user) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		user.setCreate_date(sdf.format(new Date()));
		user.setStatus(1);
		userSetttingService.addUser(user);
		return "redirect:/usersetting/showuser";
	}
	
	//toadd
	@RequestMapping("/toadd")
	public String toadd(Model model) {
		List<User_role> list=userSetttingService.listRole();
		model.addAttribute("list", list);
		return "backJsp/adduser";
	}
	
	//修改
	@RequestMapping("/update")
	public String update(Users user) {
		userSetttingService.update(user);
		return "redirect:/usersetting/showuser";
	}
	
	//修改前查询
	@RequestMapping("/bfupdate/{id}")
	public String bfupdate(@PathVariable("id")int id,Model model) {
		Users user=userSetttingService.getUserById(id);
		List<User_role> list=userSetttingService.listRole();
		model.addAttribute("list", list);
		model.addAttribute("user", user);
		return "backJsp/update";
	}
	
	//删除
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id")int id) {
		userSetttingService.delete(id);
		return "redirect:/usersetting/showuser";
	}
	
	//显示
	@RequestMapping("/showuser")
	public String showUsers(Model model,@RequestParam(required=false)String qname,@RequestParam(required=false)String qtime){		
		System.out.println("qname="+qname+"  ,qtime="+qtime);
		Map<String, String> map=new HashMap<>();
		map.put("qname", qname);
		map.put("qtime", qtime);		
		List<Users> list=userSetttingService.showUsers(map);
		model.addAttribute("list", list);
		model.addAttribute("qname", qname);
		model.addAttribute("qtime", qtime);
		return "backJsp/usersetting";
	}
}
