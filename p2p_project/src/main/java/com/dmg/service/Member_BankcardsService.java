package com.dmg.service;

import java.util.List;
import java.util.Map;

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
	public List<Member_bankcards> listMember_bankcards(Map map){
		List<Member_bankcards> listmb = member_BankcardsDao.listMember_bankcards(map);
		return listmb;
	}
	//用户表
	public List<Member> listMember(){
		List<Member> listm = member_BankcardsDao.listMember();
		return listm;
	}
	//修改逻辑删除状态 0正常使用  2已逻辑删除
	public void updateDelFlag(int id){
		Member_bankcards mb = member_BankcardsDao.getMember_bankcardsById(id);
		member_BankcardsDao.updateDelFlag(mb);
	}
}
