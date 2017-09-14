package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Subject;
import com.dmg.service.SubjectService;
//¸¶Ï¢¼Æ»®
@Controller
@RequestMapping("/subject")
public class SubjectController {
	@Autowired
	private SubjectService subjectService;
	
	@RequestMapping("/listSubject")
	public String listSubject(Model model){
		List<Subject> listSubject = subjectService.listSubject();
		model.addAttribute("listSubject", listSubject);
		return "backJsp/subject";
	}
	
}
