package com.dmg.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dmg.bean.News_type;
import com.dmg.service.News_typeservice;
@Controller
@RequestMapping("/news_type")
public class News_typecontroller {

		@Autowired 
		private News_typeservice news_typeservice;
		
		@RequestMapping("/news_typelist")
		public String news_typelist(Model model){
		List<News_type>list=news_typeservice.listtype();
		model.addAttribute("list",list);
		return "backJsp/inbox";
		}
	}



