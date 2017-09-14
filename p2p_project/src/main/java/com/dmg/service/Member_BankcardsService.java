package com.dmg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dmg.bean.Member;
import com.dmg.bean.Member_bankcards;
import com.dmg.dao.Member_BankcardsDao;
//绑卡管理
@Service
@Transactional
public class Member_BankcardsService {
	@Autowired
	private Member_BankcardsDao member_BankcardsDao;
	
	/**
	 * 列表显示：
     * 序号 手机号 绑卡人姓名 绑卡身份证 绑卡类型 绑卡卡号 绑卡地址 状态 添加时间 。
	 * @return
	 */
	public List<Member_bankcards> listMember_bankcards(){
		List<Member_bankcards> listmb = member_BankcardsDao.listMember_bankcards();
		return listmb;
	}
	//用户表
	public List<Member> listMember(){
		List<Member> listm = member_BankcardsDao.listMember();
		return listm;
	}
	
}
