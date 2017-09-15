package com.dmg.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dmg.bean.Award_records;
import com.dmg.service.Award_recordsService;


@Controller
@RequestMapping("/award_records")
public class Award_recordsController {
	@Autowired
	private Award_recordsService award_recordsService;
	/**
	 * 列表显示：
  	 * 序号 手机号 姓名 邀请码 被邀请码 投资金额 是否已注册奖励 是否已投资奖励 注册时间
	 * @return
	 */
	@RequestMapping("/listAward_records")
	public String listAward_records(Model model){		
		List<Award_records> listar = award_recordsService.listAward_records();
		model.addAttribute("listar", listar);	
		return "backJsp/award_records";
	}
	
	@RequestMapping("/listiy/{invitingid}/{byinvitingid}")
	public String listiy(Model model,@PathVariable("invitingid")int invitingid,@PathVariable("byinvitingid")int byinvitingid){	
		List<Award_records> listi = award_recordsService.listinvitingid(invitingid);//邀请人
		List<Award_records> listy = award_recordsService.listbyinvitingid(byinvitingid);//被邀请人
		model.addAttribute("listi", listi);
		model.addAttribute("listy", listy);
		return "backJsp/award_recordsInfo";
	}
	
}
