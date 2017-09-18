package com.dmg.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Subject_bbin_purchase_record;
import com.dmg.service.Subject_bbin_purchase_recordService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/subject_bbin_purchase_record")
public class Subject_bbin_purchase_recordController {
	@Autowired
	private Subject_bbin_purchase_recordService subject_bbin_purchase_recordService;
	//查询体验金表信息
	@RequestMapping("/listSubject_bbin_purchase_record/{id}")
	public String listSubject_bbin_purchase_record(Model model,@PathVariable("id")int id){
		List<Subject_bbin_purchase_record> listSBPR = subject_bbin_purchase_recordService.listSubject_bbin_purchase_record(id);
		model.addAttribute("listSBPR", listSBPR);
		return "backJsp/bbin";
	}
}
