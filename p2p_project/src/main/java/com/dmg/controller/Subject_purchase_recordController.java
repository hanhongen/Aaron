package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Subject_purchase_record;
import com.dmg.service.Subject_purchase_recordService;

@Controller
@RequestMapping("/subject_purchase_record")
public class Subject_purchase_recordController {
	@Autowired
	private Subject_purchase_recordService subject_purchase_recordService;
	@RequestMapping("/listSubject_purchase_record/{id}")
	public String listSubject_purchase_record(Model model,@PathVariable("id")int id){
		List<Subject_purchase_record> listSPR = subject_purchase_recordService.listSubject_purchase_record(id);
		model.addAttribute("listSPR", listSPR);
		return "backJsp/binterest";
	}
}
