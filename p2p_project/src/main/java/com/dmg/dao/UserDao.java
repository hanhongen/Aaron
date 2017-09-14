package com.dmg.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Users;

@Component
public class UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getsession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	
	public void save(Users users) {
		Session session=getsession();
		session.save(users);
	}
	
	public Users getUsers(String mobile_phone,String password) {
		Session session=getsession();
		String hql="from Users where mobile_phone="+mobile_phone+" and password="+password;
		Users user=(Users) session.createQuery(hql).list();
		return user;
	}
}
