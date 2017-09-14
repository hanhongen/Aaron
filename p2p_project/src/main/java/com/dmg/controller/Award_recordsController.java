package com.dmg.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
