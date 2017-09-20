package com.dmg.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Backtitle;
import com.dmg.bean.User_role;
import com.dmg.service.BackSystemSettingService;

@Controller
@RequestMapping("/back")
public class BackSystemSettingController {

	@Autowired
	private BackSystemSettingService backSystemSettingService;
	
	//显示
	@RequestMapping("showTitle")
	public String showTitle(Model model) {
		//List<Backtitle> list=backSystemSettingService.showTitle();
		//model.addAttribute("list", list);
		return "backJsp/indexback";
	}
	
	//显示角色
	@RequestMapping("/showRole")
	public String showRole(Model model) {
		List<User_role> list=backSystemSettingService.listRole();
		model.addAttribute("list", list);
		return "backJsp/rolesetting";
	}
	
	//添加角色
	@RequestMapping("/addRole")
	public String addRole(User_role role) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		role.setAvailable(1);
		role.setCreate_date(sdf.format(new Date()));
		role.setCategory("sys");
		role.setSource_type(0);
		role.setSource_id(0);
		role.setDel_flag(1);
		backSystemSettingService.addRole(role);
		return "redirect:/back/showRole";
	}
}
