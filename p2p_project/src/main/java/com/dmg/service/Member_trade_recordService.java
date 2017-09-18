package com.dmg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmg.bean.Member_trade_record;
import com.dmg.dao.Member_trade_recordDao;

@Service
@Transactional
public class Member_trade_recordService {
	@Autowired
	private Member_trade_recordDao member_trade_recordDao;
	
	public List<Member_trade_record> listMember_trade_record(int id){
		List<Member_trade_record> list = member_trade_recordDao.listMember_trade_record(id);
		return list;
	}
	
}
