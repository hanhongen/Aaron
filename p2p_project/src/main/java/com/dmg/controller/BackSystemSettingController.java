package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Backtitle;
import com.dmg.service.BackSystemSettingService;

@Controller
@RequestMapping("/back")
public class BackSystemSettingController {

	@Autowired
	private BackSystemSettingService backSystemSettingService;
	
	//œ‘ æ
	@RequestMapping("showTitle")
	public String showTitle(Model model) {
		List<Backtitle> list=backSystemSettingService.showTitle();
		model.addAttribute("list", list);
		return "backJsp/indexback";
	}
}
