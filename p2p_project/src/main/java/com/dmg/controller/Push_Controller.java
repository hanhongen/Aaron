package com.dmg.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dmg.bean.Feedback;
import com.dmg.bean.Member;
import com.dmg.bean.Member_deposit_record;
import com.dmg.bean.Push_notice;
import com.dmg.service.Push_notice_service;

@Controller
@RequestMapping("/test")
public class Push_Controller {
	@Autowired
	private Push_notice_service push_notice_service;
	
	
	
	@RequestMapping("/pushadd")
	public String padd(){
		return "backJsp/push";
	}
	
	//显示公告管理
	@RequestMapping("/test1")
	public String test1(Model model,String name){
		System.out.println("name:"+name);
	  Map map=new HashMap();
	  map.put("name", name);
	  List<Push_notice> push_notices=push_notice_service.listpush(map);
	  model.addAttribute("push_notices",push_notices);
	  model.addAttribute("name",name);
		return "backJsp/media";
	}
	
	@RequestMapping("/test2")
	public String test2(Push_notice push_notice){
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date=dateFormat.format(new Date());
		push_notice.setCreate_date(date);
		push_notice_service.save(push_notice);
		return "redirect:/test/test1";
	}
	
	 
	//删除
	@RequestMapping("/test3/{id}")
    public String delete(@PathVariable("id")int id){
		this.push_notice_service.delete(id);
		return "redirect:/test/test1";
    }
	
/*	@RequestMapping("/test4/{id}")
	public String test4(@PathVariable("id") int id,Model model){
		     Push_notice push_notice=push_notice_service.getbypid(id);
		     model.addAttribute("push_notice",push_notice);
		     return "pushupdate";
	}*/
	
	@RequestMapping("/test5")
	public String test5(Push_notice push_notice){
		  push_notice_service.update(push_notice);
		  return "redirect:/test/test1";
	} 
	
	
	@RequestMapping("/updod/{id}")
 	public String select(@PathVariable("id")int id,Model model){
		    Push_notice push_notice=push_notice_service.getbypid(id);
		    model.addAttribute("push_notice",push_notice);
			    return "backJsp/update";
	}
	
	@RequestMapping("/updates")
	public String udpate(Push_notice push_notice){
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		push_notice.setUpdate_date(dateFormat.format(new Date()));
		push_notice_service.update(push_notice);
		return "redirect:/test/test1";
	}
	
	
	//<!--意见反馈--!>
	//前台页面添加
	@RequestMapping("/savefeed")
	public String select(Feedback feedbacks){
		/*SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	   */
	    SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    feedbacks.setCreate_date(dateFormat.format(new Date()));
		push_notice_service.save(feedbacks);
		return "frontJsp/index";
	}
	
	//后台显示查询页面
	@RequestMapping("/list")
	public String list(Model model,String name){
	    Map map=new HashMap();
	    map.put("name",name);
		List<Feedback> feedbacks=push_notice_service.listfeed(map);
		model.addAttribute("name",name);
		model.addAttribute("feedbacks",feedbacks);
		return "backJsp/feedback";
	}
	
	//钱包管理
	@RequestMapping("/members")
	public String listmembers(Model model){
		List<Member_deposit_record> members=push_notice_service.listmembers();
		model.addAttribute("members",members);
		return "backJsp/graphs";
	}
}
