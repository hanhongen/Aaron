package com.dmg.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Subject;
import com.dmg.bean.Subject_order_record;
import com.dmg.service.ProductCenterService;

@Controller
@RequestMapping("/product")
public class ProductCenterController {

	@Autowired
	private ProductCenterService productCenterService;
	
	//πÃ ’¿‡ œ‘ æ
	@RequestMapping("/showSubject")
	public String showSubject(Model model,
			@RequestParam(required=false)String qname,
			@RequestParam(required=false)String s1,
			@RequestParam(required=false)String s2) {
		Map<String, String> map=new HashMap<>();
		map.put("qname", qname);
		map.put("s1", s1);
		map.put("s2", s2);
		List<Subject> list=productCenterService.showSubject(map);
		//List<Subject_order_record> subjectRecord=productCenterService.showSubjectRecord();
		model.addAttribute("list", list);
		//model.addAttribute("subjectRecord", subjectRecord);
		model.addAttribute("qname", qname);
		model.addAttribute("s1", s1);
		model.addAttribute("s2", s2);
		return "backJsp/solidCharge";
	}
}
