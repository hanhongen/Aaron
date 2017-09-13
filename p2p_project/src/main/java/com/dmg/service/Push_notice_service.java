package com.dmg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
		 push_notice_dao.delete(push_notice);
	 }
	 public Push_notice getbypid(int id){
		return push_notice_dao.getbypid(id);
	 }
	 public List<Push_notice> listpush(){
		return push_notice_dao.listpush();
	 }
}
