package com.dmg.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dmg.bean.Subject;
import com.dmg.service.ProductCenterService;

@Controller
@RequestMapping("/product")
public class ProductCenterController {

	@Autowired
	private ProductCenterService productCenterService;
	
	//修改之前
	@RequestMapping("/bfupdateSolid/{id}")
	public String bfupdate(Model model,@PathVariable("id")int id) {
		Subject subject=productCenterService.getSubjectById(id);
		model.addAttribute("subject", subject);
		return "backJsp/updateSolid";
	}
	
	@RequestMapping("/updateSolid")
	public String updateSolid(Subject subject) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		subject.setUpdate_date(sdf.format(new Date()));
		productCenterService.updateSubject(subject);
		return "redirect:/product/showSolid";
	}

	// 添加固收类
	@RequestMapping("/saveSolid")
	public String save(Subject subject) 
			throws Exception {
//		String filename=file.getOriginalFilename();
//		String path=request.getRealPath("/upload/");
//		File newfile=new File(path, filename);
//		if(!newfile.exists()) {
//			newfile.createNewFile();
//		}
//		file.transferTo(newfile);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		subject.setCreate_date(sdf.format(new Date()));
		subject.setUpdate_date(sdf.format(new Date()));
		productCenterService.saveSubject(subject);
		return "redirect:/product/showSolid";
	}

	// 固收类 显示
	@RequestMapping("/showSolid")
	public String showSubject(Model model, @RequestParam(required = false) String qname,
			@RequestParam(required = false) String s1, @RequestParam(required = false) String s2) {
		Map<String, String> map = new HashMap<>();
		map.put("qname", qname);
		map.put("s1", s1);
		map.put("s2", s2);
		List<Subject> list = productCenterService.showSubject(map);
		// List<Subject_order_record>
		// subjectRecord=productCenterService.showSubjectRecord();
		model.addAttribute("list", list);
		// model.addAttribute("subjectRecord", subjectRecord);
		model.addAttribute("qname", qname);
		model.addAttribute("s1", s1);
		model.addAttribute("s2", s2);
		return "/backJsp/solidCharge";
	}
}
