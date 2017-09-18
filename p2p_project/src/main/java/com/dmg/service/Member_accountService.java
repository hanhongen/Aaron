package com.dmg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dmg.bean.Member_account;
import com.dmg.dao.Member_accountDao;

@Service
@Transactional
public class Member_accountService {
	@Autowired
	private Member_accountDao member_accountDao;
	
	public List<Member_account> listMember_account(){
		List<Member_account> list = member_accountDao.listMember_account();
		return list;
	}
	
	
	public List<Member_account> listMember_account(int id){
		List<Member_account> list = member_accountDao.listMember_account(id);
		return list;
	}
}
