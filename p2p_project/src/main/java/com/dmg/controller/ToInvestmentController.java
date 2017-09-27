package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Subject;
import com.dmg.service.ToInvestmentService;

@Controller
@RequestMapping("/toInvestment")
public class ToInvestmentController {

	@Autowired
	private ToInvestmentService toInvestmentService;
	
	//π∫¬Ú
	@RequestMapping("/buySubject/{id}")
	public String buySubject(Model model,@PathVariable("id")int id) {
		Subject subject=toInvestmentService.getSubjectById(id);
		model.addAttribute("sb", subject);
		return "frontJsp/buySubject";
	}
	
	//œ‘ æ
	@RequestMapping("/showSubject")
	public String showAll(Model model) {
		List<Subject> list=toInvestmentService.showSubject();
		model.addAttribute("list", list);
		return "frontJsp/product_center";
	}
}
