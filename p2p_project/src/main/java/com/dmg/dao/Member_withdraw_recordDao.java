package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Member;
import com.dmg.bean.Member_withdraw_record;

@Component
public class Member_withdraw_recordDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * 列表显示：
     * 序号 手机号 姓名 身份证 提现金额 提现银行 提现卡号 提现开户行地址 提现状态 提现时间 账号详细
	 * @return
	 */
	public List<Member_withdraw_record> listMember_withdraw_record(){
		String hql="from Member_withdraw_record";
		Session session = getSession();
		List<Member_withdraw_record> list = session.createQuery(hql).list(); 
		return list;
	}
	
}
