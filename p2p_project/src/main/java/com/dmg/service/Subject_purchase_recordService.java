package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Subject_purchase_record;
import com.dmg.dao.Subject_purchase_recordDao;

@Service
@Transactional
public class Subject_purchase_recordService {
	@Autowired
	private Subject_purchase_recordDao subject_purchase_recordDao; 
	/**
	 * 付息列表去显示这个产品的所有购买信息
	 * @return
	 */
	public List<Subject_purchase_record> listSubject_purchase_record(int id){
		List<Subject_purchase_record> list = subject_purchase_recordDao.listSubject_purchase_record(id);
		
		return list;
	}
	
}
