package com.dmg.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Subject;
import com.dmg.bean.Subject_order_record;
import com.dmg.dao.ProductCenterDao;

@Service
@Transactional
public class ProductCenterService {

	@Autowired
	private ProductCenterDao productCenterDao;
	
	public List<Subject_order_record> showSubjectRecord(){
		return productCenterDao.showSubjectRecord();
	}
	
	public List<Subject> showSubject(Map map){
		return productCenterDao.showSubject(map);
	}
	
	public Subject getSubjectById(int id) {
		return productCenterDao.getSubjectById(id);
	}
	
	public void updateSubject(Subject subject) {
		productCenterDao.updateSubject(subject);
	}
	
	public void saveSubject(Subject subject) {
		productCenterDao.saveSubject(subject);
	}
	public double SumSubject(int id) {
		return productCenterDao.SumSubject(id);
	}
	
}
