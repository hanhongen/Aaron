package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Member_trade_record;

@Component
public class Member_trade_recordDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public List<Member_trade_record> listMember_trade_record(int id){
		System.out.println("mid:"+id);
		String hql="from Member_trade_record m where m.member.id="+id;
		List<Member_trade_record> list = getSession().createQuery(hql).list();
		return list;
	}
	
}
