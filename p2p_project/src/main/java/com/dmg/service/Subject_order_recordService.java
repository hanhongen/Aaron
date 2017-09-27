package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Subject_order_record;
import com.dmg.dao.Subject_order_recordDao;

@Service
@Transactional
public class Subject_order_recordService {
	@Autowired
	private Subject_order_recordDao subject_order_recordDao;
	
	/**
	 * 标的订单表
	 * @return
	 */
	public List<Subject_order_record> listSubject_order_record(int id){
		List<Subject_order_record> list = subject_order_recordDao.listSubject_order_record(id);
		return list;
	}
	//查询标的订单表记录的次数
	public int countSubject_order_record(int id){
		int count = subject_order_recordDao.countSubject_order_record(id);
		return count;
	}
	
}
