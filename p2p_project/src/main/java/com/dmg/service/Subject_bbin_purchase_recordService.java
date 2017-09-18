package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Subject_bbin_purchase_record;
import com.dmg.dao.Subject_bbin_purchase_recordDao;


@Service
@Transactional
public class Subject_bbin_purchase_recordService {
	@Autowired
	private Subject_bbin_purchase_recordDao subject_bbin_purchase_recordDao;
	
	//查询体验金表信息
	public List<Subject_bbin_purchase_record> listSubject_bbin_purchase_record(int id){
		List<Subject_bbin_purchase_record> list=subject_bbin_purchase_recordDao.listSubject_bbin_purchase_record(id);
		return list;
	}
	
}
