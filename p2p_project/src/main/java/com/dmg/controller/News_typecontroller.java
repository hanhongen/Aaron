package com.dmg.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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

		@RequestMapping("/news_typesave")
		public String news_typesave(@RequestParam("file")MultipartFile file,
	News_type news_type,HttpServletRequest request)throws Exception{
	    String  filename=file.getOriginalFilename();
		   		System.out.println("filename="+filename);
		   	String path=request.getRealPath("/upload/");
		   	String path1=path+filename;
		   	System.out.println("path1="+path1);
		   	File newfile=new File(path,filename);
		   	if(!newfile.exists()){
		   		newfile.createNewFile();
			}
		   	file.transferTo(newfile);
		   	 news_type.setCphoto(filename);
		   	 SimpleDateFormat ssf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		   	 news_type.setAddtime(ssf.format(new Date()));
	         news_type.setUpdtime("null");
	       news_typeservice.savetype(news_type);
		   	 return "redirect:/news_type/news_typelist";
		}
	
}



