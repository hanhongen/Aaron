package com.dmg.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dmg.bean.Feedback;
import com.dmg.bean.Member;
import com.dmg.bean.Member_deposit_record;
import com.dmg.bean.Push_notice;
import com.dmg.dao.Push_notice_dao;

@Service
@Transactional
public class Push_notice_service {
	 @Autowired
	 private Push_notice_dao push_notice_dao;
	 
	 public void save(Push_notice push_notice){
		 push_notice_dao.save(push_notice);
	 }
	 public void update(Push_notice push_notice){
		 push_notice_dao.update(push_notice);
	 }
	 public void delete(int id){
		 Push_notice push_notice=push_notice_dao.getbypid(id);
		 push_notice_dao.delete(id);
	 }
	 public Push_notice getbypid(int id){
		return push_notice_dao.getbypid(id);
	 }
	 public List<Push_notice> listpush(Map map){
		return push_notice_dao.listpush(map);
	 }
	 
	 
	 
	 //<!--意见反馈---!>
	 public void save(Feedback feedback){
		 	push_notice_dao.save(feedback);	 
	 }
	 public List<Feedback> listfeed(Map map){
		 return push_notice_dao.listfeed(map);
	 }
	 
	 //钱包管理
	 public List<Member_deposit_record> listmembers(){
		 return push_notice_dao.listmembers();
	 }
	 public List<Member> listmerber(){
		 return push_notice_dao.listmeber();
	 }
}
