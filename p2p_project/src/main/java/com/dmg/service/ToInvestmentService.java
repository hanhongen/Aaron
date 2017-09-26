package com.dmg.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Subject;
import com.dmg.bean.Subject_order_record;
import com.dmg.dao.ToInvestmentDao;

@Transactional
@Service
public class ToInvestmentService {

	@Autowired
	private ToInvestmentDao toInvestmentDao;
	
	public List<Subject> showSubject(){
		return toInvestmentDao.showSubject();
	}
	
	
	public Subject getSubjectById(int id) {
		return toInvestmentDao.getSubjectById(id);
	}
	
}
