package com.dmg.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Backtitle;
import com.dmg.bean.Backtitleson;
import com.dmg.bean.User_role;

@Component
public class BackSystemSettingDao {

	@Autowired
	private SessionFactory sessionFactory;
	public Session getsessSession() {
		return sessionFactory.getCurrentSession();
	}
	
	//显示
	public List<List<Backtitleson>> showTitle(){
		Session session=getsessSession();
		String hql1="from Backtitle";
		
		List<List<Backtitleson>> list1=session.createQuery(hql1).list();
		return list1;
	}
	
	//查询角色
	public List<User_role> listRole(){
		Session session=getsessSession();
		String hql="from User_role where 0=0";
		List<User_role> list=session.createQuery(hql).list();
		return list;
	}
	//添加角色
	public void addRole(User_role role) {
		Session session=getsessSession();
		session.save(role);
	}
}
