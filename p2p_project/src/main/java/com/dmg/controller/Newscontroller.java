package com.dmg.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import com.dmg.bean.News;
import com.dmg.bean.News_type;
import com.dmg.bean.Users;
import com.dmg.service.News_typeservice;
import com.dmg.service.Newsservice;

@Controller
@RequestMapping("/news")
public class Newscontroller {	
	
	@Autowired
	private Newsservice newsservice;
	@Autowired
	private News_typeservice news_typeservice;
	//显示
@RequestMapping("/listnews/{id}")
public String listnews(@PathVariable("id")int id,Model model,@RequestParam(required=false)String tlt,@RequestParam(required=false)String s1){
	Map<String,String>map=new HashMap<>();
	map.put("tlt", tlt);
	map.put("s1", s1);
	List<News>list=newsservice.listnews(map);
	List<News_type>li=news_typeservice.listtype();
    Users users=news_typeservice.usersid(id);
    model.addAttribute("users",users);
	model.addAttribute("s1", s1);
	model.addAttribute("tlt",tlt);
	model.addAttribute("li",li);
	model.addAttribute("list",list);
	return"backJsp/compose";
}

@RequestMapping("/savelist/{id}")
public String savelist(@PathVariable("id")int id, Model model){
	List<News_type>list=news_typeservice.listtype();
	model.addAttribute("list",list);
	model.addAttribute("users",id);
	return "backJsp/savenews";
}

@RequestMapping("/savennews")
public String savennews(News news,@RequestParam("file")MultipartFile file,HttpServletRequest request,int tid)throws Exception{
	if(tid!=-1){
		News_type news_type2=news_typeservice.getbyid(tid);
		news.setNews_type(news_type2);
	}
	
	SimpleDateFormat ssf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	news.setAddtime(ssf.format(new Date()));
	
	String filename=file.getOriginalFilename();
	System.out.println("filename="+filename);
	String path=request.getRealPath("/upload/");
	File newfile=new File(path,filename);
	if(!newfile.exists()){
		newfile.createNewFile();
	}
	file.transferTo(newfile);
	news.setCphoto(filename);
	news.setUpdtime(null);
	news.setClicknumber(0);
	newsservice.savenews(news);
	return "redirect:/news/listnews/"+news.getAddld();
}

//修改前的查询
@RequestMapping("/updatelist/{id}/{uid}")
public String updatelist(@PathVariable("id")int id,@PathVariable("uid")int uid,Model model){
	System.out.println("id="+id);
	System.out.println("uid="+uid);
	News news=newsservice.getbyid(id);
	List<News_type>list=news_typeservice.listtype();
	model.addAttribute("list",list);
	model.addAttribute("news",news);
	model.addAttribute("users",uid);
 return "backJsp/updatelist";
}

@RequestMapping("/updatenews")
public String updatenews(News news,int tid,@RequestParam("file")MultipartFile file,HttpServletRequest request)throws Exception{
	SimpleDateFormat ssf=new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
	news.setUpdtime(ssf.format(new Date()));
	News_type news_type=news_typeservice.getbyid(tid);
	news.setNews_type(news_type);
	String filename=file.getOriginalFilename();
	String path=request.getRealPath("/upload/");
	File newfile=new File(path,filename);
	if(!newfile.exists()){
		newfile.createNewFile();
	}
	file.transferTo(newfile);
	news.setCphoto(filename);
	newsservice.updatenews(news);
	return "redirect:/news/listnews/"+news.getUpdld();
}
@RequestMapping("/deletenews/{id}")
public String deletenews(@PathVariable("id")int id){
	News news=newsservice.getbyid(id);
	news.setNews_type(null);
	newsservice.deletenews(news);
	return "redirect:/news/listnews/"+news.getUpdld();
}

@RequestMapping("/title/{id}")
public  String title(@PathVariable("id")int id,Model model){
	News news=newsservice.getbyid(id);
	model.addAttribute("news",news);
	return "frontJsp/college";
}

@RequestMapping("/newstitle")
public  String newstitle(Model model){
	List<News>list=newsservice.list();
	model.addAttribute("list",list);
	return "frontJsp/moretitle";
}
}
