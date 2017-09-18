package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.News;
import com.dmg.bean.News_type;
import com.dmg.service.News_typeservice;
import com.dmg.service.Newsservice;

@Controller
@RequestMapping("/news")
public class Newscontroller {	
	
	@Autowired
	private Newsservice newsservice;
	@Autowired
	private News_typeservice news_typeservice;
@RequestMapping("/listnews")
public String listnews(Model model){
	List<News>list=newsservice.listnews();
	model.addAttribute("list",list);
	List<News_type>list2=news_typeservice.listtype();
	model.addAttribute("list2",list2);
	return"backJsp/compose";
}

}
