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
	
	/**
	 * 账户可用余额
	 * 投资金额(元)
	 * 累计收益(元)
	 * 冻结金额(元)
	 * 所查表：member_account(成员账户表)
	 */
	public Member_account listma(int id){
		Member_account member_account = member_accountDao.listma(id);
		return member_account;
	}
	
	public List<Member_account> listMember_account(int id){
		return member_accountDao.listMember_account(id);
	}
	
	//鏍规嵁id淇敼璐︽埛鍙敤浣欓锛屾洿鏂版湰鏉℃暟鎹慨鏀规椂闂�
	public boolean top_upAmount(int id,double amount, String ud){
		member_accountDao.top_upAmount(id, amount, ud);
		return true;	
	}
	
//idd为用户id,通过用户id查询出成员账户表的本条信息id
	public int listid(int idd){
		return member_accountDao.listid(idd);
	}
}
