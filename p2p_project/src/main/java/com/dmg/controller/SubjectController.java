package com.dmg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmg.bean.Subject;
import com.dmg.service.SubjectService;
//¸¶Ï¢¼Æ»®
@Controller
@RequestMapping("/subject")
public class SubjectController {
	@Autowired
	private SubjectService subjectService;
	
	@RequestMapping("/listSubject")
	public String listSubject(Model model){
		List<Subject> listSubject = subjectService.listSubject();
		for (Subject subject : listSubject) {
			System.out.println("<------------------------------------------------------------------------------->");
			System.out.println("SubjectController:");
			System.out.println("Subject [id=" + subject.getId() + ", serial_number=" + subject.getSerial_number() + ", serial_no=" + subject.getSerial_no() + ", name=" + subject.getName()
			+ ", type=" + subject.getType() + ", status=" + subject.getStatus() + ", floor_amount=" + subject.getFloor_amount() + ", amount=" + subject.getAmount()
			+ ", first_id=" + subject.getFirst_id() + ", parent_id=" + subject.getParent_id() + ", period=" + subject.getPeriod() + ", purpose=" + subject.getPurpose()
			+ ", raise_start=" + subject.getRaise_start() + ", raise_end=" + subject.getRaise_end() + ", refund_way=" + subject.getRefund_way()
			+ ", safeguard_way=" + subject.getSafeguard_way() + ", start_date=" + subject.getStart_date() + ", eng_date=" + subject.getEng_date()
			+ ", year_rate=" + subject.getYear_rate() + ", comment=" + subject.getComment() + ", subject_folder=" + subject.getSubject_folder()
			+ ", delflag=" + subject.getDelflag() + ", update_date=" + subject.getUpdate_date() + ", create_date=" + subject.getCreate_date()
			+ ", borrowername=" + subject.getBorrowername() + ", borrowerid=" + subject.getBorrowerid() + ", bought=" + subject.getBought()
			+ ", projectdetails=" + subject.getProjectdetails() + ", safetycontrol=" + subject.getSafetycontrol() + ", exper_status="
			+ subject.getExper_status() + "]");
			System.out.println("<------------------------------------------------------------------------------->");
		}
		model.addAttribute("listSubject", listSubject);
		return "backJsp/subject";
	}
	
}
