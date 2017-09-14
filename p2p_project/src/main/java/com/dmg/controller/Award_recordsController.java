package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Award_records;
import com.dmg.bean.Subject;
import com.dmg.service.Award_recordsService;
import com.dmg.service.SubjectService;

@Controller
@RequestMapping("/award_records")
public class Award_recordsController {
	@Autowired
	private Award_recordsService award_recordsService;
	@Autowired
	private SubjectService subjectService;
	/**
	 * 列表显示：
  	 * 序号 手机号 姓名 邀请码 被邀请码 投资金额 是否已注册奖励 是否已投资奖励 注册时间
	 * @return
	 */
	@RequestMapping("/listAward_records")
	public String listAward_records(Model model){
		System.out.println("Controller1");
		List<Award_records> listar = award_recordsService.listAward_records();
		System.out.println("Controller2");
		for (Award_records a : listar) {
			System.out.println("Controller3");
			System.out.println("Award_recordsController: ID:"+a.getId()+",phone:"+a.getMember().getMobile_phone()+",name:"+a.getMember().getMember_name()+",invitationCode:"+a.getMember().getInvitationcode()+",invitedCode:"+a.getMember().getInvitedcode()+",Type:"+a.getType()+",addTime:"+a.getAddtime());
		}
		List<Subject> lists = subjectService.listSubject();
		model.addAttribute("listar", listar);
		model.addAttribute("lists", lists);
		return "backJsp/award_records";
	}
}
