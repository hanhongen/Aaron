package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Member;
import com.dmg.bean.Member_bankcards;
//绑卡管理
@Component
public class Member_BankcardsDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	/**
	 * 列表显示：
     * 序号 手机号 绑卡人姓名 绑卡身份证 绑卡类型 绑卡卡号 绑卡地址 状态 添加时间 。
	 * @return
	 */
	//成员银联表
	public List<Member_bankcards> listMember_bankcards(){
		String hql="from Member_bankcards";
		Session session = getSession();
		List<Member_bankcards> list = session.createQuery(hql).list();
		return list;
	}
	//用户表
	public List<Member> listMember(){
		String hql="from Member";
		Session session = getSession();
		List<Member> list = session.createQuery(hql).list();
		return list;
	}
	
}
