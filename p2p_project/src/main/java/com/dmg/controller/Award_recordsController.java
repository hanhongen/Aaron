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
	 * �б���ʾ��
  	 * ��� �ֻ��� ���� ������ �������� Ͷ�ʽ�� �Ƿ���ע�ά�� �Ƿ���Ͷ�ʽ��� ע��ʱ��
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
		List<Award_records> listi = award_recordsService.listinvitingid(invitingid);//������
		List<Award_records> listy = award_recordsService.listbyinvitingid(byinvitingid);//��������
		model.addAttribute("listi", listi);
		model.addAttribute("listy", listy);
		return "backJsp/award_recordsInfo";
	}
	
}
