package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Backtitle;

@Component
public class BackSystemSettingDao {

	@Autowired
	private SessionFactory sessionFactory;
	public Session getsessSession() {
		return sessionFactory.getCurrentSession();
	}
	
	//œ‘ æ
	public List<Backtitle> showTitle(){
		Session session=getsessSession();
		String hql="from Backtitle";
		List<Backtitle> list=session.createQuery(hql).list();
		return list;
	}
}
